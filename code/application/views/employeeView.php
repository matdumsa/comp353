
<button id="newEmployee">Add a new employee</button>

<div>

	<table>
		<thead>
			<tr>
				<td></td>
				<td>#</td>
				<td>Title</td>
				<td>Name</td>
				<td>Branch</td>
				<td>HiredOn</td>
				<td>Salary</td>
				<td></td>
			</tr>
		</thead>
		
		<tbody class="employee_list alternateBg">
			<tr class="template">
				<td class=""><span class="showOnRowHover ui-icon ui-icon-pencil"></span></td>
				<td class="employeeId"></td>
				<td class="employeeTitle"></td>
				<td class="employeeName"></td>
				<td class="employeeBranchId"></td>
				<td class="employeeStartDate"></td>
				<td class="employeeHourlySalary">$*</td>
				<td class=""><span class="showOnRowHover ui-icon ui-icon-trash"></span></td>
			</tr>
		</tbody>
	</table>

</div>

<div id="newEmployeeForm" class="hidden" title="Create a new employee">
	<?=$this->load->view("form/newEmployee");?>
</div>

<div id="deleteConfirmation" class="hidden" title="Are you sure you want to delete">
	Are you sure you want to delete the employee <span class="employeeName"></span>?
</div>
<script>

//Make the button pretty
	$( "#newEmployee" ).button(
	{
	    icons: {
	        primary: "ui-icon-plus"
		}
	}).click(function()
    {
    	openForm();
    });
    

	getData("employee/getList", {}, function(response) {
		$.each(response, function(i,r) {
			appendRow(r);
		});
	})
	
	
	
		function openForm(data) {

		if (!data)
			 // Nothing is provided so the form must be emptied
			 $("#newEmployeeForm input").val("");
		else
		{
			$("#newEmployeeForm").find("input, select").each(function(c,i) { $(i).val(data[$(i).attr("name")] || ""); });
			
		}				
		$("#newEmployeeForm").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"create":function()
		    	{
		    		//Code for creating an employee
		    		submitForm(data || false);
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
	
	function askForDelete(data) {	
		$("#deleteConfirmation	span.employeeName").text(data.employeeName);
		$("#deleteConfirmation").dialog(
		{
			"modal":true,
		    "buttons":
		    { 
		    	"delete":function()
		    	{
		    		//Code for creating an employee
		    		performDelete(data);
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
	
	function performDelete(data) {
		$.getJSON("https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/employee/remove/" + data.employeeId, {}, function(response) {
			if (response.status == "ok")
				$("#employee-" + data.employeeId).remove();
		});
	}
	
	function submitForm(data) {
		if (data)
			var url = "https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/employee/modify/" + data.employeeId;
		else
			var url = "https://clipper.encs.concordia.ca/cgi-bin/cgiwrap/~dmc353_1/index.php/employee/add/";

		$.post(url, $("#newEmployeeForm").find("input, select").serialize(), function(response)
		{
			appendRow(response[0]);
		}, "json");

	}
	
	function appendRow(data) {
		var nr;
		if ($("#employee-" + data.employeeId).length >0)
			nr = $("#employee-" + data.employeeId);
		else
			nr = $(".employee_list tr.template").clone().removeClass("template").appendTo("tbody.employee_list").attr("id", "employee-" + data.employeeId);

		parseResponseToFields(data, nr);

		nr.find("span.ui-icon-pencil").unbind("click").click(function() { openForm(data); });
		nr.find("span.ui-icon-trash").unbind("click").click(function() { askForDelete(data); });

	}
	

</script>