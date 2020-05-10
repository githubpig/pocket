<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="taglib.jsp"%>
<!DOCTYPE html>
<html>

	<head lang="en">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="renderer" content="webkit" />
		<title>脉家理财</title>
		<script src="${basePath}/statics/dmx/js/jquery-1.11.3.js"></script>
		<script src="${basePath}/statics/js/jquery.min.js"></script>
		<script src="${basePath}/statics/dmx/js/jquery.circliful.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${basePath}/css/style.css">
		<link rel="icon" href="/favicon.ico" type="image/x-icon" id="page_favionc">
		<script src="${basePath}/statics/dmx/layer.js"></script>

	</head>

	<body>
		<%@include file="nav.jsp"%>

		<link rel="stylesheet" href="./statics/dmx/css/index.min.css" />
		<link rel="stylesheet" href="./css/tf.css" />

		<div class="bx_wrap" id="page">

			<div class="bx-main pb30">

				<style>
					.login {
						position: absolute;
						right: 13%;
						top: 40px;
						width: 320px;
						height: 270px;
						border-radius: 10px;
						z-index: 9999;
						background: rgba(0, 0, 0, .5)!important;
						background: #fff;
						filter: Alpha(opacity=90);
						text-align: left
					}
					
					.login .hd {
						padding: 25px 30px 0;
						position: relative
					}
					
					.login .hd span {
						font-size: 18px
					}
					
					.login .hd a {
						position: absolute;
						right: 30px;
						top: 28px;
						padding-right: 15px;
						line-height: 18px;
						background: url("../images/index_bg.png") right -11px no-repeat
					}
					
					.login .bd {
						padding-left: 30px;
						padding-right: 30px
					}
					
					.login .bd .bd_title {
						margin-top: 20px;
						text-align: left;
						font-size: 18px;
						font-weight: 400;
						color: #fff
					}
					
					.login .bd .average {
						line-height: 60px;
						font-size: 14px;
						text-align: center
					}
					
					.login .bd .average span {
						color: #d11111;
						font-size: 40px
					}
					
					.login .bd .bd_content {
						font-size: 13px;
						padding-bottom: 5px;
						padding-top: 5px;
						margin-bottom: 20px;
						margin-top: 10px;
						text-align: left;
						color: #fff;
						border-bottom: 1px solid #e1e1e1;
						border-top: 1px solid #e1e1e1
					}
					
					.login .bd .bd_content em {
						color: #d11111;
						font-size: 20px;
						font-family: Tahoma, Geneva, sans-serif
					}
					
					.login .bd .bd_content span {
						font-size: 18px;
						color: #d11111;
						padding-bottom: 30px
					}
					
					.login .bd .mod_input {
						height: 65px;
						position: relative
					}
					
					.login .input_group .input_control.prepend input {
						width: 200px
					}
					
					.login .bd .mod_input label {
						float: left;
						width: 29px;
						height: 40px;
						background: url("../images/index_bg.png") no-repeat
					}
					
					.login .bd .mod_input .tips {
						position: absolute;
						left: 30px;
						top: 12px;
						font-size: 14px;
						color: #999
					}
					
					.login .bd .mod_input input {
						float: left;
						width: 208px;
						height: 38px;
						line-height: 38px;
						font-size: 14px;
						border: 0;
						border-top: #ccc 1px solid;
						border-bottom: #ccc 1px solid
					}
					
					.login .bd .mod_input .rbg {
						float: left;
						width: 4px;
						height: 40px;
						background: url("../images/index_bg.png") -60px 0 no-repeat
					}
					
					.login .bd .mod_password label {
						background-position: -29px 0
					}
					
					.login .bd .fun {
						height: 33px;
						padding-right: 30px
					}
					
					.login .bd .fun label {
						width: 70px;
						line-height: 17px;
						float: left;
						color: #777;
						padding-left: 18px;
						background: url("../images/index_bg.png") -386px -166px no-repeat;
						cursor: pointer
					}
					
					.login .bd .fun label.checked {
						background: url("../images/index_bg.png") -386px -120px no-repeat
					}
					
					.login .bd .fun span {
						position: relative;
						float: left;
						padding-left: 120px
					}
					
					.login .bd .fun a {
						position: relative;
						float: right;
						color: #777
					}
					
					.login .bd .login_but {
						display: block;
						width: 240px;
						height: 40px;
						background: url("../images/index_bg.png") -82px 0 no-repeat;
						font-size: 18px;
						font-family: "瀵邦喛钂嬮梿鍛寸拨";
						color: #FFF;
						border: 0;
						cursor: pointer;
						line-height: 40px;
						text-align: center
					}
					
					.login .bd .login_but:hover {
						background-position: -82px -40px
					}
					
					.login .bd .share {
						padding-top: 23px
					}
					
					.login .bd .share a {
						float: left;
						height: 16px;
						line-height: 16px;
						padding-left: 18px;
						margin-right: 22px
					}
					
					.sub01 {
						width: 50%;
						height: 39px;
						line-height: 39px;
						background: #e12a2f;
						display: inline-block;
						text-align: center;
						color: #fff;
						font-size: 18px;
						border-top: 2px solid #e12a2f;
						border-bottom: 2px solid #e12a2f;
						vertical-align: middle;
						border-radius: 10px
					}
					
					.sub02 {
						width: 45%;
						height: 37px;
						line-height: 37px;
						background: #FFF;
						border: 3px solid #e12a2f;
						display: inline-block;
						text-align: center;
						color: #e12a2f;
						font-size: 18px;
						vertical-align: middle;
						border-radius: 10px
					}
					
					.sub02 a {
						color: #e12a2f;
					}
					
					.sub01:hover {
						color: #FFF
					}
					
					.login .bd ul li {
						width: 155px;
						padding-right: 3px;
						float: left
					}
					
					.login .bd ul li.loginfont {
						width: 100px;
						padding: 0
					}
					
					.login .bd ul li.liaccount {
						width: 150px;
						padding-left: 50px
					}
				</style>
				<script type="text/javascript">
					var i = 0;
					var gg;
					hasak();
					$("#slideDian a").hover(function() {
						i = $(this).index();
						Show();
						clearInterval(gg);
					}, function() {
						hasak();
					});

					function Show() {
						$("#slideImg li").eq(i).fadeIn(400).siblings().fadeOut(400);
						$("#slideDian a").eq(i).addClass("current").siblings().removeClass("current");
					}

					function hasak() {
						gg = setInterval(function() {
							i++;
							if(i == 6) {
								i = 0;
							}
							Show();
						}, 3000);
					}
					$(".myStat1").circliful();
				</script>
				<!-- 图片 -->

				<!--S 首页内容区 -->
				<!--S 最新动态 （轮播）-->
				<section class="slide_con" id="slideCon">
					<h3 class="no_txt" style="display:none;">焦点图</h3>
					<ul class="slide_img" id="slideImg">
						<div class="login">
							<div class="bd">
								<div class="bd_title">综合日化收益高达</div>
								<div class="average"><span><div class="bd_title" style="height: 80px; text-align: center; line-height: 80px"><span style="font-size: 36px; color: #ff5b6d">1.01%~10%</span></div>
								</span>
							</div>
							<div class="bd_content"><em>100%</em>本息保障 聪明人的选择</div>
							<div>
								<div class="sub01">
									<a href="${basePath}/user-login" style="color:#fff">登陆</a>
								</div>
								<div class="sub02">
									<a href="/user-register">注册</a>
								</div>
							</div>

						</div>
			</div>
			<ul>

				<li style="background-image:url('./uploadfile/2020/0416/20200416075600661.jpg');" class="current">
				</li>
				<li style="background-image:url('./uploadfile/2020/0416/20200416075419585.png');" class="current">
				</li>
				<li style="background-image:url('./uploadfile/2019/0504/20190504062542234.png');" class="current">
				</li>
			</ul>
			<div class="slide_dian mid" id="slideDian">

				<a href="#0"></a>

				<a href="#0"></a>

				<a href="#0"></a>

			</div>
			</section>

			<!-- 通知公告 -->
			<div class="ctz_box wbox12 relative overhidden">
				<div class="ctz_con w1200 relative">
					<ul>
						<li>
							<a>
								<marquee scrolldelay="200" onmouseout="this.start()" onmouseover="this.stop()">
									<span style="color: rgb(255, 0, 0); font-family: 微软雅黑; font-size: 14px;">APP升级更新请重新下载</span></marquee>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<!--首页优势-->

			<div class="home-advantage">
				<div>
					<div>
						<img src="${basePath}/css/intro1.png?v=e1e4e7c" alt="">
						<div>
							<h3>国资平台</h3>
							<p>国企投资 背景雄厚</p>
						</div>
					</div>
					<div>
						<img src="${basePath}/css/intro2.png?v=c7aba99" alt="">
						<div>
							<h3>多重保障</h3>
							<p>三方资金 安全托管</p>
						</div>
					</div>
					<div>
						<img src="${basePath}/css/intro3.png?v=f6a37b6" alt="">
						<div>
							<h3>数据风控</h3>
							<p>风控审核 项目优选</p>
						</div>
					</div>
					<div>
						<img src="${basePath}/css/intro4.png?v=58ffaa1" alt="">
						<div>
							<h3>安全可靠</h3>
							<p>律所支持 合规审查</p>
						</div>
					</div>
				</div>
			</div>

			<div class="home-main">
				<div class="home-main-container">
					<div class="product">

						<div class="cp-routine1">
							<div class="img-box">
								<a href="${basePath}/list191"><img src="${basePath}/css/d-sy.jpg" alt=""></a>
								<div class="app-code-box">
								</div>
							</div>
							<ul>
								
								<c:forEach items="${ps}" var="p" varStatus="cindex">
									<li>
										<h1>${p.name }<b class="redbag"></b><b class="interest"></b></h1>
										<div class="cp-detail-box">
											<div>
												<h2>${p.rate}<span>%</h2>
												<p>预期收益</p>
											</div>
											<div class="deadline">
												<h3 style="font-size: 21px;">${p.duration}个自然日</h3>
												<p>投资期限</p>
											</div>
											<div>
												<h3>${start_money}</h3>
												<p>起投金额</p>
											</div>
											<div class="circleChart_box">
												<div class="ddd">
													<div class="bar1"><i style="width:27.01%"></i> </div>
													<div class="p3" style="font-size:13px;">投资进度 : ${p.projectrate}%</div>
	
												</div>
											</div>
											<a style="display:block;color:#fff" href="${basePath}/projectinfo?id=${p.id}" class="button">立即投资</a>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>

						<div class="cp-routine">
							<div class="img-box">
								<a href="${basePath}/list531"><img src="${basePath}/css/z-sy.jpg" alt=""></a>
								<div class="app-code-box">
								</div>
							</div>
							<ul>
								<c:forEach items="${ps2}" var="p" varStatus="cindex">
									<li>
										<h1>${p.name }<b class="redbag"></b><b class="interest"></b></h1>
										<div class="cp-detail-box">
											<div>
												<h2>${p.rate}<span>%</h2>
												<p>预期收益</p>
											</div>
											<div class="deadline">
												<h3 style="font-size: 21px;">${p.duration}个自然日</h3>
												<p>投资期限</p>
											</div>
											<div>
												<h3>${start_money}</h3>
												<p>起投金额</p>
											</div>
											<div class="circleChart_box">
												<div class="ddd">
													<div class="bar1"><i style="width:27.01%"></i> </div>
													<div class="p3" style="font-size:13px;">投资进度 : ${p.projectrate}%</div>
	
												</div>
											</div>
											<a style="display:block;color:#fff" href="${basePath}/projectinfo?id=${p.id}" class="button">立即投资</a>
										</div>
									</li>
								</c:forEach>
								
							</ul>

						</div>

						<div class="cp-routine">
							<div class="img-box">
								<a href="${basePath}/list541"> <img src="${basePath}/css/c-sy.jpg" alt=""></a>
								<div class="app-code-box">
								</div>
							</div>
							<ul>
								<c:forEach items="${ps3}" var="p" varStatus="cindex">
									<li>
										<h1>${p.name }<b class="redbag"></b><b class="interest"></b></h1>
										<div class="cp-detail-box">
											<div>
												<h2>${p.rate}<span>%</h2>
												<p>预期收益</p>
											</div>
											<div class="deadline">
												<h3 style="font-size: 21px;">${p.duration}个自然日</h3>
												<p>投资期限</p>
											</div>
											<div>
												<h3>${start_money}</h3>
												<p>起投金额</p>
											</div>
											<div class="circleChart_box">
												<div class="ddd">
													<div class="bar1"><i style="width:27.01%"></i> </div>
													<div class="p3" style="font-size:13px;">投资进度 : ${p.projectrate}%</div>
	
												</div>
											</div>
											<a style="display:block;color:#fff" href="${basePath}/projectinfo?id=${p.id}" class="button">立即投资</a>
										</div>
									</li>
								</c:forEach>
							</ul>

						</div>
					</div>
				</div>

				<div class="news">
					<div class="home-main-container">
						<div class="news-content">
							<div class="mtbd-box">

								<a style="display:block;color:#fff" class="img-box"><img src="${basePath}/css/mmt.jpg" alt=""></a>
								<div class="mtbd-detail">
									<h1>新闻公告</h1>

									<a style="display:block;color:#fff" href="/index.php?m=content&c=index&a=show&catid=22&id=823">
										<p>网站名称变更通知</p><span></span>

									</a>

									<a style="display:block;color:#fff" href="/index.php?m=content&c=index&a=show&catid=22&id=760">
										<p>光伏发电未来必将成为替代传统能源的主流品种</p><span></span>

									</a>

									<a style="display:block;color:#fff" href="/index.php?m=content&c=index&a=show&catid=22&id=763">
										<p>金风集团预计将在2019年开工建设新的澳大利亚风电场</p><span></span>

									</a>

									<a style="display:block;color:#fff" href="/index.php?m=content&c=index&a=show&catid=22&id=766">
										<p>2018年11月新能源汽车销量同比增长37.6%</p><span></span>

									</a>

									<a style="display:block;color:#fff" href="/index.php?m=content&c=index&a=show&catid=22&id=768">
										<p>2019年生物质能发电/供热主要城市目标汇总</p><span></span>

									</a>

								</div>
							</div>
							<div class="wzgg-box">
								<a href="user-tuijian"><img src="${basePath}/css/yyj.jpg" alt=""></a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		</div>

		<div class="cle"></div>

		<!--合作机构-->
		<div class="chz_box w1200 relative mt20">
			<div class="tit">
				<i></i>合作银行
			</div>
			<div class="con clearfix">
				<a href="http://www.cebbank.com" title="中国光大银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010354944.png" /></a>
				<a href="http://www.bankcomm.com/" title="交通银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506125819905.png" /></a>
				<a href="http://www.boc.cn/" title="中国银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010015471.png" /></a>
				<a href="http://www.abchina.com/cn/" title="农业银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010031557.png" /></a>
				<a href="http://www.psbc.com" title="邮政储蓄银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010049992.png" /></a>
				<a href="http://www.cib.com.cn/" title="兴业银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010105353.png" /></a>
				<a href="http://www.cmbchina.com/" title="招商银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010157307.png" /></a>
				<a href="http://www.ccb.com" title="建设银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010211313.png" /></a>
				<a href="http://www.cmbc.com.cn/" title="民生银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010227486.png" /></a>
				<a href="http://bank.ecitic.com/" title="中信银行" target="_blank"><img src="${basePath}/uploadfile/2019/0506/20190506010243425.jpg" /></a>

			</div>
		</div>

		<div class="cle"></div>

		<script type="text/javascript">
			$(function() {
				//BANNER
				$("#cban_box").CbanShow();
				//通知公告
				$("#tz").TzShow();

				//数字滚动
				var sz_num01 = $("#li_btn01").html(); // 交易总额
				var sz_num02 = $("#li_btn02").html(); // 赚取收益
				var sz_num03 = $("#li_btn03").html(); // 待收总额
				var sz_num04 = $("#li_btn04").html(); // 投资人数

				var str_num01 = "",
					str_num02 = "",
					str_num03 = "",
					str_num04 = "";
				$(".csz_con ul li:eq(0)").Cnum({
					num: sz_num01,
					strNum: str_num01,
					Ztf: true
				});
				$(".csz_con ul li:eq(1)").Cnum({
					num: sz_num02,
					strNum: str_num02,
					Ztf: true
				});
				$(".csz_con ul li:eq(2)").Cnum({
					num: sz_num03,
					strNum: str_num03,
					Ztf: true
				});
				$(".csz_con ul li:eq(3)").Cnum({
					num: sz_num04,
					strNum: str_num04,
					Ztf: true
				});
				$(".csz_con ul li").hover(function() {
					$(this).Cnum({
						num: sz_num01,
						strNum: str_num01,
						Ztf: false
					});
				})

			})
		</script>

		<script type="text/javascript">
			document.getElementById("menu1").className = "on ";
		</script>

		<!--div style="margin-bottom:20px;"></div-->
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
									<img src="${basePath}/css/ewm.png" alt="APP下载">
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
					<div class="h_pic">
						<a target="_blank" href="https://url.cn/5TaWdQI?_type=wpa&amp;qidian=true"><i>在线客服</i></a>
					</div>
					<div class="l_pic">
						<a target="_blank" href="https://url.cn/5TaWdQI?_type=wpa&amp;qidian=true"><i>在线客服</i></a>
					</div>
				</li>

				<li class="jsq" id="CalculBox">
					<div class="h_pic">
						<a href="list-14-1.html"><i>计算器</i></a>
					</div>
					<div class="l_pic">
						<a href="list-14-1.html"><i>计算器</i></a>
					</div>
				</li>

				<li class="top">
					<a href="#top">
						<div class="h_pic"><i>返回顶部</i></div>
						<div class="l_pic"><i>返回顶部</i></div>
					</a>
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
							<a href="/list-33-1.html">支付方式</a>
							<a href="/list-69-1.html">公司资质</a>
							<a href="/list-5-1.html">联系我们</a>
							<a href="/list-59-1.html">新手指引</a>
							<a href="/list-8-1.html">安全保障</a>
							<a href="/list-34-1.html">会员等级</a>
							<a href="/list-22-1.html">网站公告</a>
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
								<img src="${basePath}/css/ewm.png">
								<img src="${basePath}/css/ewm.png" class="hidden">

							</div><br>安卓APP下载

						</div>
					</div>
					<div class="fr contact"><span>电话热线</span> <b>4006-715-901</b>
						<p><span style="color:#ff0000;"><span style="font-size:16px;"><!--地址：--><span style="font-family: 微软雅黑;">工作时间：09:00-23:00</span></span>
							</span>
						</p>
					</div>
				</div><br></div>

			<div class="footer_db  clearfix "><br>
				<p>Copyright 2020 敏博投资 版权所有 All righs reserved</p>
				<p><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094041975.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094101696.png" style="width: 124px; height: 43px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094139661.png" style="width: 114px; height: 41px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094208287.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094707408.png" style="width: 124px; height: 47px;" /><img alt="" src="${basePath}/uploadfile/2020/0225/20200225094356268.png" style="width: 124px; height: 47px;" />
					<script type="text/javascript" src="${basePath}//js.users.51.la/20657809.js"></script>
				</p>
				<p style="display:none;"><span style="color: rgb(51, 51, 51); font-family: Helvetica, PingFangSC-Regular, &quot;Microsoft YaHei&quot;, &quot;\\534E文细黑&quot;, &quot;\\5FAE软雅黑&quot;, Arial, STXihei, SimSun; font-size: 14px; background-color: rgb(244, 244, 244);">&lt;script type=&quot;text/javascript&quot; src=&quot;//js.users.51.la/20197909.js&quot;&gt;&lt;/script&gt;</span> </p>
				<br>
			</div>
		</div>
		</div>

	</body>

</html>