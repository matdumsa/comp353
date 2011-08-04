<h2>Client Information</h2>

Id: <?=$id?>
<div>
    
	<table>
		<thead>
			<tr>
                                <td>Name</td>
				<td>Address</td>
				<td>Date of Birth</td>
				<td>Joining Date</td>
				<td>Category</td>
			</tr>
		</thead>			
		<tbody class="info_list alternateBg">
		<?php foreach($info as $info_row): ?>			
			<tr>
				<td><?=$info_row->clientName?></td>
				<td><?=$info_row->clientAddress?></td>
				<td><?=$info_row->clientDateOfBirth?></td>
				<td><?=$info_row->clientJoiningDate?></td>
                                <td><?=$info_row->clientCategory?></td>
			</tr>
		<?php endforeach; ?>
		</tbody>
	</table>

	<hr>


</div>
<script>

	getData("myinfo/getInformation", {}, function(response) {
            var info = response.info;
            
		$.each(pay, function(i,r) {
			var nr = $(".info_list tr.template").clone().removeClass("template").appendTo("tbody.info_list");
			parseResponseToFields(r, nr);	
		});
	})

</script>