<?php
include("index_table.php");
?>
<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">Biểu đồ</div></td></tr></tbody></table>
<div class="bieudoduan">
    <?php
        $rs_trangthai=$dbf->getDynamic("status_duan","1=1","id desc");
        $total_trangthai = $dbf->totalRows($rs_trangthai);
        if($total_trangthai>0)
        {
            $array_trangthai = array();
            while($row_trangthai=$dbf->nextData($rs_trangthai)){
            $array_trangthai[$row_trangthai["id"]] = $row_trangthai["title"];
            }
        }

        $rs_duan=$dbf->getDynamic("duan","1=1","id desc");
        $total_duan = $dbf->totalRows($rs_duan);
        if($total_duan>0)
        {
            $number_row=1;
            $total_price = 0;
            while($row_duan=$dbf->nextData($rs_duan)){
              $id                      = $row_duan['id'];
              $title                   = stripcslashes($row_duan['title']);
              $price                   = stripcslashes($row_duan['price']);
              $date_start              = stripcslashes($row_duan['date_start']);
              $date_end                = stripcslashes($row_duan['date_end']);
              $process                 = stripcslashes($row_duan['process']);
              $note                    = stripcslashes($row_duan['note']);
              $trangthai_id            = stripcslashes($row_duan['trangthai_id']);
              $content                 = stripcslashes(strip_tags($row_duan['content']));
              $total_price+= $price;
              ?>
              <div class="item_pro">
                <div class="colum1"><?php echo $title ?></div>
                <div class="colum2"><div title="<?php echo $utl->format($price)." VNĐ. Start: ".date("d-m-Y",$date_start)." End: ".date("d-m-Y",$date_end)." Trạng thái: ".$array_trangthai[$trangthai_id]." Nội dung: ".$content; ?>" class="process" style="width:<?php echo $process?>%"><?php echo $process;?> %</div></div>
                <div class="clear"></div>
               </div>
               <div class="clear"></div>
              <?php
              $number_row++;
           }
        ?>
        <table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">
        <tr class="cell2">
        <td colspan="3" style="text-align: right"> TÔNG CỘNG:</td>
        <td colspan="2" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($total_price)?> VNĐ</b></td>
       </tr>
       </table>
       <?php
        }
    ?>

</div>

<?php
$dbf->Footer();
?>