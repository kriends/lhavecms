<?php
namespace app\car\controller;
use app\admin\controller\AdminController;
/**
 * 栏目管理
 */
class AdminCarController extends AdminController
{
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '车辆管理',
                'description' => '管理全部车辆信息',
                ),
            'menu' => array(
                array('name' => '车辆列表',
                    'url' => url('car/admincar/index'),
                    'icon' => 'list',
                    ),
                ),
            'add' => array(
                    array(
                        'name' => '添加车辆',
                        'url' => url('add'),
                        'icon' => 'plus',
                    ),
                )
            );

        return $data;
    }
    /**
     * 列表
     */
    public function index()
    {
        //$breadCrumb = array('车辆列表' => url());
        //$this->assign('list', target('AdminCar')->loadList());
        
        //URL参数
        $pageMaps = array();
        //车辆ID
        $pageMaps['car_id'] = $carId;
        //父id
        $pageMaps['parent_id'] = $parent_id;
        //客车名称
        $pageMaps['name'] = $name;
        //联系方式
        $pageMaps['contact'] = $contact;
        //客车单价（按天计算）
        $pageMaps['sale'] = $sale;
        //车辆图片
        $days['image'] = $image;
        //客车介绍
        $pageMaps['description'] = $description;
        //链接
        $pageMaps['url'] = $url;

        //查询数据
        $list = target('AdminCar')->page(20)->loadList();
        $this->pager = target('AdminCar')->pager;
        //位置导航
        $breadCrumb = array('全部车辆'=>url());
        //模板传值
        $this->assign('breadCrumb',$breadCrumb);
        $this->assign('carList',$list);
        $this->assign('page',$this->getPageShow($pageMaps));
        $this->assign('carPageList',target('AdminCar')->loadList());
        $this->assign('positionList',target('AdminCar')->loadList());
        $this->assign('pageMaps',$pageMaps);

        $this->adminDisplay();

    }


    /**
     * 增加
     */
    public function add(){
        if(!IS_POST){
            $breadCrumb = array('添加车辆'=>url('admincar\add'),'添加车辆'=>url());
            //$this->assign('breadCrumb',$breadCrumb);
            $this->assign('name','添加');
            $this->assign('categoryList',target('AdminCar')->loadList());
            //$this->assign('tplList',target('admin/Config')->tplList());
            //$this->assign('expandList',target('lhave/FieldsetExpand')->loadList());
            $this->assign('default_config',current_config());
            $this->adminDisplay('add');
        }else{
            $_POST['app'] = APP_NAME;
            if(target('AdminCar')->saveData('add')){
                $this->success('车辆添加成功！');
            }else{
                $msg = target('AdminCar')->getError();
                if(empty($msg)){
                    $this->error('车辆添加失败');
                }else{
                    $this->error($msg);
                }
                
            }
        }
    }

    /**
     * 修改
     */
    public function edit(){
        if(!IS_POST){
            $carId = request('get.car_id','','intval');
            if(empty($carId)){
                $this->error('参数不能为空！');
            }
            $model = target('AdminCar');
            $info = $model->getInfo($carId);
            var_dump($info);
            if(!$info){
                $this->error($model->getError());
            }
            $breadCrumb = array('车辆修改'=>url('car/AdminCar/edit'),'车辆修改'=>url());
            $this->assign('breadCrumb',$breadCrumb);
            $this->assign('name','修改');
            $this->assign('categoryList',target('AdminCar')->loadList());
            /*$this->assign('tplList',target('admin/Config')->tplList());
            $this->assign('expandList',target('lhave/FieldsetExpand')->loadList());*/
            $this->assign('default_config',current_config());
            $this->assign('info',$info);
            $this->adminDisplay('edit');
        }else{
            $_POST['app'] = APP_NAME;
            if(target('AdminCar')->saveData('edit')){
                $this->success('车辆修改成功！');
            }else{
                $msg = target('AdminCar')->getError();
                if(empty($msg)){
                    $this->error('车辆修改失败');
                }else{
                    $this->error($msg);
                }
                
            }
        }
    }
    /**
     * 删除
     */
    public function del(){
        $carId = request('post.data');
        if(empty($carId)){
            $this->error('参数不能为空！');
        }
        //判断子栏目
        /*if(target('lhave/Category')->loadList(array(), $carId)){
            $this->error('请先删除子栏目！');
        }*/
        //判断栏目下内容
        $where = array();
        $where['parent_id'] = $carId;
        $contentNum = target('AdminCar')->countList($where);
        if(!empty($contentNum)){
            $this->error('请先删除该栏目下的内容！');
        }
        //删除栏目操作
        if(target('AdminCar')->delData($carId)){
            $this->success('栏目删除成功！');
        }else{
            $msg = target('AdminCar')->getError();
            if(empty($msg)){
                $this->error('栏目删除失败！');
            }else{
                $this->error($msg);
            }
        }
    }
}

