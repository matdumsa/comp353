

<div>
	<table>
		<thead>
			<tr>
				<td>from</td>
				<td>to</td>
				<td>#</td>
				<td>Type</td>
				<td>Balance</td>
				<td>CreatedOn</td>
				<td>Credit Limit</td>
			</tr>
		</thead>
		
		<tbody class="account_list alternateBg">
			<tr class="template">
				<td><input type="radio" name="from"/></td>
				<td><input type="radio" name="to"/></td>
				<td class="accountNumber"></td>
				<td class="accountType"></td>
				<td class="accountBalance"></td>
				<td class="accountCreationDate"></td>
				<td class="accountCreditLimit"></td>
			</tr>
		</tbody>
	</table>

	<input type="text" id="amountToTransfer"/> <button id="transferMoney">Transfer</button>
</div>




<script>

	

	function refreshTable() {
	    //Get the list of Accounts
		getData("Account/getMyAccounts/", {}, function(response) {
			$.each(response, function(i,r) {
			appendRow(r);
			});
		})
	
	}    

	refreshTable();
	
	function appendRow(data) {
		var nr;
		if ($("#Account-" + data.accountNumber).length >0)
			nr = $("#Account-" + data.accountNumber);
		else
			nr = $(".account_list tr.template").clone().removeClass("template").appendTo("tbody.account_list").attr("id", "Account-" + data.accountNumber);
		parseResponseToFields(data, nr);
	}
	
	$("#transferMoney").click(function() {
		var amount = $("#amountToTransfer").val();
		var fromAccount = $(".account_list input[name='from']:checked").parents("tr").find(".accountNumber").text();
		var toAccount = $(".account_list input[name='to']:checked").parents("tr").find(".accountNumber").text();
		console.log(amount + " from " + fromAccount + " to " + toAccount);
		
		if (amount && fromAccount && toAccount && fromAccount!=toAccount) {
			$.getJSON("https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/transaction/transfermoney/" + amount + "/" + fromAccount + "/" + toAccount, function(response) {
				if (response.status == "ok") 
				{
					$("#amountToTransfer").val("");
					var confirmation = $("<span>Success!!</div>").hide();
					confirmation.insertAfter($("#transferMoney")).fadeIn("slow", function() {$(this).remove();})
					refreshTable();
				}
				else
					alert(response.reason);
			});
		}
		else
			alert("You need to select an origin account, a different target account and type in an amount before doing a transfer");
	})
</script>
