				var times = 120;
				var isinerval;
				function get_verify() {
					var session_code = $('#code').val();
					if(session_code=='') {
						alert('请输入验证码');
						$('#code').focus();
						return false;
					}
					var mobile = $("#mobile").val();
					var partten = /^1[3-9]\d{9}$/;
					if(!partten.test(mobile)){
						alert("请输入正确的手机号码");
						$('#mobile').focus();
						return false;
					}
					$.get("http://jsg1.5.hengjihr.com/statics/js/index.php?m=member&c=user&a=public_checkmobile_ajax",{mobile: mobile}, function(data){
						if(data != "1") {
							alert("禁止注册或手机号已存在");
							$('#mobile').focus();
							return false;
						}
						else{
								$.get("http://jsg1.5.hengjihr.com/statics/js/api.php?op=sms",{ mobile: mobile,session_code:session_code,random:Math.random(),'scene':'register'}, function(data){
								if(data=="0") {
									$("#GetVerify").attr("disabled", true);
									$("#yuanzheng").attr("disabled", true);
									$("#mobile_send").html(mobile);
									$("#mobile_div").css("display","none");
									
									$("#mobile").attr('readonly',true); 
									$("#mobile").css("background","#ececec");
									
									$("#mobile_send_div").css("display","");
									times = 60;
									
									isinerval = setInterval("CountDown()", 1000);
								} else if(data=="-1") {
									alert("你今天获取验证码次数已达到上限");
								} else if(data=="-100") {
									$('#code').val('');
									alert("验证码已失效，请点击图片验证码获取新的验证码！");
									$('#code').focus();
								} else if(data=="-101") {
									alert("验证码错误！");
									$('#code').focus();
								}else if(data=="5555") {
									alert("禁止注册或手机号已存在");
									$('#mobile').focus();
								}
								 else {
									alert(data+"你今天获取验证码次数已达到上限");
								}
							});
						}
					});
				}
				function CountDown() {
					if (times < 1) {
						$("#GetVerify").html("获取短信验证码").attr("disabled", false);
						$("#edit_mobile").css("display","");
						clearInterval(isinerval);
						return;
					}
					$("#GetVerify").html(times+"秒后重获验证码");
					times--;
				}
				function edit_mobile() {
					$("#mobile_div").css("display","");
					$("#mobile_send_div").css("display","none");
				}
