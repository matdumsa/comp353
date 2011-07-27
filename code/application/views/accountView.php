

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

	getData("account/getList", {}, function(response) {
		$.each(response, function(i,r) {
			var nr = $(".account_list tr.template").clone().removeClass("template").appendTo("tbody.account_list");
			parseResponseToFields(r, nr);	
		});
	})

</script>