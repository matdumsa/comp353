

<div>
	<table>
		<thead>
			<tr>
				<td>#</td>
				<td>Type</td>
				<td>Balance</td>
				<td>CreatedOn</td>
			</tr>
		</thead>
		
		<tbody class="account_list alternateBg">
			<tr class="template">
				<td class="accountNumber"></td>
				<td class="accountType"></td>
				<td class="accountBalance"></td>
				<td class="accountCreationDate"></td>
			</tr>
		</tbody>
	</table>

</div>




<script>

	
    
    //Get the list of Accounts
	getData("Account/getAccountsByUserId/7", {}, function(response) {
		$.each(response, function(i,r) {
		appendRow(r);
		});
	})


	
	function appendRow(data) {
		var nr;
		if ($("#Account-" + data.accountNumber).length >0)
			nr = $("#Account-" + data.accountNumber);
		else
			nr = $(".account_list tr.template").clone().removeClass("template").appendTo("tbody.account_list").attr("id", "Account-" + data.accountNumber);
		parseResponseToFields(data, nr);
	}
	
</script>
