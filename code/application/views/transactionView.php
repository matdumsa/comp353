 
<div>
	<table>
		<thead>
			<tr>
				<td>#Account</td>
				<td>#Transaction</td>
				<td>Type</td>
				<td>Amount</td>
				<td>Date</td>
				<td>Fees</td>
				<td>Description</td>
			</tr>
		</thead>
		
		<tbody class="transaction_list alternateBg">
			<tr class="template">
				<td class="accountNumber"></td>
				<td class="transactionId"></td>
				<td class="transactionType"></td>
				<td class="transactionAmount"></td>
				<td class="transactionDate"></td>
				<td class="transactionFees"></td>
				<td class="transactionDescription"></td>
			</tr>
		</tbody>
	</table>
</div>

</div>

<div>
<table>
<caption>Actions</caption>
		<tr>
				<td><button id="deposit">Deposit</button></td>
				<td><button id="withdraw">Withdraw</button></td>
		</tr>
</table>
</div>

<div id="depositForm" class="hidden" title="Deposit">
	<?=$this->load->view("form/actions", $this);?>
</div>

<div id="withdrawForm" class="hidden" title="Withdraw">
	<?=$this->load->view("form/actions", $this);?>
</div>


<script>

    //Make the button pretty
	$( "#deposit" ).button(
	{
	    icons: {
	        primary: "ui-icon-plus"
		}
	}).click(function()
    {
    	depositForm();
    });


//Make the button pretty
	$( "#withdraw" ).button(
	{
	    icons: {
	        primary: "ui-icon-plus"
		}
	}).click(function()
    {
    	withdrawForm();
    });
	
	refreshData();
    function refreshData()
    {
     //Get the list of clients
	getData("transaction/getTransaction/", {}, function(response) {
		$.each(response, function(i,r) {
			appendRow(r);
		});
	})
    }
   


	function appendRow(data) {
		var nr;
		if ($("#Transaction-" + data.transactionId).length >0)
			nr = $("#Transaction-" + data.transactionId);
		else
			nr = $(".transaction_list tr.template").clone().removeClass("template").appendTo("tbody.transaction_list").attr("id", "Transaction-" + data.transactionId);
			
		parseResponseToFields(data, nr);
	}
	
	function depositForm()
{

		
			 // Nothing is provided so the form must be emptied
			 $("#depositForm input").val("");
			$("#depositForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"ok":function()
		    	{
		    		//Code for creating an employee
		    		submitForm("deposit");
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
	
		function withdrawForm()
{

		
			 // Nothing is provided so the form must be emptied
			 $("#withdrawForm input").val("");
			$("#withdrawForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"ok":function()
		    	{
		    		//Code for creating an employee
		    		submitForm("withdraw");
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
	
	function submitForm(data) {
		if (data == "withdraw")
		{
			var url = "/account/withdraw/" ;
		}
		else if (data == "deposit") 
		{
			var url = "/account/deposit/";
		}
		
		$.post(url, $("#" + data + "Form").find("input, select").serialize(), function(response)
		{
				if (response.status == "NotOk")
				alert("Transaction failed , you don't have sufficient fund");
				else
				refreshData();
		}, "json");

	}


	


</script>