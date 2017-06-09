<?php
namespace app\car\service;
/**
 * 内容模型接口
 */
class CarOrderManagerModelService{
    /**
     * 获取模型信息
     */
    public function getCarOrdertModel(){
        return array(
            'name'=>'订单',
            'listType'=>1,
            'order'=>0,
            );
    }
    
}
