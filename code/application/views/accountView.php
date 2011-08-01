

<div>
	<button id="newAccount">Add a new account</button>

	<table>
		<thead>
			<tr>
				<td></td>
				<td>#</td>
				<td>Type</td>
				<td>Balance</td>
				<td>CreatedOn</td>
				<td></td>
			</tr>
		</thead>
		
		<tbody class="account_list alternateBg">
			<tr class="template">
				<td class=""><span class="showOnRowHover ui-icon ui-icon-pencil"></span></td>
				<td class="accountNumber"></td>
				<td class="accountType"></td>
				<td class="accountBalance"></td>
				<td class="accountCreationDate"></td>
				<td class=""><span class="showOnRowHover ui-icon ui-icon-trash"></span></td>
			</tr>
		</tbody>
	</table>

</div>

<div id="newAccountForm" class="hidden" title="Create a new Account">
	<?=$this->load->view("form/newAccount", $this);?>
</div>

<div id="deleteAccountConfirmation" class="hidden" title="Are you sure you want to delete">
	Are you sure you want to delete the Account <span class="accountNumber"></span>?
</div>


<script>

	//Make the button pretty
	$( "#newAccount" ).button(
	{
	    icons: {
	        primary: "ui-icon-plus"
		}
	}).click(function()
    {
    	openForm();
    });
    
    //Get the list of Accounts
	getData("Account/getList", {}, function(response) {
		$.each(response, function(i,r) {
			appendRow(r);
		});
	})

	function openForm(data) {

		if (!data)
			 // Nothing is provided so the form must be emptied
			 $("#newAccountForm input").val("");
		else
			$("#newAccountForm").find("input, select").each(function(c,i) { $(i).val(data[$(i).attr("name")] || ""); });
		
		$("#newAccountForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"ok":function()
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
		$("#deleteAccountConfirmation	span.accountNumber").text(data.accountNumber);
		$("#deleteAccountConfirmation").dialog(
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
		$.getJSON("/account/remove/" + data.accountNumber, {}, function(response) {
			if (response.status == "ok")
				$("#Account-" + data.accountNumber).remove();
		});
	}
	
	function submitForm(data) {
		if (data)
			var url = "/account/modify/" + data.accountNumber;
		else
			var url = "/account/add/";

		$.post(url, $("#newAccountForm").find("input, select").serialize(), function(response)
		{
			appendRow(response[0]);
		}, "json");

	}
	
	function appendRow(data) {
		var nr;
		if ($("#Account-" + data.accountNumber).length >0)
			nr = $("#Account-" + data.accountNumber);
		else
			nr = $(".account_list tr.template").clone().removeClass("template").appendTo("tbody.account_list").attr("id", "Account-" + data.accountNumber);

		parseResponseToFields(data, nr);
		nr.find("span.ui-icon-pencil").unbind("click").click(function() { openForm(data); });
		nr.find("span.ui-icon-trash").unbind("click").click(function() { askForDelete(data); });

	}
	
</script>
