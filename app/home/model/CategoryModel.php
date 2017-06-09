<?php
namespace app\lhave\model;
use app\base\model\BaseModel;
/**
 * 栏目操作
 */
class CategoryModel extends BaseModel {



        /**
     * 获取列表
     * @return array 列表
     */
    public function loadList($where = array(), $classId=0){
        
        $data = $this->loadData($where);
        $cat = new \framework\ext\Category(array('class_id', 'parent_id', 'name', 'cname'));
        $data = $cat->getTree($data, intval($classId));
        return $data;
    }

    /**
     * 获取列表
     * @return array 列表
     */
    public function loadData($where = array(), $limit = 0 ,$order="A.sequence ASC , A.class_id ASC"){
        $pageList = $this->table("category as A")
                    ->join('{pre}category_article as B ON A.class_id = B.class_id')
                    ->field('B.*,A.*')
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
     * 获取信息
     * @param int $classId ID
     * @return array 信息
     */
    public function getInfo($classId)
    {
        $map = array();
        $map['A.class_id'] = $classId;
        return $this->getWhereInfo($map);
    }

    /**
     * 获取信息
     * @param array $where 条件
     * @return array 信息
     */
    public function getWhereInfo($where)
    {
        $info = $this->table("category as A")
                    ->join('{pre}category_article as B ON A.class_id = B.class_id')
                    ->field('B.*,A.*')
                    ->where($where)
                    ->find();
        if(!empty($info)){
            $info['app'] = strtolower($info['app']);
        }
        return $info;
    }

}
