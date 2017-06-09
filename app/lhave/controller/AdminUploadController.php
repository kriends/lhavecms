<?php
namespace app\lhave\controller;
use app\admin\controller\AdminController;
/**
 * 文件上传
 */
class AdminUploadController extends AdminController
{
    /**
     * 文件上传
     */
    public function upload()
    {
        $return = array('status' => 1, 'info' => '上传成功', 'data' => '');
        $file = target('admin/File');
        $info = $file->uploadData();
        if ($info)
        {
            $return['data'] = $info;
        }
        else
        {
            $return['status'] = 0;
            $return['info'] = $file->getError();
        }
        $this->ajaxReturn($return);
    }

    /**
     * 编辑器上传
     */
    public function editor()
    {
        //编辑器无法动态获取参数，使用默认配置
        $file = target('admin/File');
        $info = $file->uploadData();
        if ($info){
            $return = array(
                'error' => 0,
                'url' => $info['url'],
                'info' => $info,
                );
        }else{
            $return = array(
                'error' => 1,
                'message' => $file->getError(),
                );
        }
        $this->ajaxReturn($return);
    }
     
     //远程图片本地化
    public function imgLocation()
    {
        $data = request('request.str');
        $dirName = UPLOAD_NAME . '/' . date('Y-m-d') . '/';
        $info = $this->getRemoteImage($data,$dirName);
        $this->ajaxReturn($info);
    }


    /**
     * @param $uri
     */
    public function getRemoteImage( $uri,$dirname)
    {
        //忽略抓取时间限制
        set_time_limit( 0 );
        //远程抓取图片配置
        $config = array(
            "savePath" => $dirname , //保存路径
            "fileType" => array( ".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp" ) , //文件允许格式
            "fileSize" => 3000 //文件大小限制，单位KB
        );
        //ue_separate_ue  ue用于传递数据分割符号
        $imgUrls = explode( "|" , $uri );
        $tmpNames = array();
        foreach ( $imgUrls as $imgUrl ) {
            //http开头验证
            if(strpos($imgUrl,"http")!==0){
                array_push( $tmpNames , "error" );
                continue;
            }
            //获取请求头
            $heads = get_headers( $imgUrl );
            //死链检测
            if ( !( stristr( $heads[ 0 ] , "200" ) && stristr( $heads[ 0 ] , "OK" ) ) ) {
                array_push( $tmpNames , "error" );
                continue;
            }

            //格式验证(扩展名验证和Content-Type验证)
            $fileType = strtolower( strrchr( $imgUrl , '.' ) );
            if ( !in_array( $fileType , $config[ 'fileType' ] ) || stristr( $heads[ 'Content-Type' ] , "image" ) ) {
                array_push( $tmpNames , "error" );
                continue;
            }

            //打开输出缓冲区并获取远程图片
            ob_start();
            $context = stream_context_create(
                array (
                    'http' => array (
                        'follow_location' => false // don't follow redirects
                    )
                )
            );
            //请确保php.ini中的fopen wrappers已经激活
            readfile( $imgUrl,false,$context);
            $img = ob_get_contents();
            ob_end_clean();

            //大小验证
            $uriSize = strlen( $img ); //得到图片大小
            $allowSize = 1024 * $config[ 'fileSize' ];
            if ( $uriSize > $allowSize ) {
                array_push( $tmpNames , "error" );
                continue;
            }
            //创建保存位置
            $savePath = $config[ 'savePath' ];            
            if (!is_dir($savePath)) {
                mkdir($savePath , 0777);
            }
            //写入文件
            $tmpName = $savePath . rand( 1 , 10000 ) . time() . strrchr( $imgUrl , '.' );
            try {
                $fp2 = @fopen( $tmpName , "a" );
                fwrite( $fp2 , $img );
                fclose( $fp2 );
                array_push( $tmpNames ,  $tmpName );
            } catch ( Exception $e ) {
                array_push( $tmpNames , "error" );
            }
           
        }
         $url = implode( "|" , $tmpNames );
         return $url;
    }

}