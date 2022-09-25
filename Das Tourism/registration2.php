<?php 
session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);

?>



<html>
<head>
<link rel="stylesheet" href="reg.css">
<h1 align="center"><font size="7" face="Monotype Corsiva">welcome</font> </h1>
	<title> register form </title>
	

</footer>
	</head>

	<body>
	<form action="insert5.php" method="post">
		<table border="5" align="center"> 
		
			<tr>
				
				<td>
				    name:
				</td>
				<td>
				<input type="text"  name="username" >
				</td>
			</tr>
			<tr>
				<td>
					password:
				</td>
				<td>
				<input type="password"  name="password" >
				</td>
			</tr>
			<tr>
				<td>
					Gender:
				</td>
				<td>
					<input type="radio" name="gender" value="m" >male
					<input type="radio" name="gender" value="f" >female
				</td>
			</tr>
			<tr>
				<td>
					Email:
				</td>
				<td>
					<input type="mail" name="email" >
				</td>
			</tr>
			<tr>
				<td>
					phone no:
				</td>
				<td>
					<select name="phonecode" >
						<option sielected hidden value="">select code</option>
						<option value="91">91</option>
						<option value="91">91</option>
						<option value="91">91</option>
						<option value="91">91</option>
						<option value="91">91</option>
					</select>
					<input type="phone" name="phone" required>
				</td>
			</tr>
						<tr>
				<td>
					place
				</td>
				<td>
					<select name="destination" >
						<option sielected hidden value="">select code</option>
						<option value="Sundarban">Sundarban</option>
						<option value="Nepal">Nepal</option>
					
					</select>
					
				</td>
			</tr>
			<tr>
				<td>
					member
				</td>
				<td>
					<input type="integer" name="member" >
				</td>
			</tr>
			
			<tr>
				<td>
					<input type="submit" value="submit" >
				</td>
			</tr>
	
		</table>
</form>
</body>
</html>	