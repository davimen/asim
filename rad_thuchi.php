<?php
        @session_start();
        if(empty($_SESSION["user_login"])) {
        session_unregister("user_login");
		echo "<script>window.location.href='login.php'</script>";
        exit;
    	}
        include str_replace('\\','/',dirname(__FILE__)).'/content_spaw/spaw.inc.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.DEFINE.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.HTML.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.JAVASCRIPT.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.UTILITIES.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.CSS.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.SINGLETON_MODEL.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/simple_html_dom.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/class.BUSINESSLOGIC.php';
        include str_replace('\\','/',dirname(__FILE__)).'/class/template.php';
    	include str_replace('\\','/',dirname(__FILE__)).'/Cache_Lite/Lite/Function.php';

        $html=SINGLETON_MODEL::getInstance("HTML");
    	$js=SINGLETON_MODEL::getInstance("JAVASCRIPT");
    	$css=SINGLETON_MODEL::getInstance("CSS");
        $utl=SINGLETON_MODEL::getInstance("UTILITIES");
        $dbf=SINGLETON_MODEL::getInstance("BUSINESSLOGIC");
    	$html->docType();

        $setting = $dbf->getInfoColum("setting",1);

        if($loaithuchi_id!='')
        {
           $loaithuchi = $dbf->getInfoColum("loaithuchi",$loaithuchi_id);
           $nameloaithuchi = $loaithuchi["title"];
        }else
        {
           $nameloaithuchi = 'Tất cả';
        }

?>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<link rel="shortcut icon" type="image/x-icon"  href="images/favicon.ico"/>
<link rel="stylesheet"  type="text/css" href="themes/theme_default/style/style.pack.css"/>
<link rel="stylesheet"  type="text/css" href="css/ui.all.css"/>
<link rel="stylesheet"  type="text/css" href="style/jquery.Slidemenu.css"/>
<link rel="stylesheet" href="style/export_detail.css" type="text/css" />
<div class="swap">

<div class="panelView" id="panelView">
    <h4><?php echo $setting["title"] ?></h4>
    <center>
            <H1>THỐNG KÊ THU CHI CÁ NHÂN</H1>
            <p style="padding: 0px; margin: 0px;">Từ ngày:&nbsp;<?php echo $_GET['tungay']; ?>&nbsp;&nbsp; Đến ngày:&nbsp;<?php echo $_GET['denngay'];?></p>
    </center>
<h3 style="padding: 0px; margin: 0px 0px 5px;">Loại Thu chi:<?php echo $nameloaithuchi;?></h3>
<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">
 <?php
            if($loaithuchi_id!='')
            {
               $rst_loaithuchi=$dbf->getDynamic("loaithuchi","id = '".(int)$loaithuchi_id."'","id asc");
            }else
            {
              $rst_loaithuchi=$dbf->getDynamic("loaithuchi","1=1","id asc");
            }

            $toal_loaithuchi = $dbf->totalRows($rst_loaithuchi);
            if($toal_loaithuchi >0)
            {
              $tongsotienthongke_all=0;
              while($rows_loaithuchi= $dbf->nextdata($rst_loaithuchi))
              {
                 $id_loaithuchi    = $rows_loaithuchi['id'];
                 $title_loaithuchi = stripcslashes($rows_loaithuchi['title']);




 ?>
<tbody>
    <tr class="cell1">
        <td colspan="7"><h2>Loại:<i><?php echo $title_loaithuchi ?></i></h2></td>
    </tr>
    <tr class="titleBottom">
    <td class="itemText">STT</td>
    <td class="itemText">Loại thu chi</td>
    <td class="itemText">Thành tiền</td>
    <td class="itemCenter">Ngày tạo</td>
    <td class="itemCenter">Ghi chú</td>
    </tr>
    <?php

        $rs_thuchi=$dbf->getDynamic("thuchi","datecreated >= ".$tungay." and datecreated <= ".$denngay." and type_id='".$id_loaithuchi."'","id desc ");
        $total_thuchi = $dbf->totalRows($rs_thuchi);
        if($total_thuchi>0)
        {
            $number_row=1;
            $tongsotienthongke = 0;
            while($row_thuchi=$dbf->nextData($rs_thuchi)){
              $id                   = $row_thuchi['id'];
              $price                = stripcslashes($row_thuchi['price']);
              $tongsotienthongke+= $price;
              $ngay                 = stripcslashes($row_thuchi['datecreated']);
              $note                 = stripcslashes($row_thuchi['note']);

    ?>
    <tr class="<?php echo (($number_row%2==0)?"cell2":"cell1")?>">

    <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $number_row?></td>
    <td class="itemText"><?php echo $title_loaithuchi?></td>
    <td class="itemText"><?php echo $utl->format($price)?></td>
    <td class="itemText"><?php echo date("d-m-Y",$ngay);?></td>
    <td class="itemText"><?php echo $note?></td>
    </tr>

        <?php
          $number_row++;
        }
      ?>
       <tr class="cell2">
        <td colspan="3" style="text-align: right"> Tổng số tiền:</td>
        <td colspan="2" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke)?> VNĐ</b></td>
       </tr>
      <?php
        $tongsotienthongke_all+=$tongsotienthongke;
      }else
      {
        echo "<tr class='cell2'><td colspan='5'><h3 style='text-align:left'> =>Không có dữ liệu</h3></td></tr>";
      }
    ?>
    </tbody>

    <?php
            }
     ?>
       <tr class="cell2">
        <td colspan="3" style="text-align: right"> TÔNG CỘNG:</td>
        <td colspan="2" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke_all)?> VNĐ</b></td>
       </tr>
     <?php
            }// end if nhan vien
    ?>

    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>
</div>