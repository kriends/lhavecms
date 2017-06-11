<?php exit;?>0015285234285aca08120a44fe02d70df9d46b537026s:5399:"a:2:{s:8:"template";s:5335:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url(car/Admincar/edit);?>">
    <div class="tab dux-tab">
        <div class="panel dux-box  active">
            <div class="panel-head">
                <div class="tab-head">
                    <strong><?php echo $name;?>车辆</strong>
                    <ul class="tab-nav">
                        <li class="active"><a href="#tab-1">基本信息</a></li>
                    </ul>
                </div>
            </div>
            <div class="tab-body">
                <div class="tab-panel active" id="tab-1">
                    <div class="form-group">
                        <div class="label">
                            <label>车辆类别</label>
                        </div>
                        <div class="field">
                            <select class="input" name="car_id">
                                <option value="0">==最上级类别==</option>
                                <?php foreach ($categoryList as $vo) { ?>
                                <?php if ($info['parent_id'] == $vo['car_id']){ ?>
                                <option value="<?php echo $vo["car_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["car_id"];?>">
                                        <?php } ?>
                                        <?php echo $vo["cname"];?></option>
                                    <?php } ?>
                            </select>
                            
                            <div class="input-note">当前车辆的上级类别</div>
                        </div>
                    </div>

                    <div class="form-group" style="display: none;">
                        <div class="label">
                            <label>车辆信息模版</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="url" name="url" size="60" datatype="s" value="<?php echo $info["url"];?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆名称</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="name" name="name" size="60" datatype="s" value="<?php echo $info["name"];?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆单价</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="sale" name="sale" size="60" datatype="s" value="<?php echo $info["sale"];?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>联系方式</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="contact" name="contact" size="60"  value="<?php echo $info["contact"];?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆图片</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="image" name="image" size="38" value="<?php echo $info["image"];?>">
                            <a class="button bg-blue button-small  js-img-upload" data="image" id="image_upload" preview="image_preview" href="javascript:;" ><span class="icon-upload"> 上传</span></a>
                            <a class="button bg-blue button-small icon-picture-o" id="image_preview" href="javascript:;" > 预览</a>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆详细内容</label>
                        </div>
                        <div class="field">
                            <textarea class="input js-editor" id="description" name="description" rows="20" >
                            <?php echo html_out($info["description"]);?></textarea>
                        </div>
                    </div>

            <div class="panel-foot">
                <div class="form-button">
                    <div id="tips"></div>
                    <input type="hidden" name="car_id" type="hidden" value="<?php echo $info["car_id"];?>">
                    <button class="button bg-main" type="submit">保存</button>
                    <button class="button bg" type="reset">重置</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    Do.ready('base', function () {
        $('#form').duxFormPage();
    });
</script>";s:12:"compile_time";i:1496987428;}";