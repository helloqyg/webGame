<?php

/**
 * backstage manager page
 * @author    qyg
 * @version   0.1
 * @copyright Copyright (c) 2015 http://www.widuu.com
 * @date      2015/07/27
 */

namespace Manager\Controller;

class IndexController extends MainController {

    public function index(){

    	$email = \Sendcloud\Stats::get_stats(1,1);
    	$baifen = M('Order')->where(array('type'=>1))->count()/M('Order')->count();
    	$this->baifen = $baifen*100;
    	$this->email = $email['info']['deliveredNum'];
    	$this->user = M('Company')->count();
    	$this->total = M('Order')->where('status=2')->Sum('price');
    	$this->display();
    }

}
