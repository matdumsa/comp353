var env = "PROD";
var tabCallBack = function() {};

$(function() {	//To be run when DOM is constructed
	var reloadTab = function() { $("#tabs").tabs("load",$("#tabs").tabs('option', 'selected')); };

	$("#tabs").tabs({
		fx: { opacity: 'toggle' }
		,show: function(event, ui){{ tabCallBack(); }}
		,ajaxOptions:
		{
			"beforeSend":function(jqXHR, settings) {
				$("#tabs").data("last-url-requested", settings.url);
				if (env == "PROD" && settings.url.indexOf("cgiwrap") < 0)
					settings.url = "https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/" + settings.url;
			}
			, "error":function(XMLHttpRequest, textStatus, errorThrown)
			{
				if (XMLHttpRequest.status == 404) 
					BSOD("Error 404 accessing " + $("#tabs").data("last-url-requested") + "<hr>" + XMLHttpRequest.responseText);
				else if (XMLHttpRequest.status == 500) 
					BSOD("Error 500 accessing " + $("#tabs").data("last-url-requested") + "<hr>" + $(XMLHttpRequest.responseText).text());
				else
					showNetworkError(reloadTab);
			}
		  , "success": function(response) 
			{
				if (!response || response == "")
					showNetworkError(reloadTab);
			}
		}
	});
	getSessionInfo();


	$("#logout").click(function() {
		getData("session/logout", {}, function(response)
		{
			location.reload(true);
			$(".sessionData").text("");
			$("#notLoggedIn").show();
			$("#loggedIn").hide();
			$("#tabs").tabs("load",$("#tabs").tabs('option', 'selected'));
			$("#logout").text("Login");
		});
	})

});

function getSessionInfo()
{
	getData("session/info", {}, function(response) {
		if (response.username)
		{	//Case when user is logged in
			$("#notLoggedIn").hide();
			$("#loggedIn").show();
			$("#logout").text("Logout");
			parseResponseToFields(response, $("#loggedIn"));
		}
	});		

}


/**
 * parseResponseToField
 * This function takes all the data in data and tries to find an HTML container in fieldContainer to write this data to the screen. 
 * @param object data
 * @param jQuery object fieldContainer or selector expression
 * @return void
 */
function parseResponseToFields(data, fieldContainer, wrapAround)
{	
	wrapAround = wrapAround || {};
	if (data == null)
		return;
	fieldContainer = $(fieldContainer);
	$.each(data, function(fieldName, fieldValue)
	{	
		var cell = fieldContainer.find("." + fieldName);

		if (!fieldValue)
			return;
		if (fieldValue.constructor != Array)
			fieldValue = [fieldValue];
			
		$.each(fieldValue, function(index, value)
		{
			if (wrapAround[fieldName])	//a WrapAround was provided! We expect HTML 
			{
					cell.append($(wrapAround[fieldName]).text(value));
			}
			else if (cell.text().indexOf("*")>=0) 
				cell.text(cell.text().replace("*",value));
			else //Simple text only
			{
				cell.text(value);	
			}		
		})
	})

}

