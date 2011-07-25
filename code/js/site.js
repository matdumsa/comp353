$(function() {	//To be run when DOM is constructed
	var reloadTab = function() { $("#tabs").tabs("load",$("#tabs").tabs('option', 'selected')); };

	$("#tabs").tabs({
		fx: { opacity: 'toggle' }
		,show: function(event, ui){{ tabCallBack(); }}
		,ajaxOptions:
		{
			"error":function(XMLHttpRequest, textStatus, errorThrown) {showNetworkError(reloadTab);}
		  , "success": function(response) 
			{
				if (!response || response == "")
					showNetworkError(reloadTab);
			}
		}
	});
	getSessionInfo();

});

function getSessionInfo() {

}