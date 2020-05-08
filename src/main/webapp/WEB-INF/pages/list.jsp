<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="taglib.jsp"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit" />
<title>11长期专区 - </title>
<script src="${basePath}/statics/dmx/js/jquery-1.11.3.js"></script>
<script src="${basePath}/statics/js/jquery.min.js"
	></script>
<script src="${basePath}/statics/dmx/js/jquery.circliful.min.js"
	></script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style-2.0.css"/>
<link rel="stylesheet" type="text/css" href="${basePath}/sg/css/tz-page.css">
<link rel="icon" href="/favicon.ico" type="image/x-icon"
	id="page_favionc">
<script src="${basePath}/statics/dmx/layer.js"></script>
<script type="text/javascript" src="${basePath}/sg/zyw_admin.js"></script>
<script type="text/javascript">
	var basePath = "${basePath}";
</script>
<script type="text/javascript" src="${basePath}/sg/tz_page.js"></script>

</head>
<body>
	<div class="ctop_box wbox12 relative z500">
		<div class="ctop_con w1200 clearfix">
			<div class="ctop_left fl">
				<a class="contact"><i class="bg20 phone"></i>全国热线电话：4006-715-901</a>
				<!--a target="_blank" href=""><i class="bg20 group"></i>QQ：</a-->
			</div>
			<div class="ctop_right fr clearfix">
				<a href="user-login.htm"
					>【签到】</a>
				<a href="user-login.htm"
					>【登录】</a>
				<a href="user-register.htm"
					class="border border-r">【注册】</a>
			</div>
		</div>
	</div>

	<!--logo and nav-->
	<div class="wbox12 ctop_nav relative z20">
		<div class="w1200 ctop_navCon clearfix relative">

			<div class="logo fl">
				<a href="index.php.htm"
					><img
					src="${basePath}/css/logo.png" 
					alt=""></a>
			</div>
			<div class="nav fr relative">

				<ul class="clearfix relative z50">
						<%@include file="nav.jsp"%>
					</ul>
			</div>
		</div>
	</div>
	<div class="clist_banner wbox12 relative"></div>
	<div class="clist_navbox wbox12">

		<div class="clist_nav w1200">
			<ul>
				<li>
				<span class="tit">项目类型：</span> 
				<a href="${basePath}/list" class="on">全部</a>
				<a href="${basePath}/list191">新手专区</a> 
				<a href="${basePath}/list531">稳健项目</a>
				<a href="${basePath}/list541" >长期专区</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="bxb-list-page bxb-wbox12 bxb-p30-bottom">
		<div class="bxb-list-con bxb-w1200 bxb-margin-center">
			<div
				class="bxb-list-box bxb-bg-white bxb-m10-top bxb-p10-top bxb-p30-bottom">
				<div id="projectList"
					data-itemcount="${count}" data-model="contentlist"></div>
				<div class="ym_box w1200  m30">
					<div id="page" ></div>
				</div>	
			</div>
		</div>
		
	</div>

	<div class="cSlideBox fix">
		<ul>
			<li class="app">
				<div class="h_pic">
					<a><i>下载APP</i></a>
				</div>
				<div class="l_pic">
					<a><i>下载APP</i></a>
				</div>
				<div class="con absolute hidden">
					<div class="bg absolute z5">
						<div class="bg_btn absolute"></div>
					</div>

					<div class="txt relative z10">
						<h6>APP下载</h6>
						<div class="pic clearfix">
							<div class="pic_left pic_con">
								<img src="${basePath}/css/ewm.png">
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="qq">
				<div class="h_pic">
					<a target="_blank"
						href="javascript:if(confirm('https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1'"
						><i>在线客服</i></a>
				</div>
				<div class="l_pic">
					<a target="_blank"
						href="javascript:if(confirm('https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1'"
						><i>在线客服</i></a>
				</div>
			</li>

			<li class="jsq" id="CalculBox">
				<div class="h_pic">
					<a href="list-14-1.html"
						><i>计算器</i></a>
				</div>
				<div class="l_pic">
					<a href="list-14-1.html"
						><i>计算器</i></a>
				</div>
			</li>

			<li class="top"><a href="#top">
					<div class="h_pic">
						<i>返回顶部</i>
					</div>
					<div class="l_pic">
						<i>返回顶部</i>
					</div>
			</a></li>
		</ul>
	</div>




	<!--footer-->
	<div class="cfoot_box wbox12">
		<div class="cfootTxt_box wbox12 pt30">
			<div class="cfootTxt_con w1200 clearfix">
				<div class="fl nav">
					<h6>关于我们</h6>
					<p class="clearfix">
						<a href="list-2-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-2-1.html">公司简介</a> <a
							href="list-33-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-33-1.html">支付方式</a> <a
							href="list-69-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-69-1.html">公司资质</a> <a
							href="list-5-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-5-1.html">联系我们</a> <a
							href="list-59-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-59-1.html">新手指引</a> <a
							href="list-8-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-8-1.html">安全保障</a> <a
							href="list-34-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-34-1.html">会员等级</a> <a
							href="list-22-1.html"
							tppabs="http://jsg1.5.hengjihr.com/list-22-1.html">网站公告</a>
					</p>
				</div>

				<div class="fl ewm clearfix">
					<div class="app_ewm fl relative clearfix">

						<div class="pic fl">
							<img src="${basePath}/css/ewm.png"
								tppabs="http://jsg1.5.hengjihr.com/css/ewm.png" alt="客户端下载">
						</div>
						<br>苹果APP下载

					</div>

					<div class="app_ewm fr relative clearfix">

						<div class="pic fl">
							<img src="${basePath}/css/ewm.png"
								tppabs="http://jsg1.5.hengjihr.com/css/ewm.png"> <img
								src="${basePath}/css/ewm.png"
								tppabs="http://jsg1.5.hengjihr.com/css/ewm.png" class="hidden">

						</div>
						<br>安卓APP下载

					</div>
				</div>
				<div class="fr contact">
					<span>电话热线</span> <b>4006-715-901</b>
					<p>
						<span style="color: #ff0000;"><span
							style="font-size: 16px;">
								<!--地址：-->
								<span style="font-family: 微软雅黑;">工作时间：09:00-23:00</span>
						</span></span>
					</p>
				</div>
			</div>
			<br>
		</div>

		<div class="footer_db  clearfix ">
			<br>
			<p>Copyright 2020 敏博投资 版权所有 All righs reserved</p>
			<p>
				<img alt="" src="${basePath}/uploadfile/2020/0225/20200225094041975.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094041975.png"
					style="width: 124px; height: 47px;" /><img alt=""
					src="${basePath}/uploadfile/2020/0225/20200225094101696.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094101696.png"
					style="width: 124px; height: 43px;" /><img alt=""
					src="uploadfile/2020/0225/20200225094139661.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094139661.png"
					style="width: 114px; height: 41px;" /><img alt=""
					src="${basePath}/uploadfile/2020/0225/20200225094208287.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094208287.png"
					style="width: 124px; height: 47px;" /><img alt=""
					src="${basePath}/uploadfile/2020/0225/20200225094707408.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094707408.png"
					style="width: 124px; height: 47px;" /><img alt=""
					src="${basePath}/uploadfile/2020/0225/20200225094356268.png"
					tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094356268.png"
					style="width: 124px; height: 47px;" />
			</p>
			<p style="display: none;">
				<span
					style="color: rgb(51, 51, 51); font-family: Helvetica, PingFangSC-Regular,&amp; quot; Microsoft YaHei&amp;quot; , &amp; quot; \\534E文细黑 &amp;quot; , &amp; quot; \\5FAE软雅黑 &amp;quot; , Arial , STXihei, SimSun; font-size: 14px; background-color: rgb(244, 244, 244);">&lt;script
					type=&quot;text/javascript&quot;
					src=&quot;//js.users.51.la/20197909.js&quot;&gt;&lt;/script&gt;</span>
			</p>
			<br>
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			//var itemcount =
			//console.log(itemcount);
			//分页
			//回调函数  ： 把函数当成参数，传进去,用到时再回头调用
			zywPage.loadData(zywPage.pageNo,zywPage.pageSize,function(itemcount){
				zywPage.init(itemcount);
			});
		});
	</script>
</body>
</html>