<?php
session_start();
include str_replace('\\','/',dirname(__FILE__)).'/class/class.DEFINE.php';
include str_replace('\\','/',dirname(__FILE__)).'/class/class.DBFUNCTION.php';
include str_replace('\\','/',dirname(__FILE__)).'/class/class.SINGLETON_MODEL.php';
$dbf=SINGLETON_MODEL :: getInstance("DBFUNCTION");

if($_SESSION["user_login"]){
	unset($_SESSION["user_login"]);
	echo "<script>window.location.href='login.php'</script>";
}
else
{
    echo "<script>window.location.href='login.php'</script>";
}
?>