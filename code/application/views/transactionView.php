

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


<script>

    
    //Get the list of clients
	getData("transaction/getList/5", {}, function(response) {
		$.each(response, function(i,r) {
			appendRow(r);
		});
	})


	function appendRow(data) {
		var nr;
		if ($("#Transaction-" + data.transactionId).length >0)
			nr = $("#Transaction-" + data.transactionId);
		else
			nr = $(".transaction_list tr.template").clone().removeClass("template").appendTo("tbody.transaction_list").attr("id", "Transaction-" + data.transactionId);
			
		parseResponseToFields(data, nr);
	}




</script>