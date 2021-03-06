<?php exit;?>00152825412193a80b3622d9329efef7cac74f32bea7s:7511:"a:2:{s:8:"template";s:7447:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url();?>">
    <div class="tab dux-tab">
        <div class="panel dux-box  active">
            <div class="panel-head">
                <strong>文章模块设置</strong>
            </div>
            <div class="panel-body">

                <div class="form-group">
                    <div class="label">
                        <label>默认提取封面图</label>
                    </div>
                    <div class="field">
                        <div class="button-group button-group-small radio">
                            <?php if (!$info['ARTICLE_TOPIC']){ ?>
                            <label class="button active">
                                <input name="ARTICLE_TOPIC" value="0" checked="checked" type="radio">
                                <?php }else{ ?>
                                <label class="button">
                                    <input name="ARTICLE_TOPIC" value="0" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 不提取</label>
                                <?php if ($info['ARTICLE_TOPIC']){ ?>
                                <label class="button active">
                                    <input name="ARTICLE_TOPIC" checked="checked" value="1" type="radio">
                                    <?php }else{ ?>
                                    <label class="button">
                                        <input name="ARTICLE_TOPIC" value="1" type="radio">
                                        <?php } ?>
                                        <span class="icon icon-check"></span> 提取</label>
                        </div>
                        <div class="input-note"></div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="label">
                        <label>默认提取描述</label>
                    </div>
                    <div class="field">
                        <div class="button-group button-group-small radio">
                            <?php if (!$info['ARTICLE_DESCRIPTION']){ ?>
                            <label class="button active">
                                <input name="ARTICLE_DESCRIPTION" value="0" checked="checked" type="radio">
                                <?php }else{ ?>
                                <label class="button">
                                    <input name="ARTICLE_DESCRIPTION" value="0" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 不提取</label>
                                <?php if ($info['ARTICLE_DESCRIPTION']){ ?>
                                <label class="button active">
                                    <input name="ARTICLE_DESCRIPTION" checked="checked" value="1" type="radio">
                                    <?php }else{ ?>
                                    <label class="button">
                                        <input name="ARTICLE_DESCRIPTION" value="1" type="radio">
                                        <?php } ?>
                                        <span class="icon icon-check"></span> 提取</label>
                        </div>
                        <div class="input-note"></div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="label">
                        <label>默认链接TAG</label>
                    </div>
                    <div class="field">
                        <div class="button-group button-group-small radio">
                            <?php if (!$info['ARTICLE_TAGLINK']){ ?>
                            <label class="button active">
                                <input name="ARTICLE_TAGLINK" value="0" checked="checked" type="radio">
                                <?php }else{ ?>
                                <label class="button">
                                    <input name="ARTICLE_TAGLINK" value="0" type="radio">
                                    <?php } ?>
                                    <span class="icon icon-check"></span> 不链接</label>
                                <?php if ($info['ARTICLE_TAGLINK']){ ?>
                                <label class="button active">
                                    <input name="ARTICLE_TAGLINK" checked="checked" value="1" type="radio">
                                    <?php }else{ ?>
                                    <label class="button">
                                        <input name="ARTICLE_TAGLINK" value="1" type="radio">
                                        <?php } ?>
                                        <span class="icon icon-check"></span> 链接</label>
                        </div>
                        <div class="input-note"></div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="label">
                        <label>默认文章来源</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" id="ARTICLE_COPYFROM" name="ARTICLE_COPYFROM" size="60" datatype="*" value="<?php echo $info["ARTICLE_COPYFROM"];?>">
                        <div class="input-note">请使用,分割多个来源</div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="label">
                        <label>默认栏目模板</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" id="ARTICLE_CLASS_TPL" name="ARTICLE_CLASS_TPL" size="20" datatype="s" value="<?php echo $info["ARTICLE_CLASS_TPL"];?>">
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label>默认内容模板</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" id="ARTICLE_CONTENT_TEL" name="ARTICLE_CONTENT_TEL" size="20" datatype="s" value="<?php echo $info["ARTICLE_CONTENT_TEL"];?>">
                    </div>
                </div>

                <div class="form-group">
                    <div class="label">
                        <label>默认分页数</label>
                    </div>
                    <div class="field">
                        <input type="text" class="input" id="ARTICLE_PAGE" name="ARTICLE_PAGE" size="20" datatype="n" value="<?php echo $info["ARTICLE_PAGE"];?>">
                    </div>
                </div>
            </div>
            <div class="panel-foot">
                <div class="form-button">
                    <div id="tips"></div>
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
</script>";s:12:"compile_time";i:1496718121;}";