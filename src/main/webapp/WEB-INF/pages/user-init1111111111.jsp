<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit"/>
<title></title>
<script src="${basePath}/statics/dmx/js/jquery-1.11.3.js"></script>
<script src="${basePath}/statics/js/jquery.min.js"></script>
<script src="${basePath}/statics/dmx/js/jquery.circliful.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="icon" href="/favicon.ico" type="image/x-icon" id="page_favionc">
<script src="${basePath}/statics/dmx/layer.js"></script>

</head>
<body>

<%@include file="nav.jsp"%>


<script type="text/javascript" src="${basePath}/statics/js/login.js" charset="UTF-8"></script>
<!--con-->
<div class="wbox12 bxb-log-box relative overhidden">
	
	<div class="w1200 bxb-log-con relative">
		
		<div class="bxb-log-form absolute z50">
			

			<div class="form-tit bxb-log-con">
				
				<h6>
					<span class="fr">还未注册？<a href="/user-register">马上注册</a></span>
					登录</br>
					<span style="color:#ff0000;" id="tip"></span>
					
				</h6>

			</div>
<input type="hidden" name="forward" id="forward" value="">
			<div class="form-box bxb-log-con">
				<ul>
					<li class="textAlign">
						<label for="bxb-log-phone" class="labels">手机号码：</label>
						
						<input type="text"  id="username" name="username"  autocomplete="off" value=""  placeholder="用户名/手机号"  class="bxb-input" maxlength="11">
					</li>

					<li class="textAlign password-li">
						<label for="bxb-log-pass" class="labels">登录密码：</label>
						
						  <input type="password" id="password" name="password"  class="bxb-input" placeholder="密码">
						<div class="eyes absolute bxb-tran"></div>
					</li>
					

 <label style="display:inline; float:left;" class="basic_label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
              <input type="checkbox" name="cookietime" value="2592000" id="cookietime"> 记住用户名</label>

			 
					<li class="leftMargin">
						
						<input id="loginBt" name="登录" value="登 录" onclick="loginSubmit();" type="button" class="bxb-log-submit bxb-tran">
						<div class="agreement">




							<p class="forget bxb-text-center">
								忘记密码?点击<a href="/user-forgetpassword" class="bxb-focus">找回密码</a>
							</p>
						</div>
					</li>
				</ul>
			</div>

			
		</div>
		

		<div class="bxb-log-pic absolute z20">
			
			<div class="bxb-log-txt bxb-color-fff">
				<h6 style="color:#fff;">客户端</h6>
				<p style="color:#fff;">提供专业、稳健、便捷、方便的投融资信息居间服务</p>
			</div>

			<div class="bxb-log-ewm clearfix mt50">
				<div class="app-ban-link fl bxb-text-center">
					<a  class="bxb-tran android">
						<img src="${basePath}/css/btn_anr.png">
						Android版下载
					</a>

					<a  class="mt30 bxb-tran iphone">
						<img src="${basePath}/css/btn_ios.png">
						iPhone版下载
					</a>
				</div>

				<div class="app-ban-img fl">
					<img src="${basePath}/css/ewm.png">
				</div>
			</div>

		</div>
	
		<div class="bxb-log-element absolute z10">
			<img src="${basePath}/css/bxb-log-pic.png">
		</div>


	</div>

</div>






