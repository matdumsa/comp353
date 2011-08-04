	<fieldset>
	<legend>Actions</legend>
	<table>			
		<tr>
			<td>Amount</td>
			<td>
				<input type="text" name="amount" />
			</td>
		</tr>
		<tr>
			<td>Account</td>
			<td>
				<select name="account">
				<?php foreach($accounts as $account) : ?>
					<option value="<?=$account->accountNumber?>"><?=$account->accountType?></option> 
				<?php endforeach; ?>
				</select>
			</td>
		</tr>
		</table>
	</fieldset>