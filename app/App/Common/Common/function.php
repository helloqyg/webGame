<?php 

/**
 * 公共函数库
 * @author   	 widuu <admin@widuu.com>
 * @version       0.1
 * @copyright   Copyright (c) 2015 http://www.widuu.com
 * @date      	2015/07/27
 */

//---------------------------------------------------------------

/**
 * 生成密码种子
 * @param  integer 长度
 * @return string 密码种子
 * @author widuu <admin@widuu.com>
 */

function fetch_salt($length = 4)
{
	for ($i = 0; $i < $length; $i++)
	{
		$salt .= chr(rand(97, 122));
	}

	return $salt;
}

/**
 * 根据 salt 混淆密码
 * @param  string passowrd 密码
 * @param  string salt     混淆密码
 * @author widuu <admin@widuu.com>
 * @return string 密码
 */

function compile_password($password, $salt)
{
	$password = md5(md5($password) . $salt);

	return $password;
}

/**
 * 检查是否邮箱
 * @param  string email
 * @return bool
 * @author widuu <admin@widuu.com>
 */

function check_email($email){   
	return (ereg("^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+",$email));   
} 

/**
 * 检查登录
 * @param  bool 后台标识
 * @return bool
 * @author widuu <admin@widuu.com>
 */  

function check_login($admin=false){
	$uid_alise = $admin ? C('ADMIN_AUTH') : C('USER_AUTH');
	$uid = cookie($uid_alise) || session($uid_alise);
	return $uid ? $uid : false;
}

/**
 * 获取用户id
 * @return string uid
 * @author widuu <admin@widuu.com>
 */  

function get_uid($admin=false){
	$uid_alise = $admin ? C('ADMIN_AUTH') : C('USER_AUTH');
	if(session($uid_alise)) return session($uid_alise);
	if(cookie($uid_alise))  return cookie($uid_alise);
}

/**
 * 获取用户组
 * @return string gid
 * @author widuu <admin@widuu.com>
 */  

function get_gid(){
	$gid_alise = 'gid';
	if(session($gid_alise)) return session($gid_alise);
	if(cookie($gid_alise))  return cookie($gid_alise);
}

/**
 * 设置企业id
 * @author widuu <admin@widuu.com>
 */

function set_cid($id){
	cookie('company_id',$id);
	session('company_id',$id);
}

/**
 * 获取企业id
 * @return company_id
 * @author widuu <admin@widuu.com>
 */

function get_cid(){
	if(session('company_id')) return session('company_id');
	if(cookie('company_id'))  return cookie('company_id');
}

/**
 * 通过user id 获取企业id
 * @return company_id
 * @author widuu <admin@widuu.com>
 */

function get_uid_cid($uid){
	return M('Member')->getFieldById($uid,'cid');
}

/**
 * 展位类型
 * @author widuu <admin@widuu.com>
 */

function get_chart_type($id){
	$type = array(
		 1 => '整机',
		 2 => '部件',
		 3 => '其它'
		);
	return $type[$id];
}

/**
 * 企业名称
 * @param  int   user id
 * @author widuu <admin@widuu.com>
 */

function get_company($uid){
	$company_name = S('COMPANY_NAME'.$uid);
	if( $company_name == NULL ){
		$cid = M('Member')->getFieldById($uid,'cid');
		$company_name = M('Company')->getFieldById($cid,'company_name');
		S('COMPANY_NAME'.$uid,$company_name);
	}
	return $company_name;
}

/**
 * 配置信息
 * @param  配置参数名称
 * @author widuu <admin@widuu.com>
 */

function get_config($name =''){
	S('WEBSIET_CONFIG',null);
	$config = S('WEBSIET_CONFIG');
	if( $config == NULL ){
		$model_config = M('Config')->field('name,value')->select();
		foreach ($model_config as  $value) {
			$config[$value['name']] = $value['value'];
		}
		S('WEBSIET_CONFIG',$config);
	}
	if(!empty($name)) return $config[$name];
	return $config;
}

/**
 * 获取展馆名称
 * @param int booth id
 * @author widuu <admin@widuu.com>
 */

function get_hall_name($bid){
	$booth_hall = S('BOOTH_HALL'.$bid);
	if( $booth_hall == NULL ){
		$hid = M('Booth')->getFieldById($bid,'hid');
		$booth_hall = M('Hall')->getFieldById($hid,'hall_num');
		S('BOOTH_HALL'.$bid,$booth_hall);
	}
	return $booth_hall;

}

