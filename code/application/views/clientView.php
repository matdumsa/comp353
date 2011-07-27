

<div>

	<table>
		<thead>
			<tr>
				<td>#</td>
				<td>Client Name</td>
				<td>#account</td>
				<td>net $</td>
			</tr>
		</thead>
		
		<tbody class="client_list alternateBg">
			<tr class="template">
				<td class="clientId"></td>
				<td class="clientName"></td>
				<td class="accountCount"></td>
				<td class="netValue"></td>
			</tr>
		</tbody>
	</table>

</div>
<script>

	getData("client/getList", {}, function(response) {
		$.each(response, function(i,r) {
			var nr = $(".client_list tr.template").clone().removeClass("template").appendTo("tbody.client_list");
			parseResponseToFields(r, nr);	
		});
	})

</script>