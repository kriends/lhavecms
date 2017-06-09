<?php exit;?>001528255302fbea2a47d9ad526540d6bede2f055a27s:1057:"a:2:{s:8:"template";s:994:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url();?>">
    <div class="panel dux-box  active">
        <div class="panel-head">
            <strong><?php echo $name;?><?php echo $formInfo["name"];?></strong>
        </div>
        <div class="panel-body">
            <?php echo $html;?>
        </div>
        <div class="panel-foot">
            <div class="form-button">
                <div id="tips"></div>
                <input type="hidden" name="fieldset_id" type="hidden" value="<?php echo $formInfo["fieldset_id"];?>">
                <input type="hidden" name="data_id" type="hidden" value="<?php echo $info["data_id"];?>">
                <button class="button bg-main" type="submit">保存</button>
                <button class="button bg" type="reset">重置</button>
            </div>
        </div>
    </div>
</form>
<script>
    Do.ready('base', function () {
        $('#form').duxFormPage();
    });
</script>";s:12:"compile_time";i:1496719302;}";