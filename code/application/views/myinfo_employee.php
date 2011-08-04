<h2>Employee Information</h2>

Id: <?=$id?>

<div>

	<table>
		<thead>
			<tr>
				<td>Day</td>
				<td>Code</td>
				<td>Hours</td>
				<td>Start</td>
			</tr>
		</thead>			
		<tbody class="schedule_list alternateBg">
		<?php foreach($schedule as $schedule_row): ?>			
			<tr>
				<td><?=$schedule_row->employeeScheduleDay?></td>
				<td><?=$schedule_row->employeeScheduleCode?></td>
				<td><?=$schedule_row->employeeScheduleHours?></td>
				<td><?=$schedule_row->employeeScheduleStartTime?></td>
			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>

	<hr>
    
    	<table>
		<thead>
			<tr>
				<td>pay #</td>
				<td>pay date</td>
				<td>$$$</td>
			</tr>
		</thead>

		<tbody class="pay_list alternateBg">
		<?php foreach($pay as $payrow): ?>			
			<tr>
				<td><?=$payrow->employeePayId?></td>
				<td><?=$payrow->employeePaymentDate?></td>
				<td><?=$payrow->employeePaymentAmount?></td>
			</tr>
		<?php endforeach; ?>
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