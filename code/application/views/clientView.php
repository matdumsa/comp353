

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

<div id="newClientForm" title="Create a new client">
	<?=$this->load->view("form/newClient");?>
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
		$("#newClientForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"create":function()
		    	{
		    		//Code for creating an employee
		    	}
		    	, "cancel":function()
		    	{
		    		//Code for creating cancelling
		    		$(this).dialog("close");
		    	}
		    }
		});
    });
    
    //Get the list of clients
	getData("client/getList", {}, function(response) {
		$.each(response, function(i,r) {
			var nr = $(".client_list tr.template").clone().removeClass("template").appendTo("tbody.client_list");
			parseResponseToFields(r, nr);	
		});
	})

</script>