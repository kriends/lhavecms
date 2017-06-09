<?php
namespace app\car\controller;
use app\admin\controller\AdminController;
/**
 * 文章列表
 */

class AdminCarOrderManagerController extends AdminController {
    /**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '订单信息',
                'description' => '查看所有订单',
                ),
            'menu' => array(
                    array(
                        'name' => '订单列表',
                        'url' => url('index'),
                        'icon' => 'list',
                    ),
                    
                ),
            /*'add' => array(
                    array(
                        'name' => '添加车辆',
                        'url' => url('add'),
                        'icon' => 'plus',
                    ),
                )*/
            );
    }
	/**
     * 列表
     */
    public function index(){
        //筛选条件
        $where = array();
        $keyword = request('request.keyword','');
        $reserveId = request('request.reserve_id',0,'intval');
        //$positionId = request('request.position_id',0,'intval');
        $status = request('request.status',0,'intval');
        if(!empty($keyword)){
            $where[] = 'A.title like "%'.$keyword.'%"';
        }
        if(!empty($reserveId)){
            $where['C.reserve_id'] = $reserveId;
        }
        /*if(!empty($positionId)){
            $where[] = 'find_in_set('.$positionId.',position) ';
        }*/
        if(!empty($status)){
            switch ($status) {
                case '1':
                    $where['A.status'] = 1;
                    break;
                case '2':
                    $where['A.status'] = 0;
                    break;
            }
        }
        //URL参数
        $pageMaps = array();
        //订单编号
        $pageMaps['no'] = $no;
        //车辆id
        $pageMaps['car_id'] = $carId;
        //客户姓名
        $pageMaps['name'] = $name;
        //客户手机
        $pageMaps['phone'] = $phone;
        //行程
        $pageMaps['trip'] = $trip;
        //租用天数
        $days['days'] = $days;
        //订单总金额
        $pageMaps['amount'] = $amount;
        //实付金额
        $paid['paid'] = $paid;
        //下单日期
        $time['time'] = $time;

        //查询数据
        $list = target('AdminCarOrderManager')->page(20)->loadList($where,$limit);
        $this->pager = target('AdminCarOrderManager')->pager;
        //位置导航
        $breadCrumb = array('订单列表'=>url());
        //模板传值
        $this->assign('breadCrumb',$breadCrumb);
        $this->assign('list',$list);
        $this->assign('page',$this->getPageShow($pageMaps));
        $this->assign('categoryList',target('lhave/Category')->loadList());
        $this->assign('positionList',target('lhave/Position')->loadList());
        $this->assign('pageMaps',$pageMaps);
        $this->adminDisplay();
    }

    /**
     * 增加
     */
    
    /*public function add(){
        if(!IS_POST){
            $breadCrumb = array('车辆列表'=>url('index'),'车辆添加'=>url());
            $this->assign('breadCrumb',$breadCrumb);
            $this->assign('name','添加');
            $this->assign('categoryList',target('lhave/Category')->loadList());
            $this->assign('tplList',target('admin/Config')->tplList());
            $this->assign('positionList',target('lhave/Position')->loadList());
            $this->assign('default_config',current_config());
            $this->adminDisplay('info');
        }else{
            if(target('ContentArticle')->saveData('add')){
                $this->success('车辆添加成功！');
            }else{
                $msg = target('ContentArticle')->getError();
                if(empty($msg)){
                    $this->error('车辆添加失败');
                }else{
                    $this->error($msg);
                }
            }
        }
    }*/

    /**
     * 修改
     */
    public function edit(){
        if(!IS_POST){
            $reserveId = request('get.reserve_id','','intval');
            if(empty($reserveId)){
                $this->error('参数不能为空！');
            }
            //获取记录
            $model = target('AdminCarOrderManager');
            $info = $model->getInfo($reserveId);
            if(!$info){
                $this->error($model->getError());
            }
            $breadCrumb = array('订单列表'=>url('index'),'订单修改'=>url('',array('reserve_id'=>$reserveId)));
            $this->assign('breadCrumb',$breadCrumb);
            $this->assign('name','修改');
            $this->assign('info',$info);
            $this->assign('categoryList',target('lhave/Category')->loadList());
            $this->assign('tplList',target('admin/Config')->tplList());
            $this->assign('positionList',target('lhave/Position')->loadList());
            $this->assign('default_config',current_config());
            $this->adminDisplay('info');
        }else{
            if(target('AdminCarOrderManager')->saveData('edit')){
                $this->success('订单修改成功！');
            }else{
                $msg = target('AdminCarOrderManager')->getError();
                if(empty($msg)){
                    $this->error('订单修改失败');
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
        $contentId = request('post.data',0,'intval');
        if(empty($contentId)){
            $this->error('参数不能为空！');
        }
        if(target('AdminCarOrderManager')->delData($contentId)){
            $this->success('订单删除成功！');
        }else{
            $this->error('订单删除失败！');
        }
    }

    /**
     * 批量操作
     */
    public function batchAction(){
        
        $type = request('post.type',0,'intval');
        $ids = request('post.ids');
        $reserveId = request('post.reserve_id',0,'intval');
        if(empty($type)){
            $this->error('请选择操作！');
        }
        if(empty($ids)){
            $this->error('请先选择操作项目！');
        }
        if($type == 3){
            if(empty($reserveId)){
                $this->error('请选择操作栏目！');
            }
        }
        foreach ($ids as $id) {
            $data = array();
            $data['content_id'] = $id;
            switch ($type) {
                case 1:
                    //发布
                    $data['status'] = 1;
                    target('lhave/Content')->editData($data);
                    break;
                case 2:
                    //草稿
                    $data['status'] = 0;
                    target('lhave/Content')->editData($data);
                    break;
                case 3:
                    $data['reserve_id'] = $reserveId;
                    target('lhave/Content')->editData($data);
                    break;
                case 4:
                    //删除
                    target('AdminCarOrderManager')->delData($id);
                    break;
            }
        }
        $this->success('批量操作执行完毕！');

    }


}

