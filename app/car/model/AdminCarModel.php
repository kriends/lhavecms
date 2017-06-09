<?php
namespace app\car\model;
use app\base\model\BaseModel;
/**
 * 栏目操作
 */
class AdminCarModel extends BaseModel {
    //验证
    protected $_validate = array(
        array('content_tpl','1,200', '内容模板未选择', 0 ,'length',3),
    );

    /**
     * 获取列表
     * @return array 列表
     */
    public function loadList($where = array(), $carId=0){
        
        $data = $this->loadData($where);
        $cat = new \framework\ext\Category(array('car_id', 'parent_id', 'name', 'cname'));
        $data = $cat->getTree($data, intval($carId));
        return $data;
    }

    /**
     * 获取列表
     * @return array 列表
     */
    public function loadData($where = array(), $limit = 0 ,$order="A.sequence ASC , A.car_id ASC"){
        $pageList = $this->table("admin_car as A")
                    ->field('A.*')
                    ->where($where)
                    ->limit($limit)
                    ->order($order)
                    ->select();
        //处理数据类型
        $list=array();
        if(!empty($pageList)){
            $i = 0;
            foreach ($pageList as $key=>$value) {
                $list[$key]=$value;
                $list[$key]['app']=strtolower($value['app']);
                $list[$key]['curl'] = target('lhave/Category')->getUrl($value);
                $list[$key]['i'] = $i++;
            }
        }
        return $list;
    }

    /**
     * 获取车辆数量
     * @return array 列表
     */
    public function countList($where = array()){
        return $this->where($where)->count();
    }

    /**
     * 获取信息
     * @param int $classId ID
     * @return array 信息
     */
    public function getInfo($carId)
    {
        $map = array();
        $map['car_id'] = $carId;
        return $this->getWhereInfo($map);
    }

    /**
     * 获取信息
     * @param array $where 条件
     * @return array 信息
     */
    public function getWhereInfo($where)
    {
        $info = $this->table("admin_car as A")
                    //->join('{pre}category_article as B ON A.class_id = B.class_id')
                    ->field('A.*')
                    ->where($where)
                    ->find();
        if(!empty($info)){
            $info['app'] = strtolower($info['app']);
        }
        return $info;
    }

    /**
     * 更新信息
     * @param string $type 更新类型
     * @return bool 更新状态
     */
    public function saveData($type = 'add'){

        //分表处理
        $data = $this->create();
        if(!$data){
            $this->rollBack();
            return false;
        }
        if($type == 'add'){
            $data['car_id'] = $carId;
            $status = $this->add($data);
            if($status){
                $this->commit();
            }else{
                $this->rollBack();
            }
            return $status;
        }
        if($type == 'edit'){
            $where = array();
            $where['car_id'] = $data['car_id'];
            $status = $this->where($where)->save($data);
            if($status === false){
                $this->rollBack();
                return false;
            }
            $this->commit();
            return true;
        }
        $this->rollBack();
        return false;
    }

    /**
     * 删除信息
     * @param int $classId ID
     * @return bool 删除状态
     */
    public function delData($carId)
    {
        //总表
        //target('lhave/Category')->delData($carId);
        //分表
        $map = array();
        $map['car_id'] = $carId;
        return $this->where($map)->delete();
    }
    

}
