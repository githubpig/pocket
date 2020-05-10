<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true"%>
<%@include file="taglib.jsp"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit"/>
<title></title>
<script src="${basePath}/statics/dmx/js/jquery-1.11.3.js" tppabs="http://jsg1.5.hengjihr.com/statics/dmx/js/jquery-1.11.3.js"></script>
<script src="${basePath}/statics/js/jquery.min.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/jquery.min.js"></script>
<script src="${basePath}/statics/dmx/js/jquery.circliful.min.js" tppabs="http://jsg1.5.hengjihr.com/statics/dmx/js/jquery.circliful.min.js"></script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css" tppabs="http://jsg1.5.hengjihr.com/css/style.css">
<link rel="icon" href="/favicon.ico" type="image/x-icon" id="page_favionc">
<script src="${basePath}/statics/dmx/layer.js" tppabs="http://jsg1.5.hengjihr.com/statics/dmx/layer.js"></script>
<script type="text/javascript">
	var basePath = "${basePath}";
</script>
</head>
<body>
<%@include file="nav.jsp"%>	
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title> 会员管理中心</title>
<script type="text/javascript" src="${basePath}/statics/js/jquery.min.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/statics/js/formvalidator.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/formvalidator.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath}/statics/js/formvalidatorregex.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/formvalidatorregex.js" charset="UTF-8"></script>
<script type="text/javascript" src="${basePath}/statics/js/dialog.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/dialog.js"></script>
<%-- <script type="text/javascript" src="${basePath}/statics/js/reg.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/reg.js"  charset="UTF-8"></script> --%>
<link href="${basePath}/statics/css/main2.css"  rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${basePath}/statics/images/skins/style.css">
</head>
<body>
<style>
.member_reg .basic_input {
    width: 258px; 
}
</style>
<div class="cle"></div> 
<div class="w1100 mr_b20">
  <div class="reg_bg border1 oh" style="background: #fff;">
    <h1>免费注册</h1>
    <div class="member_reg clear">
      <div class="reg_left fl">
     			 <form method="post" action="" id="myform">
                        <input type="hidden" name="siteid" value="1" />
                        <input type="hidden" name="terminal" value="1" />
						                                                        <input name="modelid" type="hidden" value="10"/>
                                                           			<div class="clear"></div>
                
     					                   	 <%-- <div  class="reg_item">
							<label class="basic_label"><span class="red">*</span> 验证码</label>
						<input type="text" id="code" name="code" size="14" placeholder="右边验证码数字"  class="basic_input w100" ><img id='code_img' onclick='this.src=this.src+"&"+Math.random()' src="${basePath}/api.php-op=checkcode&code_len=4&font_size=20&width=150&height=45&font_color=&background=.png" tppabs="http://jsg1.5.hengjihr.com/api.php?op=checkcode&code_len=4&font_size=20&width=150&height=45&font_color=&background=">						</div> --%>


                       <div class="reg_item">
							<label class="basic_label"><span class="red">*</span>手机号码</label>
								<input name="mobile"  id="mobile" label="手机号码" placeholder="请输入有效的手机号码"  maxlength="11" type="text" class="basic_input">
						</div>
						
						<%--  <div class="reg_item">
							<label class="basic_label"><span class="red">*</span>验证码</label>
                          <input type="text" name="mobile_verify" id="mobile_verify" value="" size="14"  placeholder="输入短信验证码" class="basic_input w100" style="float:left">
                          
                          <div>
                              
                          
                          
                            <div id="mobile_div" style="float:left" > <input  onclick="get_verify()" id="yuanzheng" class="hqyzm" type="button" value="获取手机验证码"></div>
                                <div id="mobile_send_div" style="display:none;"><button type="button" id="GetVerify" onclick="get_verify()" class="hqyzm" >重获短信验证码</button></div></div>
                      
                                  <script type="text/javascript" src="${basePath}/statics/js/reg2.js" tppabs="http://jsg1.5.hengjihr.com/statics/js/reg2.js"  charset="UTF-8"></script>
                      </div> --%>
                     <div class="clear"></div>
      
     				  <div class="reg_item">
							<label class="basic_label"><span class="red">*</span>登录密码</label>
							<input type="password" id="password" name="password"  placeholder="6~18位字符" class="basic_input"  maxlength="18" >
						</div> 
                       <div class="reg_item">
							<label class="basic_label"><span class="red">*</span>确认密码</label>
							<input type="password" id="pwdconfirm" name="pwdconfirm"  placeholder="两次密码输入必须一致" class="basic_input"  maxlength="18" >
						</div>
                        <div class="reg_item">
							<label class="basic_label">QQ：</label>
							<input type="text" id="qq" name="qq"  placeholder="请输入您的QQ" class="basic_input"  maxlength="18" >
						</div> 
						 <div class="reg_item">
							<label class="basic_label">推荐人</label>
								<input type="text" id="recommend" name="recommend" value="" size="36" class="basic_input" placeholder="无推荐人请留空" >      
						</div>
                   
                     <div class="cle"></div>     
                                                					
                     <div class="reg_item" style="display:none">
							<label>注册协议</label>
                      <input type="checkbox" name="protocol" class="inputCheckbox" id="protocol" value="" checked="checked"><span id="xyClick"><a href="javascript:void(0);" onclick="show_protocol();return false;" style="line-height:30px;" >点击阅读注册协议</a></span>
                      </div>
      
         <div class="reg_item" >
         	<p>
              <input type="submit" class="user_reg_sub" value="完成注册" name="dosubmit" id="dosubmitvv">
            </p> 
           
          </div>
         
          <div class="reg_item">
            <p>已有账号？<a href="user-login.htm" tppabs="http://jsg1.5.hengjihr.com/user-login" class="user_f_c2 pink">立即登录</a></p>
          </div>
        </form>
      </div>
       <div class="fr" style="height: 500px; margin-top: 60px;margin-right: 30px; text-align:left">
             <img src="${basePath}/statics/images/skins/regist_adv.jpg" tppabs="http://jsg1.5.hengjihr.com/statics/images/skins/regist_adv.jpg">
        </div>
    </div>
  </div>
