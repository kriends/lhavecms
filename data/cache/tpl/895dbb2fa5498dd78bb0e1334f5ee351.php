<?php exit;?>001528515810832c886207ed6f94a389ee9a9d02f0afs:5757:"a:2:{s:8:"template";s:5693:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url(car/Admincar/add);?>">
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
                    <div class="form-group" style="display: none">
                        <div class="label">
                            <label>上级栏目</label>
                        </div>
                        <div class="field">
                            <select class="input" name="parent_id">
                                <option value="0">==顶级栏目==</option>
                                <?php foreach ($categoryList as $vo) { ?>
                                <?php if ($info['parent_id'] == $vo['car_id']){ ?>
                                <option value="<?php echo $vo["car_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["car_id"];?>">
                                        <?php } ?>
                                        <?php echo $vo["cname"];?></option>
                                    <?php } ?>
                            </select>
                            <div class="input-note">当前栏目的上级栏目</div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆名称</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="url" name="url" size="60" datatype="s" value="subpage_infor">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆名称</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="name" name="name" size="60" datatype="s" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆单价</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="sale" name="sale" size="60" datatype="s" value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>联系方式</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="contact" name="contact" size="60"  value="">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆图片</label>
                        </div>
                        <div class="field">
                            <input type="text" class="input" id="image" name="image" size="38" value="">
                            <a class="button bg-blue button-small  js-img-upload" data="image" id="image_upload" preview="image_preview" href="javascript:;" ><span class="icon-upload"> 上传</span></a>
                            <a class="button bg-blue button-small icon-picture-o" id="image_preview" href="javascript:;" > 预览</a>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="label">
                            <label>车辆详细内容</label>
                        </div>
                        <div class="field">
                            <textarea class="input js-editor" id="description" name="description" rows="20" ></textarea>
                        </div>
                    </div>

                   <div class="form-group">
                        <div class="label">
                            <label>内容分页数</label>
                        </div>
                        <div class="field">
                            <input type="number" class="input" id="page" name="page" size="60" datatype="n" value="<?php echo default_data($info['page'],$default_config['ARTICLE_PAGE']);?>">
                            <div class="input-note">当前栏目的内容列表下文章每页显示数量</div>
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
</script>";s:12:"compile_time";i:1496979810;}";