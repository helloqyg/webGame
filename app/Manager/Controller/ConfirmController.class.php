<?php

/**
 * backstage manager page
 * @author    qyg
 * @version   0.1
 * @copyright Copyright (c) 2015 http://www.widuu.com
 * @date      2015/07/27
 */

namespace Manager\Controller;

class ConfirmController extends MainController {

	/**
	 * repassword 
	 * @author qyg
	 */

	public function index(){

	}

	/**
	 * forgot page
	 * @author qyg
	 */

	public function forgot(){
		if(IS_GET){
			$this->display();
		}
	}

}
