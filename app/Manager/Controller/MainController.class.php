<?php

/**
 * backstage common module
 * @author    qyg
 * @version   0.1
 * @copyright Copyright (c) 2015 http://www.widuu.com
 * @date      2015/07/27
 */

namespace Manager\Controller;
use Think\Controller;

/**
 * common object
 */

class MainController extends Controller {

    /**
     * common initialization
     * @author qyg
     */

    public function _initialize(){
    	// check login status
    	$is_login = check_login(ture);
    	// 未登录跳转
    	if(!$is_login){
    	       $this->error('请登录',U('/manager/login'),1);
    	}
        // member total
        $this->member_total = M('Member')->where(array('is_admin'=>0))->count();

        // superadmin
        if(session(C('ADMIN_AUTH_KEY')) || cookie(C('ADMIN_AUTH_KEY'))){
             return ;
        }

        // Auth验证用户规则
        $auth     = new \Think\Auth();
        // 获取用户id
        $userid   = get_uid(true);
        // 验证规则

        if(!$auth->check(MODULE_NAME.'/'.CONTROLLER_NAME.'/'.ACTION_NAME,$userid)){
                $this->error('没有权限');
        }
    }

    /**
     * 提示信息
     * @param  $bool 布尔值
     * @param  $info 提示信息
     * @author qyg
     */

    public function notice_info($bool,$info,$url){
        if($bool){
            if(empty($url)){
                 $this->success($info."成功");
            }else{
                $this->success($info."成功",$url);
            }
        }else{
            if(empty($url)){
                 $this->error($info."成功");
            }else{
                $this->error($info."成功",$url);
            }
        }
        return;
    }

}
