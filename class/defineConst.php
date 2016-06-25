<?php
/*
Section of paging
*********************************************************************************************************/
$PageSize=15;
$PageNo=$_GET['PageNo'];
$Pagenumber=10;
$ModePaging="Full";
/*Setting language
*******************************************************************************************************/
$arrayLang=array("vn"=>"vn","en"=>"en");
$arraySMTPSERVER=array("host"=>"","user"=>"","password"=>"","from"=>"");
define("prefixTable","");
define("HOST","http://".$_SERVER["HTTP_HOST"]."/");
/*
*******************************************************************************************************/

$URL=explode("/",$_SERVER["REQUEST_URI"]);
array_shift($URL);
$page=strtolower($URL[0]);

if(empty($page)) $page="trang-chu";

$_GET['component_function_alias'] = $page;
$lang=$URL[1];
if(empty($lang)) $lang="vn";

$t=count($URL);
$trr_lang="";


?>