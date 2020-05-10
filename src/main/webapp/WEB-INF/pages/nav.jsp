<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ctop_box wbox12 relative z500">
	<div class="ctop_con w1200 clearfix">
		<div class="ctop_left fl">
			<a class="contact"><i class="bg20 phone"></i>全国热线电话：4006-715-901</a>
			<!--a target="_blank" href=""><i class="bg20 group"></i>QQ：</a-->
		</div>
		<c:if test="${session_user_username == null }">
			<div class="ctop_right fr clearfix">
				<a href="user-login"
					>【登录】</a>
				<a href="user-register.htm"
					class="border border-r">【注册】</a>
			</div>
		</c:if>
		<c:if test="${session_user_username != null }">
			<div class="ctop_right fr clearfix">
			<a href="javascript:void(0);"
				>【${session_user_username}】</a>
			<a href="${basePath}/logout"
				class="border border-r">【退出】</a>
			</div>
		</c:if>
		
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
						<li id="menu1"><a href="index"  >网站首页</a></li>
						<li id="menu2"><a href="list"  >我要理财</a></li>
						<li id="menu4"><a  href="content" >安全保障</a></li>
						<li id="menu5"><a href="money" >收益计算</a></li>
						<!-- <li id="menu6"><a  href="help" >新手帮助</a></li> -->
						<c:if test="${session_user_username == null }">
							<li id="menu7"><a  href="user-login" >我的账号</a></li>
						</c:if>
						<c:if test="${session_user_username != null }">
							<li id="menu7"><a  href="${basePath}/userinfo" >个人中心</a></li>
						</c:if>
					</ul>
			</div>
		</div>
	</div>