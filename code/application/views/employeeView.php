

<div>

	<table>
		<thead>
			<tr>
				<td>#</td>
				<td>Title</td>
				<td>Name</td>
				<td>Branch</td>
				<td>HiredOn</td>
				<td>Salary</td>
			</tr>
		</thead>
		
		<tbody class="employee_list alternateBg">
			<tr class="template">
				<td class="employeeId"></td>
				<td class="employeeTitle"></td>
				<td class="employeeName"></td>
				<td class="employeeBranchId"></td>
				<td class="employeeStartDate"></td>
				<td class="employeeHourlySalary">$*</td>
			</tr>
		</tbody>
	</table>

</div>
<script>

	getData("employee/getList", {}, function(response) {
		$.each(response, function(i,r) {
			var nr = $(".employee_list tr.template").clone().removeClass("template").appendTo("tbody.employee_list");
			parseResponseToFields(r, nr);	
		});
	})

</script>