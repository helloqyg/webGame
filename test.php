<?php

$str ='<li>买家信用：
							198
							

<a href="//service.taobao.com/support/knowledge-847752.htm" target="_blank"><img src="//img.alicdn.com/newrank/b_red_5.gif" title="151－250个买家信用积分，请点击查看详情" border="0" align="absmiddle" class="rank" /></a>														<span><a target="_blank" href="//vip.taobao.com"><img border="0" align="absmiddle" class="rank" title="V5会员" src="//img.alicdn.com/tps/i3/T1GbuIXcNkXXXXXXXX-16-16.png"></a></span>
													</li>';
preg_match_all("/<li>买家信用\：(?P<xin_count>.*)\<a (.*)\>\<img src\=\"(?P<xin>.*)\"(.*)\>\<\/a\>(.*)\<img (.*) title=\"(?P<vip>.*)\"/isU",$str,$level);
var_dump($level);
