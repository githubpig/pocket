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
<link rel="stylesheet" type="text/css" href="${basePath}/css/user.css"/>
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
	<%@include file="nav.jsp"%>
	<!-- <div class="clist_banner wbox12 relative"> -->
	<!---user top s---->
	<div class="user-top">
	
		<div class="userinfo">
	    
	    	<a href="" class="portrait" style="margin-top:10px;"><em>编辑头像</em><img src="${basePath}/images/user-portrait.jpg"></a>
	        <div class="minfo" style="margin-top:30px;">
	        	<div class="it"><%-- <dl>ID：</dl><span class="mr1">${session_user.id}</span> --%> <dl>用户名：</dl><span>${session_user.nick}</span></div>
	            <div class="it">
	            	<span><dl>绑定手机号：</dl>${session_user.phone}</span>
	            	<span><dl>QQ：</dl>${session_user.qq}</span>
	            	<span><dl>微信：</dl>${session_user.wx}</span>
	            	<span><dl>语言：</dl>${session_user.language}</span>
	            	<span><dl>等级：</dl>${session_user.level}</span>
	              <!--   <a class="ml1" title="手机"><i class="icon-0566"></i></a>
	                <a class="ml1" title="QQ"><i class="icon-0069"></i></a>
	                <a class="ml1" title="微信"><i class="icon-0061"></i></a>
	                <a class="ml1" title="淘宝"><i class="icon-0064"></i></a> -->
	                <a href="user_account.html" class="ml1" title="设置"><i class="icon-0421"></i></a>
	            </div>
	        </div>
	        
	        <div class="capital">
	        	<dl>我的总资产:</dl><em>${session_user_account.totalmoney == null?"0":session_user_account.totalmoney}</em>
	        </div>
	        <!-- <div class="capital2">
	        	<a href="" class="ti">提现</a>
	        </div> -->
	        
	    </div>
	    
	    <div class="nav">
	    	<a href="${basePath}/userproject?id=${session_user.id}" class="l"><i class="icon-0101"></i><span>我的项目</span></a>
	        <a href="javascript:void(0);" class="l"><i class="icon-0423"></i><span style="background-color: #555;">账户设置</span></a>
	        <a href="${basePath}/logout" class="r"><i class="icon-0735"></i><span>退出</span></a>
	    </div>
	</div>
	<!---user top e---->
	
	
	<div class="u-main">
<div class="zsdata">
	<h1>${session_user.phone}账户信息</h1>
    <div class="text"><span>总金额</span><em style="color:#666">${session_user_account.totalmoney == null?"0":session_user_account.totalmoney}</em></div>
    <div class="text"><span>待分红本金</span><em>${session_user_account.waitrate == null?"0":session_user_account.waitrate}</em></div>
    <div class="text"><span>待还本金</span><em>${session_user_account.principal == null?"0":session_user_account.principal}</em></div>
    <div class="text"><span>冻结资金</span><em>${session_user_account.frozen == null?"0":session_user_account.frozen}</em></div>
    <a href="javasript:void(0);" class="but">充值账户</a>
    <a href="javasript:void(0);" class="but">提现</a>
</div>
	
	
	</div>

	
		
	<div class="bxb-list-page bxb-wbox12 bxb-p30-bottom">
		
		
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
</body>
</html>