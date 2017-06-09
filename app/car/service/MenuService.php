<?php
namespace app\car\service;
/**
 * 后台菜单接口
 */
class MenuService{
	/**
	 * 获取菜单结构
	 */
	public function getAdminMenu(){
		return array(
            'Content' => array(
                'menu' => array(
                    array(
                        'name' => '车辆管理',
                        'icon' => 'reorder',
                        'url' => url('car/admincar/index'),
                        'order' => 3
                    ),
                    array(
                        'name' => '订单管理',
                        'icon' => 'reorder',
                        'url'  => url('car/adminCarOrderManager/index'),
                        'order' => 4
                        )
                )
            ),
        );
	}
}
