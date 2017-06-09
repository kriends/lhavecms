<?php
namespace app\car\controller;
use app\home\controller\SiteController;
/**
 * 车辆预定页面
 */

class CarController extends SiteController {

	/**
     * 车辆预定页
     */
    public function index()
    {
        $carId = request('get.car_id',0,'intval');
        $urlTitle = request('get.urltitle');
        if (empty($contentId)) {
            $this->error404();
        }
        $model = target('AdminCar');
        //获取内容信息
        if(!empty($carId)){
            $carInfo=$model->getInfo($carId);
        }else{
            $this->error404();
        }
        $carId = $carInfo['car_id'];
        //信息判断
        if (!is_array($carInfo)){
            $this->error404();
        }

        //获取车辆信息
        $modelCar = target('AdminCar');
        $carInfo=$modelCar->getInfo($carInfo['car_id']);
        if (!is_array($carInfo)){
            $this->error404();
        }
        if($carInfo['app']<>APP_NAME){
            $this->error404();
        };
        //判断跳转
        if (!empty($carInfo['url']))
        {
            $link = $this->show($carInfo['url']);
            redirect($link,301);
        }

        //MEDIA信息
        $media = $this->getMedia($contentInfo['title'],$contentInfo['keywords'],$contentInfo['description']);
        //模板赋值
        $this->assign('contentInfo', $contentInfo);
        $this->assign('carInfo', $carInfo);
        $this->assign('crumb', $crumb);
        $this->assign('count', $count);
        //$this->assign('page', $page);
        //$this->assign('media', $media);
        //$this->assign('prevInfo', $prevInfo);
        //$this->assign('nextInfo', $nextInfo);
        if($carInfo['url']){
            $this->siteDisplay($carInfo['url']);
        }else{
            $this->siteDisplay($carInfo['car_url']);
        }
    }
}