</div>
<div class="cSlideBox fix">
	<ul>
		<li class="app">
			<div class="h_pic"><a ><i>下载APP</i></a></div>
			<div class="l_pic"><a ><i>下载APP</i></a></div>
			<div class="con absolute hidden" >
				<div class="bg absolute z5">
					<div class="bg_btn absolute"></div>
				</div>

				<div class="txt relative z10" >
					<h6>APP下载</h6>
					<div class="pic clearfix" >
						<div class="pic_left pic_con" >
							<img src="${basePath}/css/ewm.png"  alt="APP下载">
						</div>
						
					</div>
				</div>
			</div>
		</li>

		<!--li class="wx">
			<div class="h_pic"><i>关注我们</i></div>
			<div class="l_pic"><i>关注我们</i></div>
			<div class="con absolute hidden">
				<div class="bg absolute z5">
					<div class="bg_btn absolute"></div>
				</div>

					<div class="txt relative z10" >
					<h6>关注我们</h6>
					<div class="pic clearfix" >
						<div class="pic_left pic_con" >
							<img src="${basePath}/css/wx.png"  alt="APP下载">
						</div>
					</div>
				</div>
			</div>
		</li-->

		<li class="qq">
			<div class="h_pic"><a target="_blank" href="https://url.cn/5TaWdQI?_type=wpa&amp;qidian=true"><i>在线客服</i></a></div>
			<div class="l_pic"><a target="_blank" href="https://url.cn/5TaWdQI?_type=wpa&amp;qidian=true"><i>在线客服</i></a></div>	
		</li>

			<li class="jsq" id="CalculBox">
			<div class="h_pic"><a href="list-14-1.html"><i>计算器</i></a></div>
			<div class="l_pic"><a href="list-14-1.html"><i>计算器</i></a></div>	
		</li>

		<li class="top"><a href="#top">
			<div class="h_pic"><i>返回顶部</i></div>
			<div class="l_pic"><i>返回顶部</i></div></a>
		</li>
	</ul>
</div>




<!--footer-->
<div class="cfoot_box wbox12">


	<div class="cfootTxt_box wbox12 pt30">
		<div class="cfootTxt_con w1200 clearfix">
			<div class="fl nav">
				<h6>关于我们</h6>
				<p class="clearfix">
<a href="/list-2-1.html">公司简介</a>
<a href="/list-33-1.html" >支付方式</a>
<a href="/list-69-1.html">公司资质</a>
<a href="/list-5-1.html" >联系我们</a>
<a href="/list-59-1.html" >新手指引</a>
<a href="/list-8-1.html" >安全保障</a>
<a href="/list-34-1.html" >会员等级</a>
<a href="/list-22-1.html" >网站公告</a>
				</p>
			</div>

			<div class="fl ewm clearfix">
				<div class="app_ewm fl relative clearfix">
					
					<div class="pic fl">
						<img src="${basePath}/css/ewm.png" alt="客户端下载">
					</div><br>苹果APP下载
					
				</div>

				<div class="app_ewm fr relative clearfix">
					
					<div class="pic fl">
						<img src="${basePath}/css/ewm.png" >
						<img src="${basePath}/css/ewm.png" class="hidden">
						
					</div><br>安卓APP下载
					
				</div>
			</div>
<div class="fr contact"><span>电话热线</span> <b>4006-715-901</b>
<p><span style="color:#ff0000;"><span style="font-size:16px;"><!--地址：--><span style="font-family: 微软雅黑;">工作时间：09:00-23:00</span></span></span></p>
</div>		
</div><br></div>

		<div class="footer_db  clearfix " ><br>
			<p>Copyright 2020 敏博投资 版权所有 All righs reserved</p>
			<p><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094041975.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094101696.png" style="width: 124px; height: 43px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094139661.png" style="width: 114px; height: 41px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094208287.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094707408.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094356268.png" style="width: 124px; height: 47px;" /><script type="text/javascript" src="${basePath}//js.users.51.la/20657809.js"></script> </p>
			<p style="display:none;"><span style="color: rgb(51, 51, 51); font-family: Helvetica, PingFangSC-Regular, &quot;Microsoft YaHei&quot;, &quot;\\534E文细黑&quot;, &quot;\\5FAE软雅黑&quot;, Arial, STXihei, SimSun; font-size: 14px; background-color: rgb(244, 244, 244);">&lt;script type=&quot;text/javascript&quot; src=&quot;//js.users.51.la/20197909.js&quot;&gt;&lt;/script&gt;</span>  </p>
			<br>
		</div>
	</div>
</div>

</body>
</html>
