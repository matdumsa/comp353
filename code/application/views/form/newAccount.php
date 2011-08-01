	<fieldset>
	<legend>New Account</legend>
	<table>			
		<tr>
			<td>Type of account</td>
			<td>
				<select name="accountType">
					<option>credit card</option>
					<option>checking</option>
					<option>saving</option>
					<option>line of credit</option>
					<option>loan</option>
					<option>USD</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Balance</td>
			<td>
				<input type="text" name="accountBalance" />
			</td>
		</tr>
		<tr>
			<td>Option</td>
			<td>
				<input type="text" name="accountOption" />
			</td>
		</tr>
		<tr>
			<td>Branch</td>
			<td>
				<select name="accountBranchId">
				<?php foreach($branches as $branch) : ?>
					<option value="<?=$branch->branchId?>">#<?=$branch->branchId?> <?=$branch->branchLocation?></option> 
				<?php endforeach; ?>
				</select>
			</td>
		</tr>
		<tr>
			<td>Rate</td>
			<td>
				<select name="accountRateId">
				<?php foreach($rates as $rate) : ?>
					<option value="<?=$rate->interestRateId?>"><?=$rate->interestRatePercentage?></option> 
				<?php endforeach; ?>				
				</select>
			</td>
		</tr>
		<tr>
			<td>Plan</td>
			<td>
				<select name="accountPlanId">
				<?php foreach($plans as $plan) : ?>
					<option value="<?=$plan->branchPlanId?>"><?=$plan->branchPlanOption?></option> 
				<?php endforeach; ?>
				</select>
			</td>
		</tr>
		<tr>
			<td>Credit Limit</td>
			<td>
				<input type="text" name="accountCreditLimit" />
			</td>
		</tr>
		<tr>
			<td>Level</td>
			<td>
				<select name="accountLevel">
					<option>personal</option>
					<option>business</option>
					<option>corporate</option>
				</select>
			</td>
		</tr>

	</table>
	</fieldset>