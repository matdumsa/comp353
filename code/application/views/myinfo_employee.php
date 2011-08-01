<h2>Employee Information</h2>

Id: <?=$id?>

<div>

	<table>
		<thead>
			<tr>
				<td>date</td>
				<td>code</td>
				<td>hours</td>
			</tr>
		</thead>
		
		<tbody class="schedule_list alternateBg">
			<tr class="template">
				<td class="employeeTitle"></td>
				<td class=""></td>
				<td class="accountCount"></td>
				<td class="netValue"></td>
			</tr>
		</tbody>
	</table>

    
    	<table>
		<thead>
			<tr>
				<td>pay #</td>
				<td>pay date</td>
				<td>$$$</td>
			</tr>
		</thead>
		
		<tbody class="pay_list alternateBg">
			<tr class="template">
				<td class="employeeTitle"></td>
				<td class=""></td>
				<td class="accountCount"></td>
				<td class="netValue"></td>
			</tr>
		</tbody>
	</table>

</div>
<script>

	getData("myinfo/getInformation", {}, function(response) {
            var pay = response.pay;
            var schedule = response.schedule;
            
		$.each(pay, function(i,r) {
			var nr = $(".pay_list tr.template").clone().removeClass("template").appendTo("tbody.client_list");
			parseResponseToFields(r, nr);	
		});

		$.each(schedule, function(i,r) {
			var nr = $(".schedule_list tr.template").clone().removeClass("template").appendTo("tbody.client_list");
			parseResponseToFields(r, nr);	
		});

	})

</script>