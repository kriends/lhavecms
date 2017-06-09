<?php exit;?>0015284537245eaa4da219f76096a3f894ec167e372es:4638:"a:2:{s:8:"template";s:4574:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url(car/Admincar/add);?>">
    <div class="tab dux-tab">
        <div class="panel dux-box  active">
            <div class="panel-head">
                <div class="tab-head">
                    <strong><?php echo $name;?>车辆</strong>
                    <ul class="tab-nav">
                        <li class="active"><a href="#tab-1">基本信息</a>
                        </li>
                        <li><a href="#tab-2">扩展信息</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-body">
                <div class="tab-panel active" id="tab-1">
                    <div class="form-group">
                        <div class="label">
                            <label>上级栏目</label>
                        </div>
                        <div class="field">
                            <select class="input" name="parent_id">
                                <option value="0">==顶级栏目==</option>
                                <?php foreach ($categoryList as $vo) { ?>
                                <?php if ($info['parent_id'] == $vo['class_id']){ ?>
                                <option value="<?php echo $vo["class_id"];?>" selected>
                                    <?php }else{ ?>
                                    <option value="<?php echo $vo["class_id"];?>">
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
                            <input type="text" class="input" id="name" name="name" size="60" datatype="s" value="">
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
                            <textarea class="input js-editor" id="content" name="content" rows="20" ></textarea>
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
                    <input type="hidden" name="class_id" type="hidden" value="<?php echo $info["class_id"];?>">
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
</script>";s:12:"compile_time";i:1496917724;}";