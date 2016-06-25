<?php

if(isset($_GET["tungay"]))
{
   $tungay          = strtotime($_GET["tungay"]);
   $denngay         = strtotime($_GET["denngay"]);

   $loaithuchi_id   = $_GET["loaithuchi_id"];

?>

<?php
   if($tungay>$denngay)
   {
     echo '<meta http-equiv="content-type" content="text/html;charset=utf-8"/>';
     echo "<h3 style='text-align:left'>Vui lòng chọn số lại ngày (từ ngày <b>".$_GET["tungay"]."</b> đến ngày <b>".$_GET["denngay"]."). Dữ liệu không phù hợp</h3>";
   }else
   {
     include("rad_thuchi.php");
   }
}
 ?>