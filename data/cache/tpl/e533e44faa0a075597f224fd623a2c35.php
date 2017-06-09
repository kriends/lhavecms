<?php exit;?>00152835977834a92de29d589a01fcdec748c15dda88s:5970:"a:2:{s:8:"template";s:5906:"<form method="post" class="form-x dux-form form-auto" id="form" action="<?php echo url('site');?>">
    <div class="panel dux-box  active">
        <div class="panel-head">
            <strong>站点信息</strong>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点标题</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_title" name="site_title" size="60" value="<?php echo $info["site_title"];?>" datatype="*">
                    <div class="input-note">网站标题栏处显示</div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点副标题</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_subtitle" name="site_subtitle" size="60" value="<?php echo $info["site_subtitle"];?>">
                    <div class="input-note">站点标题后面显示的副标题</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点关键词</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_keywords" name="site_keywords" size="60" value="<?php echo $info["site_keywords"];?>">
                    <div class="input-note">搜索引擎所收录的关键词</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点描述</label>
                </div>
                <div class="field">
                    <textarea class="input" id="site_description" name="site_description" rows="3" cols="62"><?php echo $info["site_description"];?></textarea>
                    <div class="input-note">当前网站的描述信息</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点网址</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_url" name="site_url" size="60" value="<?php echo $info["site_url"];?>">
                    <div class="input-note">当前网站的域名，开启手机版后做PC跳转</div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label for="sitename">联系电话</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="phone" name="phone" size="60" value="<?php echo $info["phone"];?>" datatype="*">
                    <div class="input-note">网站顶部电话</div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label for="sitename">联系电话1</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="phone_1" name="phone_1" size="60" value="<?php echo $info["phone_1"];?>" datatype="*">
                    <div class="input-note">网站底部电话</div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label for="sitename">联系地址</label>
                </div>
                <div class="field">
                    <input type="text" class="address" id="address" name="address" size="60" value="<?php echo $info["address"];?>" datatype="*">
                    <div class="input-note">网站底部地址</div>
                </div>
            </div>

            <div class="form-group">
                <div class="label">
                    <label for="sitename">站长邮箱</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_email" name="site_email" size="60" value="<?php echo $info["site_email"];?>">
                    <div class="input-note">站长邮箱方便联系</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点版权</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="site_copyright" name="site_copyright" size="60" value="<?php echo $info["site_copyright"];?>">
                    <div class="input-note">版权信息或备案号</div>
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label for="sitename">站点统计</label>
                </div>
                <div class="field">
                    <textarea class="input" id="site_statistics" name="site_statistics" rows="3" cols="62"><?php echo $info["site_statistics"];?></textarea>
                    <div class="input-note">用于统计代码调用</div>
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
        $('#form').duxForm();
    });
</script>
";s:12:"compile_time";i:1496823778;}";