function getData(url, params, callback, options)
{	options = options || {};
	options.type = options.type || "get";
	var startTime = new Date();
	if (env == "PROD" && url.indexOf("cgiwrap") < 0)
		url = "https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/" + url.toLowerCase();

	function updateTimer() {
		var stopTime = new Date();
		var timeTaken = (stopTime-startTime)/1000 
		if (!$("#querySpeed").data("timeStore")) 
			$("#querySpeed").data("timeStore",[]);
		var timeStore = $("#querySpeed").data("timeStore");
		timeStore.push(timeTaken);
		$("#querySpeed").text(Math.round(timeTaken*1000)/1000).attr("title",timeStore.length + " queries total. Avg run time: " + Math.round(average(timeStore)*1000)/1000);
	}

	selfRepeatCall = function() { getData(url, params, callback, options); }

	if (arguments.length > 3 && arguments.length < 2)
		return BSOD("Invalid call for getData, you need 2 params, you gave me " + arguments.length + "... Crashing!");


	$.ajax({"cache":"false", "type":options.type, "data":params, "dataType":"json", "url":url + "?seed=" + Math.random()
	, "success": function(response) 
	{  
		updateTimer();
		if (!response)
			return showNetworkError(selfRepeatCall);
		if (response.error && response.error=="true")
		{	if (response.reason == "notLoggedIn")
				showLogin(selfRepeatCall);
			else if (response.msg == "HTTPS only")
			{
				document.location = document.location.href.replace("http://","https://").replace(":8080","");			
				BSOD("You must use HTTPS. Redirecting you to the HTTPS version.. Maybe your server doesn't support HTTPS? You can use force_https = false in Config.php");
			}	
			else
				BSOD('Unknown error occured.. Please try again. <hr>' + response.msg);
		}
		else
		{
			$("#loggedInAs").css({"visibility" : "visible"});
			callback(response);
		}
	}
	, "error":function(XMLHttpRequest, textStatus, errorThrown)
	{ 
		updateTimer();
		if (XMLHttpRequest.status == 404)
			BSOD("Error 404 for " + url);
		else if (textStatus == "parsererror")	//Not a valid JSON object
			BSOD("Not a valid JSON object. " + XMLHttpRequest.responseText);
		else
			showNetworkError(selfRepeatCall); 
	}
	
	});

}


function showNetworkError(callback)
{
	var modalNetworkError = $("#modalTimeout");	
	modalNetworkError.dialog({
	    modal:true,
	    resizable:false,
	    buttons: {
			Ok: function()
	        {
	            modalNetworkError.dialog('close');
	            callback();
			}		
	}})


	function connectionTest() {
		$.ajax({"cache":"false", "type":"get", "data":{rand:Math.random()}, "dataType":"json", "url":"connectionTest.html"
		, "success": function(response) 
		{	if (response && response.a == "true")
			{
			    modalNetworkError.dialog('close');
			    callback();	
			}
			else
				window.setTimeout(connectionTest, 500);
		}
		, "error": function() { window.setTimeout(connectionTest, 500); }
		});
	}
	
	connectionTest();
	
}
function showLogin(callback) 
{	var modalWindow = $("#modalLogin");
	modalWindow.dialog(
	{	//Options for .dialog()
		show:"puff",
		hide:"puff",
		modal: true,
		closeOnEscape: false,
		resizable:false, 
		buttons: {
			Ok: function() {
				authenticateLogin(modalWindow.find(".username").val(), modalWindow.find(".password").val(), function() 
				{
					modalWindow.dialog('close');
					location.reload(true);
					$("#loggedInAs").css({"visibility" : "visible"});
					callback();
					getSessionInfo();
					modalWindow.find(".password").val("");
				});
			}
		}
	
	}).unbind("keypress").keypress(function(e) {
		if (e.which == 13)
		{	
			e.preventDefault();
			$(this).parent().find(".ui-button").click();
		}
	});
}

function authenticateLogin(username, password, callback)
{	//Pre-conditions, Login Window is opened!
	if (username=="robot")
		return BSOD('Does not commmpppuuuuttte!!<br><br><object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/kBSOhODoch0&hl=en_US&fs=1&color1=0x3a3a3a&color2=0x999999&autoplay=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>');
	getData("session/login", {"username":username, "password":password}, function(response) {
		if (response.loginError == "false")
		{
			$("#logout").text("Logout");
			callback();
		}	
		else
			alert(response.reason);
	}, {"type":"post"});

	//Post-conditions, session is opened on the server.
}

function BSOD(message)
{	message = message || "Does Not Compute!";
	$("body").empty().addClass("bsod").append("<br><br><span class='bsod neg'>FATAL ERROR</span><br><br><p class='bsod'>" + message +"</p>");
}

function average(items)
{
   var sum = 0;
   for (i = 0; i < items.length;i++)
      sum += items[i];
   return (sum / items.length);
}

