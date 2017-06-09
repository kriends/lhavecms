<?php exit;?>001528252692642733ccd586c660d400ce4d2e60fc30s:3278:"a:2:{s:8:"template";s:3214:"<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>LHaveCMS 2.0 - 网站后台管理</title>
    <link rel="stylesheet" href="/lhavecms/public/common/css/pintuer.css">
    <link rel="stylesheet" href="/lhavecms/public/lib/css/admin.css">
    <script src="/lhavecms/public/js/jquery.js"></script>
    <script src="/lhavecms/public/common/js/pintuer.js"></script>
    <script src="/lhavecms/public/common/js/respond.js"></script>
    <script>
    var duxConfig = {
        //基础配置
        'baseDir' : '/lhavecms/public/js/',
        'baseUrl' : '/lhavecms/',
        'uploadUrl' : "<?php echo $_SERVER['PHP_SELF'];?>?r=lhave/AdminUpload/upload",
        //自定义配置
        'libDir' : '/lhavecms/public/lib/js/',
        'sessId'  : '<?php echo session_id();?>',
        'editorUploadUrl' : "<?php echo $_SERVER['PHP_SELF'];?>?r=lhave/AdminUpload/editor",
        };
    </script>
    <script src="/lhavecms/public/js/do.js"></script>
    <script src="/lhavecms/public/js/config.js"></script>
    
    <script src="/lhavecms/public/lib/js/definition.js"></script>
    <style>
        body {overflow-x:hidden; background-color: #eff3f6;}
    </style>
</head>
<body>
   <div class="dux-tools">
            <div class="bread-head"><?php echo $infoModule["info"]["name"];?>
                <span class="small"><?php echo $infoModule["info"]["description"];?></span>
            </div>
            <?php if ($infoModule['menu']){ ?>
            <br>
            <div class="tools-function clearfix">
                <div class="float-left">
                   <?php foreach ( $infoModule['menu'] as $vo ) { ?>
                   <?php if (($vo['url'] == $self) || ($vo['url'] == $url)  || (stristr($vo['url'],url()))){ ?>
                    <a class="button button-small bg-main icon-<?php echo $vo["icon"];?>" href="<?php echo $vo["url"];?>">
                    <?php }else{ ?>
                    <a class="button button-small bg-back icon-<?php echo $vo["icon"];?>" href="<?php echo $vo["url"];?>">
                    <?php } ?>
                     <?php echo $vo["name"];?></a>
                    <?php } ?>
                </div>
                <?php if ($infoModule['add']){ ?>
                <div class="button-group float-right">
                    <a class="button button-small bg-dot icon-plus dropdown-toggle"> 添加 <span class="downward"></span></a> 
                    <ul class="drop-menu pull-right">
                       <?php foreach ($infoModule['add'] as $vo ) { ?>
                        <li><a href="<?php echo $vo["url"];?>"><?php echo $vo["name"];?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
        </div>
        
    <div class="admin-main">
    <!--common-->
    </div>
</body>
</html>";s:12:"compile_time";i:1496716692;}";