<?php
include("index_table.php");
?>

<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">Thống kê</div></td></tr></tbody></table>
<div class="panelAction" id="panelAction" style="height: 400px;">

   <div style="float: left; text-align: left; margin-top: 10px;">
       <fieldset style="width: 600px">
       <legend style="color: #000080; padding-bottom: 10px"><b>Thống kê thu chi</b></legend>

        <span style="float: left; width:100px">Thành viên</span>
        <select name="member_id" id="member_id" style="width:180px;" onchange="chonmember(this.value)">
      	<option value="">-- Tất cả -- </option>
          <?php
                $rst_member=$dbf->getDynamic("webmaster","1=1","fullname asc");
                $toal_member = $dbf->totalRows($rst_member);
                if($toal_member >0)
                {

                  while($rows_member= $dbf->nextdata($rst_member))
                   {
                     $id_member            = $rows_member['id'];
                     $fullname             = stripcslashes($rows_member['fullname']);

                     echo '<option value="'.$id_member.'">'.$fullname.'</option>';

                   }
                }
            ?>
      </select>
      <div class="clear"></div>
       <span style="float: left; width:100px">Loại thu chi</span>
    <select name="khachang_id" id="khachang_id" style="width:180px;" onchange="chonloaithuchi(this.value)">
  	<option value="">-- Tất cả -- </option>
      <?php
            $rst_loaithuchi=$dbf->getDynamic("loaithuchi","1=1","title asc");
            $toal_loaithuchi = $dbf->totalRows($rst_loaithuchi);

            if($toal_loaithuchi >0)
            {

              while($rows_loaithuchi= $dbf->nextdata($rst_loaithuchi))
               {
                 $id_loaithuchi            = $rows_loaithuchi['id'];
                 $title_loaithuchi         = stripcslashes($rows_loaithuchi['title']);

                 echo '<option value="'.$id_loaithuchi.'">'.$title_loaithuchi.'</option>';

               }
            }
        ?>
  </select>
        <div class="clear"></div>
       <br /><span style="float: left; width:100px">Từ ngày</span><input type="text" onfocus="fo(this)" onblur="lo(this)" maxlength="12" value="<?php echo date("d-m-Y",time())?>" id="tungay" name="tungay" >
  	  <script type="text/javascript">
  		$(function() {
  			$('#tungay').datepicker({
  				changeMonth: true,
  				changeYear: true,
  				dateFormat: 'dd-mm-yy'
  			});
  		});
  	  </script>

      Đến ngày<input type="text" onfocus="fo(this)" onblur="lo(this)" maxlength="12" value="<?php echo date("d-m-Y",time())?>" id="denngay" name="denngay">
  	  <script type="text/javascript">
  		$(function() {
  			$('#denngay').datepicker({
  				changeMonth: true,
  				changeYear: true,
  				dateFormat: 'dd-mm-yy'
  			});
  		});
  	  </script>

       <div class="clear"></div>

       <br/><br/><input type="button" name="cmdSearch" id="cmdSearch" value="Tìm kiếm" />
                 <input type="hidden" name="chitiet_loaithuchi" id="chitiet_loaithuchi" class="chitiet_loaithuchi" value="" />
                 <input type="hidden" name="chitiet_rad" id="chitiet_rad" class="chitiet_rad" value="1" />
        </fieldset>


   </div>
    <div id="clear" style="clear: both"></div>
</div>

<script language="JavaScript" type="text/javascript">
/*<![CDATA[*/

function chonloaithuchi(value)
{
  $('#chitiet_loaithuchi').val(value);
}


$('#cmdSearch').click(function (){
    var tungay      = $('#tungay').val();
    var denngay     = $('#denngay').val();
    var loaithuchi_id = $('#chitiet_loaithuchi').val();
    openBox('chitiet_content_loaithuchi.php?tungay='+tungay+'&denngay='+denngay+'&loaithuchi_id='+loaithuchi_id+'',792,650);
});
/*]]>*/
</script>