/**
 * 获取用户登录状态来显示不同的页面
 *
 * @author widuu <admin@widuu.com>
 */

function check_user_login(){
	$uid = cookie('uid') ? cookie('uid') : session('uid');
	$info = '';
	if( !$uid ){
		$info = "<a href='".U('/user/reg',array('step'=>1))."' class='head_lr'>注册</a> &nbsp;&nbsp;";
		$info  .= "<a href='".U('/user/login')."' class='head_lr'>登录</a>";
	}else{
		$username = M('Member')->getFieldById($uid,'username');
		$info = "<div id='userinfo'><span id='info'>欢迎您回来，</span><a href='".U('/user/index')."'/>{$username}</a></div>";
	}

	return $info;
}

/**
 * 验证用户密码
 * 
 * @author widuu <admin@widuu.com>
 */

function check_password($password){
	$uid = cookie('uid') ? cookie('uid') : session('uid');
	$userinfo = M('Member')->field('password,salt')->find($uid);
	if( compile_password($password,$userinfo['salt']) == $userinfo['password'] ){
		return true;
	}
	return false;
}

/**
 * 获取订单状态
 * @author widuu <admin@widuu.com>
 */

function get_order_status(){
	$map['uid'] = get_uid(false);
	$order_info = M('Order')->where($map)->find();
	if($order_info['status'] != 2){
		return false;
	}
	if( $order_info['type'] == 2 ){
		$result = M('Pay')->field('status')->where($map)->find();
		if(!$result) return false;
	}
	return true;
}

/**
 * 字符截取 支持UTF8
 * @param $string
 * @param $length
 * @param $dot
 * @author widuu <admin@widuu.com>
 */

function str_cut($string, $length, $dot = '...') {
	$strlen = strlen($string);
	if($strlen <= $length) return $string;
	$string = str_replace(array(' ','&nbsp;', '&amp;', '&quot;', '&#039;', '&ldquo;', '&rdquo;', '&mdash;', '&lt;', '&gt;', '&middot;', '&hellip;'), array('∵',' ', '&', '"', "'", '“', '”', '—', '<', '>', '·', '…'), $string);
	$strcut = '';
	$length = intval($length-strlen($dot)-$length/3);
	$n = $tn = $noc = 0;
	while($n < strlen($string)) {
		$t = ord($string[$n]);
		if($t == 9 || $t == 10 || (32 <= $t && $t <= 126)) {
			$tn = 1; $n++; $noc++;
		} elseif(194 <= $t && $t <= 223) {
			$tn = 2; $n += 2; $noc += 2;
		} elseif(224 <= $t && $t <= 239) {
			$tn = 3; $n += 3; $noc += 2;
		} elseif(240 <= $t && $t <= 247) {
			$tn = 4; $n += 4; $noc += 2;
		} elseif(248 <= $t && $t <= 251) {
			$tn = 5; $n += 5; $noc += 2;
		} elseif($t == 252 || $t == 253) {
			$tn = 6; $n += 6; $noc += 2;
		} else {
			$n++;
		}
		if($noc >= $length) {
			break;
		}
	}
	if($noc > $length) {
		$n -= $tn;
	}
	$strcut = substr($string, 0, $n);
	$strcut = str_replace(array('∵', '&', '"', "'", '“', '”', '—', '<', '>', '·', '…'), array(' ', '&amp;', '&quot;', '&#039;', '&ldquo;', '&rdquo;', '&mdash;', '&lt;', '&gt;', '&middot;', '&hellip;'), $strcut);
	return $strcut.$dot;
}

/**
* 将字符串转换为数组
*
* @param	string	$data	字符串
* @return	array	返回数组格式，如果，data为空，则返回空数组
*/

function string2array($data) {
	if($data == '') return array();
	$data = stripslashes($data);
	@eval("\$array = $data;");
	return $array;
}

/**
* 将数组转换为字符串
*
* @param	array	$data		数组
* @param	bool	$isformdata	如果为0，则不使用new_stripslashes处理，可选参数，默认为1
* @return	string	返回字符串，如果，data为空，则返回空
*/

function array2string($data, $isformdata = 1) {
	if($data == '') return '';
	if($isformdata) $data = new_stripslashes($data);
	return addslashes(var_export($data, TRUE));
}

/**
 * 返回经stripslashes处理过的字符串或数组
 * @param $string 需要处理的字符串或数组
 * @return mixed
 */

function new_stripslashes($string) {
	if(!is_array($string)) return stripslashes($string);
	foreach($string as $key => $val) $string[$key] = new_stripslashes($val);
	return $string;
}

