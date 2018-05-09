<?php

/**
 * Backstage user manager center 
 * @author    qyg
 * @version   0.1
 * @copyright Copyright (c) 2015 http://www.widuu.com
 * @date      2015/08/4
 */

namespace Manager\Controller;
use Common\Util\UserAuth;

class UserController extends MainController{


	/**
	 * Company user manager
	 * @author qyg
	 */

	public function index(){
		$this->get_data(1);
		$this->header_title = '前台用户管理';
		$this->display('index');
	}

	/**
	 * User verify
	 * @author qyg
	 */

	public function verify(){
		$id = I('get.id',0,'intval');
		if( I('get.cid',0,'intval')!=0 ){
			$id = I('get.cid',0,'intval');
		}
		if( $id != 0 ){
			if( IS_GET ){
				if( I('get.id',0,'intval')!=0 ) $this->id=$id;
				$this->company_info = M('Company')->find($id);
				$this->bank = C('BANK');
				$this->display('verify');
			}else{
				$type = I('post.status',0,'intval');
				if( $type == 0 ){
					$this->error('审核条件没有选择');
				}
				$model = M('Company');
				$cid = I('post.id');
				$model->create();
				if( $model->save() ){
					// 修改用户信息
					$uid = M('Member')->getFieldByCid($cid,'id');
					M('Member')->where('id='.$uid)->save(array('group_id'=>3,'bid'=>I('post.bid')));
					M('Company')->where(array('id'=>$cid))->save(array('rtime'=>time()));
					M('AuthGroupAccess')->where('uid='.$uid)->save(array('group_id'=>3));
					$email[] = M('Company')->getFieldById($cid,'f_email');
                    \Sendcloud\Send::send_template('team@elevator-expo.com','',$email,'信息审核通过','infomation','','','','','',true,false,false);
					//审核用户逻辑
					$this->success('审核完成'.$email[0],'manager/user/verify.html');
				}else{
					$this->error('审核失败');
				}
			}
		}else{
			$this->get_data(0);
			$this->header_title = '待审核用户';
			$this->display('index');
		}
	}

	/**
	 * get data function
	 * @author qyg
	 */

	private function get_data($id){
		$member_model = D('Member');
		// search key
		$search_key = I('get.key','','trim');
		if(  $search_key != '' ){
			$where['company_name'] = $search_key; 
		}
		$where['Company.status'] = $id; 
		// Get user total 
		$count= $member_model->where($where)->count();
		$Page = new \Common\Util\Page($count,18);
		$show = $Page->show();
		// Get user data list 
		$list = $member_model->where($where)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->list = $list;
		$this->page = $show;
	}

	/**
	 * User repassword
	 * @author qyg
	 */

	public function modify(){
		if(IS_GET){
			$this->display();
		}

		if(IS_POST){
			$result = UserAuth::modify_password(I('post.password','','trim'),true);
			$user_model = M('Member');
			if( $result ){
				$this->success('修改成功');
			}else{
				$this->error('修改失败');
			}
		}
	}

	/**
	 * add user
	 * @author qyg
	 */

	public function add(){
		if(IS_GET){
	        if(session(C('ADMIN_AUTH_KEY')) || cookie(C('ADMIN_AUTH_KEY'))){
	            $this->group = M('AuthGroup')->where(array('is_admin'=>1))->select();
	        }else{
	        	$gid = get_gid();
	        	$this->group = M('AuthGroup')->where(array('is_admin'=>1,'id'=>$gid))->select();
	        }
			$this->display();
		}

		if(IS_POST){
			$result = UserAuth::register(I('post.','','trim'),true,0,I('post.gid','','intval'));
			if($result){
				$this->success('添加用户成功');
			}else{
				$this->error('添加用户失败');
			}
		}
	}
	
	/**
	 * 删除企业
	 * @author qyg
	 */
	 
	public function del(){
		$id = I('get.id',0,'intval');
		if( $id == 0 ) $this->error('参数错误');
		if( M('Company')->delete($id) ){
			$result = M('Member')->where(array('cid'=>$id))->delete();
			if( $result ){
				$this->success('删除成功');
			}else{
				$this->error('删除失败');
			}
		}else{
			$this->error('删除失败');
		}
	}
}