<?php
include 'db_connect.php';

$email=$_POST['email'];
$password=$_POST['password'];


$sql= "SELECT * FROM users WHERE email=:email AND password=:password";
$stmt=$pdo ->prepare($sql);
$stmt->bindParam(':email',$email);
$stmt->bindParam(':password',$password);
$stmt->execute();


 session_start();
if ($stmt->rowCount()<=0)
 {
 	if (!isset($_COOKIE['logInCount'])) 
 	{
 		$logInCount=1;
 	}

 	else
 	{
 		$logInCount=$_COOKIE['logInCount'];
 		$logInCount++;

 	}


 	setcookie('logInCount',$logInCount,time()+30);
 	if ($logInCount>3)
 	{
 		// timeoutdesign
 		include ('frontend_header.php');
 		echo "<h1> Login In Failed for three times. Try again after 1 minute. </h1><img src='image/loading.gif' />";
 	
 			include ('frontend_footer.php');
 			echo "<script type=\"text/javascript\"> 
 			(function(){
 				setTimeout(function()
 				{
 					location.href='login.php';
 				},10000)
 				})();
 			</script>";

 			unset($_COOKIE['logInCount']);
 			setcookie('logInCount','',time()-10);

 	}
 	else
 	{


 		session_start();
 		$_SESSION['login_reject'] = "Email and Password is not invalid";
 	header("location:login");	
 	}
	
}

else
{


$user=$stmt->fetch(PDO::FETCH_ASSOC);

$_SESSION['loginuser']=$user;


// admin
if ($user['role_id']==1) {
	header("Location:dashboard.php");
	
}
else
{
	header("Location:index");
}

}


?>