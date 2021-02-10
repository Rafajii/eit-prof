<?php 
include ('connect.php');
if (isset($_POST['submit'])) {
	$login_table="admin_prof";
$username=$_POST['username'];
$password=md5($_POST['password']);

$sql="select * from $login_table where username='$username'";
$result=mysqli_query($conn,"select * from $login_table where username='$username'");
if(!$result){
  echo mysqli_error($conn);
}
$count=mysqli_num_rows($result);
$rows=mysqli_fetch_array($result);


if ( ($rows['username']==$username) && ($rows['password']==$password)){
header('Location: index.php');
session_start();
  $_SESSION['username']=$username;
  $_SESSION['password']=$password;
}
else {
echo " <script type='text/javascript' >
	alert('INCORRECT LOGIN DETAILS')
  </script>";	

  
}
}
else {
}

?>




<html>
<head>
<title>Admin Login Page</title>
<link rel="icon" href="img/eit.png" type="image" size="20x20">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body class="index">
	<div class="container">
		<center>
					<img src="img/eit.png" width="200" height="200">
<fieldset  ><legend ><em><font color="blue">Admin Login Page</font></em></legend>
		<form method="post" name="form" action="" >
<table width="477" height="165" border="0" align="center" cellpadding="5" cellspacing="5">
  
  <tr>
    <td align="right">Username: </td>
    <td><input type="text" id="in" required name="username" placeholder="enter your username" /></td>
  </tr>
  <tr>
    <td height="25" align="right">Password:</td><br/>
    <td><input type="password" required id="in" name="password" placeholder="password"/></td>
  </tr>
  <tr>
    <td></td>
    <td><input type="submit" id="login" name="submit" value="Login" /></td>
  </tr>
  
</table>
<br/>

</form>
</fieldset>
</center>
</div>

    </div>
</body>
</html>