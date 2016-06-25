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

        $info = $dbf->getInfoColum("nhanvat",(int)$_GET["id"]);

?>
<!DOCTYPE>
<html>
<head>
  <meta charset="utf-8">
  <title>Tạo Hình</title>
  <link rel="stylesheet" href="css/style.css" type="text/css" />
  <script language="JavaScript" src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
</head>

<body>
    <div class="divSwrapper">
        <div class="content">
            <h1 class="h1"><?php echo $info["title"]?></h1>
            <div class="blog">
                <?php echo $info["content"];?>
            </div>
        </div>
    </div>
</body>

</html>
