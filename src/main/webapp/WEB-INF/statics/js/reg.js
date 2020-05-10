$(function(){
	$.formValidator.initConfig({autotip:true,formid:"myform",onsuccess:function(msg){document.getElementById("dosubmitvv").disabled=true;return true;},onerror:function(msg){}});
	$("#mobile").formValidator({onshow:"请输入手机号码",onfocus:"请输入手机号码"}).regexValidator({regexp:"mobile",datatype:"enum",onerror:"请输入正确的手机号码"}).inputValidator({min:11,max:11,onerror:"请输入正确的手机号码"}).ajaxValidator({
	    type : "get",
		url : "http://jsg1.5.hengjihr.com/statics/js/index.php",
		data :"m=member&c=user&a=public_checkmobile_ajax",
		datatype : "html",
		async:'false',
		success : function(data){
            if( data == "1" ) {
				$("#yuanzheng").attr('disabled',false); 
                return true;
			} else {
				$("#yuanzheng").attr('disabled',true); 
                return false;
			}
		},
		buttons: $("#dosubmit"),
		onerror : "禁止注册或用户已存在。",
		onwait : "请稍候..."
	});
$("#password").formValidator({onshow:"请输入密码",onfocus:"密码应该为6-20位之间"}).inputValidator({min:6,max:20,onerror:"密码应该为6-20位之间"});
	$("#pwdconfirm").formValidator({onshow:"请输入确认密码",onfocus:"两次密码不同。",oncorrect:"密码输入一致"}).inputValidator({min:6,max:20,onerror:"请输入确认密码"}).compareValidator({desid:"password",operateor:"=",onerror:"两次密码不同。"});
		
	$("#code").formValidator({onshow:"请输入验证码",onfocus:"请输入验证码"}).inputValidator({min:1,max:11,onerror:"请输入验证码"}).ajaxValidator({
	    type : "get",
		url : "http://jsg1.5.hengjihr.com/statics/js/index.php",
		data :"m=member&c=user&a=public_checkcode_ajaxcode",
		datatype : "html",
		async:'false',
		success : function(data){
            if( data == "1" ) {
                return true;
			} else {
                return false;
			}
		},
		buttons: $("#dosubmit"),
		onerror : "验证码错误",
		onwait : "请稍候..."
	});
	$("#mobile_verify").formValidator({onshow:"请输入手机收到的验证码",onfocus:"请输入手机收到的验证码"}).inputValidator({min:1,onerror:"请输入手机收到的验证码"}).ajaxValidator({
					type : "get",
					url : "http://jsg1.5.hengjihr.com/statics/js/api.php",
					data :"op=sms_idcheck&action=id_code",
					datatype : "html",
					getdata:{mobile:"mobile"},
					async:"false",
					success : function(data){
						if( data == "1" ) {
							return true;
						} else {
  							return false;
						}
					},
					buttons: $("#dosubmit"),
					onerror : "验证码错误",
					onwait : "请稍候..."
				});
});