</div>


<div class="cle"></div>  
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
							<img src="${basePath}/css/ewm.png" tppabs="http://jsg1.5.hengjihr.com/css/ewm.png"  alt="APP下载">
						</div>
						
					</div>
				</div>
			</div>
		</li>

		<li class="qq">
			<div class="h_pic"><a target="_blank" href="javascript:if(confirm('https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1'" tppabs="https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1"><i>在线客服</i></a></div>
			<div class="l_pic"><a target="_blank" href="javascript:if(confirm('https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ������ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1'" tppabs="https://tb.53kf.com/code/client/b073951f364c8714ee1a31b973a4a9974/1"><i>在线客服</i></a></div>	
		</li>

			<li class="jsq" id="CalculBox">
			<div class="h_pic"><a href="list-14-1.html" tppabs="http://jsg1.5.hengjihr.com/list-14-1.html"><i>计算器</i></a></div>
			<div class="l_pic"><a href="list-14-1.html" tppabs="http://jsg1.5.hengjihr.com/list-14-1.html"><i>计算器</i></a></div>	
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
<a href="list-2-1.html" tppabs="http://jsg1.5.hengjihr.com/list-2-1.html">公司简介</a>
<a href="list-33-1.html" tppabs="http://jsg1.5.hengjihr.com/list-33-1.html" >支付方式</a>
<a href="list-69-1.html" tppabs="http://jsg1.5.hengjihr.com/list-69-1.html">公司资质</a>
<a href="list-5-1.html" tppabs="http://jsg1.5.hengjihr.com/list-5-1.html" >联系我们</a>
<a href="list-59-1.html" tppabs="http://jsg1.5.hengjihr.com/list-59-1.html" >新手指引</a>
<a href="list-8-1.html" tppabs="http://jsg1.5.hengjihr.com/list-8-1.html" >安全保障</a>
<a href="list-34-1.html" tppabs="http://jsg1.5.hengjihr.com/list-34-1.html" >会员等级</a>
<a href="list-22-1.html" tppabs="http://jsg1.5.hengjihr.com/list-22-1.html" >网站公告</a>
				</p>
			</div>

			<div class="fl ewm clearfix">
				<div class="app_ewm fl relative clearfix">
					
					<div class="pic fl">
						<img src="${basePath}/css/ewm.png" tppabs="http://jsg1.5.hengjihr.com/css/ewm.png" alt="客户端下载">
					</div><br>苹果APP下载
					
				</div>

				<div class="app_ewm fr relative clearfix">
					
					<div class="pic fl">
						<img src="${basePath}/css/ewm.png" tppabs="http://jsg1.5.hengjihr.com/css/ewm.png" >
						<img src="${basePath}/css/ewm.png" tppabs="http://jsg1.5.hengjihr.com/css/ewm.png" class="hidden">
						
					</div><br>安卓APP下载
					
				</div>
			</div>
