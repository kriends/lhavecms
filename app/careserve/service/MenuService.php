<?php
namespace app\careserve\service;
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
                        'url' => url('careserve/AdminContent/index'),
                        'order' => 1
                    )
                )
            ),
        );
	}
	


}
