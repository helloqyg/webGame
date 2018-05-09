<?php

/**
 * 后台公共文件
 * @author       qyg
 * @version      0.1
 * @copyright    Copyright (c) 2015 http://www.widuu.com
 * @date      	 2015/07/27
 */

namespace Manager\Controller;

class LoginController extends \Think\Controller{

	/**
	 *  登录页面
	 *  @author qyg
	 */

	public function index(){
		if ( check_login(true) ){
			$this->redirect( '/Manager/index' );
		}

        $this->display();
	}

	/**
	 * 登录方法
	 * @author qyg
	 */

	public function login(){
        $userinfo = I('post.');
        $login_info   = \Common\Util\UserAuth::login($userinfo,true);
        // 返回登录信息
        if( $login_info['status'] ){
            $this->success($login_info['info'],U('/Manager/index'));
        }else{
            $this->error($login_info['info']);

        }
        return;
    }

    /**
     * 退出方法
     * @author qyg
     */

    public function loginout(){
    	session(null);
    	cookie(null);
    	$this->redirect('/manager/login');
    }
}
