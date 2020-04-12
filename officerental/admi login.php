<?php
	error_reporting(0);
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>


</head>

<body>

<?php

		$con = mysqli_connect("localhost","root","123456","Data base name");
		if (!$con) {
				die('Could not connect: ' . mysql_error());
			  }
		mysqli_select_db("health",$con);
			
			if (isset($_POST['uid']))
			{
				$mail=$_POST['uid'];
				$psd=$_POST['pwd'];
			$sql = "SELECT `id` FROM `admin` where email='".$mail."' and password='".$psd."' limit 1" ;
			  $result = mysqli_query($con,$sql);
		  If(mysqli_num_rows($result))
		  {
			  header('Location:admin-dashboard.php');
		  }
		  
			}
	?>

	
<div class="form-style-5" >
<form method="post">
<fieldset>
<legend> Admin Login</legend>
<input type="email" name="uid" placeholder="Admin id*">
<input type="password" name="pwd" placeholder="Password *">
</fieldset>
<input type="submit" value="Login" />
</form>
</div>
</body>
</html>
