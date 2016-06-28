<?php
// just test.
    date_default_timezone_set('Asia/Bangkok');
    include ("index_table.php");
?>
<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">CHI PHÍ TOUR</div></td></tr></tbody></table>

<?php

    if(isset($_GET["id"]) && (int)$_GET["id"]!=0)
    {
        $tour_id = (int)$_GET["id"];
        $infoTour = $dbf->getInfoColum("chiphitour",(int)$_GET["id"]);
        foreach($infoTour as $key=>$value)
        {
            $$key = $value;
        }
        //print_r($infoTour);
    }

    if(isset($_POST["created_chiphitour"]))
    {
        foreach ($_POST as $key => $value) {
            $$key = $value;
        }
         if ((strtotime($date_from) > strtotime($date_to)))  {
            echo "<h3 style='text-align:left; padding-left: 20px; color:red'>Vui lòng chọn lại ngày dự kiến (Từ <b>". $date_from."</b> to <b> ". $date_to."). Dữ liệu không phù hợp</h3>";
         }else
         {
            $array_col = array("user_id"=>$user_id,"title"=>$title,"date_from"=>strtotime($date_from),"date_to"=>strtotime($date_to),"quantity"=>(int)$quantity,"baby"=>(int)$baby,"datecreated"=>time(),"status"=>1);
            $affect = $dbf->insertTable("chiphitour", $array_col);
            if($affect)
            {
              //$last_id = mysql_insert_id();
              //$html->redirectURL("chiphitour_detail.php?id=".$last_id);
            }else
            {
               echo "<h3 style='text-align:left; padding-left: 20px; color:red'>Không thể tạo thu chi tour. Vui lòng thực hiện lại</h3>";
            }
         }
    }
?>

<form id="frm" class="" onsubmit="" enctype="application/x-www-form-urlencoded" action="" method="post" name="frm">
<div class="panelForm" id="panelForm">
<table cellspacing="1" cellpadding="1" class="mainForm" id="mainForm">
<tbody>
    <tr>
        <td class="boxGrey">Người tạo</td>
        <td class="boxGrey2">
            <?php
                if($_SESSION["user_login"]["role_id"] != 14){
                    echo '<select class="select-control" name="user_id" id="user_id" required>
                  	      <option value="">-- Chọn -- </option>';

                              $rst_user = $dbf->getDynamic("webmaster", "status=1", "id asc");
                              $toal_user = $dbf->totalRows($rst_user);
                              if ($toal_user > 0) {
                                while ($rows_user = $dbf->nextdata($rst_user)) {
                                  $id = $rows_user['id'];
                                  $fullname = stripcslashes($rows_user['fullname']);
                                  echo '<option ' . (($id == $user_id) ? "selected" : "") . ' value="' . $id . '">' . $fullname . '</option>';
                                }
                              }

                  echo '</select>';
                }else
                {
                   echo '<b>'.$_SESSION["user_login"]["fullname"].'</b>';
                   echo '<input id="user_id" type="hidden" name="user_id" value = "'.$_SESSION["user_login"]["id"].'">';
                }
            ?>
        </td>
    </tr>

    <tr>
        <td class="boxGrey">Tiêu đề</td>
        <td class="boxGrey2">
            <input type="text" class="form-control" name="title" id="title" value="<?php echo $title;?>" required="required" />
        </td>
    </tr>

    <tr>
      <td class="boxGrey">Ngày dự kiến</td>
      <td class="boxGrey2">
         <table>
            <tr>
            <td>Từ</td>
            <td>
            <input type="text" class="form-control" style="width: 150px" name="date_from" id="date_from" value="<?php echo (($date_from!="")?date("d-m-Y",$date_from):"");?>" required="required" />
            <script type="text/javascript">
      		$(function() {
                $('#date_from').datepicker({
      				changeMonth: true,
      				changeYear: true,
      				dateFormat: 'dd-mm-yy'
      			});
      		});
      	  </script>
           </td>

            <td>Đến</td>
            <td>
            <input type="text" class="form-control" style="width: 150px" name="date_to" id="date_to" value="<?php echo (($date_to!="")?date("d-m-Y",$date_to):"");?>" required="required" />
            <script type="text/javascript">
      		$(function() {
                $('#date_to').datepicker({
      				changeMonth: true,
      				changeYear: true,
      				dateFormat: 'dd-mm-yy'
      			});
      		});
      	  </script>
           </td>

          </tr>
          </table>

        </td>
    </tr>

    <tr>
        <td class="boxGrey">Số lượng khách</td>
        <td class="boxGrey2">
            <span style="float: left; margin-right: 30px;">
            <label>Người lớn</label>
            <input type="number" class="form-control" style="width: 80px" name="quantity" id="quantity" value="<?php echo $quantity;?>" required="required" />
            </span>
            <span style="float: left">
            <label>Trẻ em</label>
            <input type="baby" class="form-control" style="width: 80px" name="baby" id="baby" value="<?php echo $baby;?>" required="required" />
            </span>
        </td>
    </tr>

    <tr>
        <td colspan="2">
            <div class="block">
                <h1 class="title">CHI TIẾT TOUR</h1>
                <?php

                       echo '<table cellspacing="1" cellpadding="1" class="mainForm" id="mainForm">';
                       echo "<tbody>";
                       echo "<tr class='titleBottom'>
                                <td>Chi tiết</td>
                                <td>CK/TM</td>
                                <td>SL</td>
                                <td>DVT</td>
                                <td>Đơn Giá</td>
                                <td>Thành tiền</td>
                                <td>Ghi chú</td>
                                <td>&nbsp;</td>
                            </tr>";

                    $rst_group_date=$dbf->getDynamic("group_date_tour","tour_id=".(int)$tour_id."","id asc");
                    $toal_group_date = $dbf->totalRows($rst_group_date);
                    if($toal_group_date >0)
                    {
                      while($rows_group_date= $dbf->nextdata($rst_group_date))
                      {
                        $group_date_id  = $rows_group_date["id"];
                        $title_gd       = $rows_group_date["title"];

                        echo "<tr><td colspan='8'><h2> ".$title_gd."</h2></td></tr>";

                        $rst_group_date_detail=$dbf->getDynamic("tour_detail","tour_id=".(int)$tour_id." and group_date_tour_id =".(int)$group_date_id."","id asc");
                        $toal_group_date_detail = $dbf->totalRows($rst_group_date_detail);
                        if($toal_group_date_detail >0)
                        {
                          while($rows_group_date_detail= $dbf->nextdata($rst_group_date_detail))
                          {

                            $tour_detail_id     = $rows_group_date_detail["id"];
                            $tour_detail_title  = $rows_group_date_detail["title"];
                            echo "<tr>
                                <td><input type='text' name='title_detail_".$tour_detail_id."' id= 'title_detail_".$tour_detail_id."' value = '".$tour_detail_title."'/></td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>";
                         }

                          echo "<tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>";
                        }
                     }
                     }
                       echo "</tbody>";
                       echo "</table>";
                ?>
            </div>
        </td>
    </tr>

    <tr>
        <td></td>
        <td>
            <button class="btn-primary" name="created_chiphitour" type="submit" style="overflow: hidden; position: relative;">Tạo Thu Chi Tour</button>
        </td>
    </tr>

</tbody>
</table>
</div>
</form>
<?php
$dbf->Footer();
?>