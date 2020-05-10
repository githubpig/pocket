<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="taglib.jsp"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit"/>
<title>收益试算 - 敏博投资-专业的互联网金融平台</title>
<script src="${basePath}/statics/dmx/js/jquery-1.11.3.js"></script>
<script src="${basePath}/statics/js/jquery.min.js"></script>
<script src="${basePath}/statics/dmx/js/jquery.circliful.min.js"></script>
<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css">
<link rel="icon" href="/favicon.ico" type="image/x-icon" id="page_favionc">
<script src="${basePath}/statics/dmx/layer.js"></script>

</head>
<body>

<%@include file="nav.jsp"%>	

<link rel="stylesheet" type="text/css" href="${basePath}/statics/css/lixi.css">

<script type="text/javascript" src="${basePath}/statics/js/jquery.js"></script>

<script type="text/javascript" src="${basePath}/statics/js/public.js"></script>

<script type="text/javascript" src="${basePath}/statics/js/jquery.min.js"></script>

<script type="text/javascript" src="${basePath}/statics/js/member_common.js"></script>

<script type="text/javascript" src="${basePath}/statics/js/formvalidator.js" charset="UTF-8"></script>

<script type="text/javascript" src="${basePath}/statics/js/formvalidatorregex.js" charset="UTF-8"></script>

<script type="text/javascript">

$(function(){

	$.formValidator.initConfig({autotip:true,formid:"myform",onerror:function(msg){}});

	$("#jiner").formValidator({onshow:"请输入理财金额",onfocus:"理财金额不能为空"}).inputValidator({min:1,max:99999999,onerror:"理财金额不能为空"}).regexValidator({regexp:"^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$",onerror:"理财金额必须为整数或小数(保留两位小数)"});

	$("#lilu").formValidator({onshow:"请输入日化利益",onfocus:"日化利益不能为空"}).inputValidator({min:1,max:99999999,onerror:"日化利益不能为空"}).regexValidator({regexp:"^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$",onerror:"日化利益必须为整数或小数(保留两位小数)"});

   $("#qixian").formValidator({onshow:"请输入理财期限",onfocus:"理财期限不能为空"}).inputValidator({min:1,max:99999999,onerror:"理财期限不能为空"}).regexValidator({regexp:"^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$",onerror:"理财期限必须为整数"});

})

</script>  

<style>

.onShow,.onFocus,.onError,.onLoad,.onTime{color:#F00;margin-bottom:10px;_margin-bottom:5px;}

.onCorrect{margin-bottom:10px;_margin-top:5px;}

</style>

<div>

 <div class="container">

        <div class="content yield">

            <div class="title">收益计算器</div>

            <!-- 计算器表单 -->

            <form action="/shouyi.html" method="post" name="myform"  id="myform"  class="login reg yieldlist clearfix" >

                <dl class="clearfix">

                    <dt>理财金额</dt>

                    <dd>

                        <span class="txt_ico gold"></span>

                        <input  class="highlight" type="text" name="jiner"  id="jiner" value=""/>

                    </dd>

                    <dt>日化利益</dt>

                    <dd>

                        <span class="txt_ico rate"></span>

                        <input id="lilu" class="highlight" type="text" name="lilu"  value=""/>

                    </dd>

                    <dt>理财期限</dt>

                    <dd>

                        <span class="txt_ico limit"></span>

                        <input id="qixian" class="highlight" type="text" name="qixian"  value=""/>

                    </dd>

                     <dt>还款方式</dt>

                    <dd>

                        <select name="hkfs" id="hkfs" class="highlight">

                            <option value="1" >每日返息，到期还本</option>

                            <option value="2" >每周返息，到期还本</option>

                            <option value="3" >每月返息，到期还本</option>

                            <option value="4" >一次性还本付息</option>

                            <option value="5" >每日复利，保本保息</option>

                        </select>

                    </dd>

                </dl>

                <p id="msg" class="msg"></p>

                <p class="sub clearfix">

                    <input class="mit" name="dosubmit" id="dosubmit" type="submit" value="计算" /><input type="reset" value="重置" />

                </p>

            </form>

          
            <div class="income_t">

                <span>利息收益</span><strong>元</strong>

                <span>本息合计</span><strong>元</strong>

            </div>

            <table cellspacing="0" cellpadding="0">

                <thead>

                    <tr>

                        <td>期次</td>

                        <td>收益日期</td>

                        <td>还款本金(元)</td>

                        <td>利息收益(元)</td> 

                 </tr>

                </thead>

                <tbody id="trlist">

                    

                </tbody>

            </table>

            
        </div>

    </div>

</div>
<script>
$(".herder-ul li").eq(3).addClass("active");
		</script>
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