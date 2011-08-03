

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
			
		});
	})




</script>