<div class="fr contact"><span>电话热线</span> <b>4006-715-901</b>
<p><span style="color:#ff0000;"><span style="font-size:16px;"><!--地址：--><span style="font-family: 微软雅黑;">工作时间：09:00-23:00</span></span></span></p>
</div>		
</div><br></div>

		<div class="footer_db  clearfix " ><br>
			<p>Copyright 2020 敏博投资 版权所有 All righs reserved</p>
			<p><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094041975.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094041975.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094101696.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094101696.png" style="width: 124px; height: 43px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094139661.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094139661.png" style="width: 114px; height: 41px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094208287.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094208287.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094707408.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094707408.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094356268.png" tppabs="http://jsg1.5.hengjihr.com/uploadfile/2020/0225/20200225094356268.png" style="width: 124px; height: 47px;" /><script type="text/javascript" src="${basePath}/../js.users.51.la/20657809.js" tppabs="http://js.users.51.la/20657809.js"></script> </p>
			<p style="display:none;"><span style="color: rgb(51, 51, 51); font-family: Helvetica, PingFangSC-Regular, &quot;Microsoft YaHei&quot;, &quot;\\534E文细黑&quot;, &quot;\\5FAE软雅黑&quot;, Arial, STXihei, SimSun; font-size: 14px; background-color: rgb(244, 244, 244);">&lt;script type=&quot;text/javascript&quot; src=&quot;//js.users.51.la/20197909.js&quot;&gt;&lt;/script&gt;</span>  </p>
			<br>
		</div>
	</div>
</div>
<script type="text/javascript">
$("#dosubmitvv").on("click",function(){
	//
	//mobile  password pwdconfirm qq recommend
	var phone = $("#mobile").val();
	var password = $("#password").val();
	var pwdconfirm = $("#pwdconfirm").val();
	var mark = $("#recommend").val();
	var qq = $("#qq").val();
	
	if(password !=""&&password == pwdconfirm){
		var user = {"phone":phone,"password":password,"mark":mark,"qq":qq};
		$.ajax({
			type : "post",
			data : user,
			url : basePath+"/reg",
			success : function(data){
				debugger;
				var dataObj = $.parseJSON(data);
				if(dataObj.code == -1){
					$("#password").val("");
					$("#pwdconfirm").val("");
					layer.msg("用户名或密码错误！！！");
				}else if(dataObj.code == 0){
					//if(window.localStorage)localStorage.setItem("phone", phone);
					$("#phone").val("");
					$("#password").val("");
					$("#pwdconfirm").val("");
					window.location.href= basePath+"/user-login";
				}else{
					layer.msg("请联系管理员");
				}
			}
		});
	}else{
		layer.msg("确认密码与设置密码不一致");	
	}
})
</script>
</body>
</html>
