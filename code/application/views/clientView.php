

<button id="newClient">Add a new client</button>

<div>
	<table>
		<thead>
			<tr>
				<td></td>
				<td>#</td>
				<td>Client Name</td>
				<td>#account</td>
				<td>net $</td>
				<td></td>
			</tr>
		</thead>
		
		<tbody class="client_list alternateBg">
			<tr class="template">
				<td class=""><span class="showOnRowHover ui-icon ui-icon-pencil"></span></td>
				<td class="clientId"></td>
				<td class="clientName"></td>
				<td class="accountCount"></td>
				<td class="netValue">$*</td>
				<td class=""><span class="showOnRowHover ui-icon ui-icon-trash"></span></td>
			</tr>
		</tbody>
	</table>
</div>

<div id="newClientForm" class="hidden" title="Create a new client">
	<?=$this->load->view("form/newClient");?>
</div>

<div id="deleteConfirmation" class="hidden" title="Are you sure you want to delete">
	Are you sure you want to delete the client <span class="clientName"></span>?
</div>

<script>

	//Make the button pretty
	$( "#newClient" ).button(
	{
	    icons: {
	        primary: "ui-icon-plus"
		}
	}).click(function()
    {
    	openForm();
    });
    
    //Get the list of clients
	getData("client/getList", {}, function(response) {
		$.each(response, function(i,r) {
			appendRow(r);
		});
	})

	function openForm(data) {

		if (!data)
			 // Nothing is provided so the form must be emptied
			 $("#newClientForm input").val("");
		else
			$("#newClientForm input").each(function(c,i) { $(i).val(data[$(i).attr("name")] || ""); });
				
		$("#newClientForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"create":function()
		    	{
		    		//Code for creating an employee
		    		submitForm(data || false);
		    		$(this).dialog("close");

		    	}
		    	, "cancel":function()
		    	{
		    		//Code for creating cancelling
		    		$(this).dialog("close");
		    	}
		    }
		});
	}
	
	function askForDelete(data) {	
		$("#deleteConfirmation	span.clientName").text(data.clientName);
		$("#deleteConfirmation").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"delete":function()
		    	{
		    		//Code for creating an employee
		    		performDelete(data);
		    		$(this).dialog("close");	
		    	}
		    	, "cancel":function()
		    	{
		    		//Code for creating cancelling
		    		$(this).dialog("close");
		    	}
		    }
		});
	}
	
	function performDelete(data) {
		$.getJSON("/client/remove/" + data.clientId, {}, function(response) {
			if (response.status == "ok")
				$("#client-" + data.clientId).remove();
		});
	}
	
	function submitForm(data) {
		if (data)
			var url = "/client/modify/" + data.clientId;
		else
			var url = "/client/add/";

		$.post(url, $("#newClientForm input").serialize(), function(response)
		{
			appendRow(response[0]);
		}, "json");

	}
	
	function appendRow(data) {
		var nr;
		if ($("#client-" + data.clientId).length >0)
			nr = $("#client-" + data.clientId);
		else
			nr = $(".client_list tr.template").clone().removeClass("template").appendTo("tbody.client_list").attr("id", "client-" + data.clientId);

		parseResponseToFields(data, nr);
		nr.find("span.ui-icon-pencil").unbind("click").click(function() { openForm(data); });
		nr.find("span.ui-icon-trash").unbind("click").click(function() { askForDelete(data); });

	}
	
</script>