<!DOCTYPE html>
<html>
	<head>
	    <title>[PlaceholderBank] - [Placeholder moto]</title>

		<!--section for meta information -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	    <meta name="Charset" content="UTF-8">
	    <meta name="Distribution" content="Global">
	    <meta name="Rating" content="General">
	    <meta name="Robots" content="NO-FOLLOW">
		<meta name="keywords" content="">
		<meta name="description" content="">

		<!-- section where we include references to stylesheets -->
		<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.14.custom.css" rel="stylesheet">
		<link type="text/css" href="css/style.css" rel="stylesheet">

		<!-- Section for including various scripts/plugin -->
		<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.14.custom.min.js"></script>
		<script type="text/javascript" src="js/site.js"></script>
	</head>
	<body>


		<div class=wrapper>
			<div id="tabs">
				<span class="ui-state-default ui-corner-all ui-hover fakeLink" id="logout">Login</span>
				<ul>
					<?=$this->load->view('menu', $this)?>
				</ul>
			</div>
			<div class=push></div>
		</div>

		<div class=footer>
			<div style="float:right">Last query ran in <span id="querySpeed">0</span> sec.</div>
			[PlaceholderBank], version %v
        	<span id="loggedIn" style="display:none">Logged in as <span class="name sessionData"></span> (<span class="username sessionData"></span>)</span>
        	<span id="notLoggedIn">You are not logged in for the moment</span>
		</div>


	<div id="modalLogin" title="Login to [PlaceholderBank]" style="display:none">
		<form action="" onSubmit="return false;">
			<span class="ui-icon ui-icon-locked" style="float:left; margin-right:5px;"></span>
			<div class="modalInstruction"><p>You have to be logged in to continue...</p></div>
			<div class="cl">
				<table>
					<tr>
						<td><label for="username">Username</label></td>
						<td><input type="text" class="username" name="username"/></td>
					</tr>
					<tr>
						<td><label for="password">Password</label></td>
						<td><input type="password" class="password" name="password"/></td>
					</tr>
				</table>
				
			</div>
		</form>
	</div>

	<div id="modalTimeout" title="Connection Error" style="display:none">
		<p>
			<span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 50px 0;"></span>
				Network Error, check your network and try again
		</p>
	</div>


