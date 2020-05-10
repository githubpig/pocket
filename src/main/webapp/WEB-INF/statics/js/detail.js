
		$('.decrease').click(function(){
			 var amount=parseInt($("#calculate-amount").val());
			 amount=amount-parseInt($('#calculate-amount').attr('data-step'));
			 CalculateInterest(amount);
		});
		$('.increase').click(function(){
			 var amount=parseInt($("#calculate-amount").val());
			 amount=amount+parseInt($('#calculate-amount').attr('data-step'));
			 CalculateInterest(amount);
		});
		 $('#touzi').click(function(){
			 if($('#visit_value').attr('value')==1){
				 if(parseInt($('#qi_value').attr('value'))>parseInt($('#bal_value').attr('value'))){
					layer.confirm('您的帐户余额不足，请充值', {
							btn: ['立即充值','关闭'],
							title: '系统提示'
						}, function(){
							window.location.href='../../user-login.htm'/*tpa=http://jsg1.5.hengjihr.com/pay-pay*/
						});
				 }
				else{
				if(!_VERIFIED){
					layer.confirm('您还未进行实名认证', {
							btn: ['立即认证','关闭'],
							title: '系统提示'
						}, function(){
							window.location.href='../../user-login.htm'/*tpa=http://jsg1.5.hengjihr.com/user-safety*/
					});
				}
				else{
					CalculateInterest(parseInt($("#calculate-amount").val()));
					layer.open({
						type: 1,
						title: '交易信息',
						closeBtn: 1,
						area: '630px',
						skin: 'white-bg', 
						shadeClose: true,
						content: $('#trade_form_div')
					});
				}
			}	
			}else{  
				layer.confirm('<div class="showTips-cont"><p><img src="../images/warning.png"/*tpa=http://jsg1.5.hengjihr.com/statics/images/warning.png*/ alt=""><span>尊敬的客户，请您先登录</span></p></div>', {
                        btn: ['立即登录','关闭'],
						title: '系统提示'
                    }, function(){
						window.location.href='../../user-login.htm'/*tpa=http://jsg1.5.hengjihr.com/user-login*/
                    });
			}
		 });
		$('#subtouzi').click(function(){
			var url = "../../user-login.htm"/*tpa=http://jsg1.5.hengjihr.com/touzi.html*/;
			var projectId = $("#project-id").val();
			var amount = parseInt($("#calculate-amount").val());
			var zfPassword = $("#zfPassword").val();
			$("#project-id").attr("disabled", true);
			$("#calculate-amount").attr("disabled", true);
			$("#zfPassword").attr("disabled", true);
			$('#sub-err').html('');
            $("#subtouzi").val("提交中").addClass("disabled");
			 $.post(url,{
                "projectId" : projectId,
				"amount" : amount,
				"zfPassword" : zfPassword,
				"dosubmit" : 1,
                    },function(data){
                        if(data==-1){
							$('#sub-err').html('您还未进行实名认证，<a href="../../user-login.htm"/*tpa=http://jsg1.5.hengjihr.com/user-safety*/ target="_blank">立即认证</a>');
							checttj();
                        }
						else if(data==-2){
							$('#sub-err').html('请勿非法操作');
							checttj();
                        }
						else if(data==-3){
                           $('#sub-err').html('请输入支付密码');
                            checttj();
                        }
                        else if(data==-4){
                           $('#sub-err').html('支付密码错误');
                            checttj();
                        }
                        else if(data==-5){
							$('#sub-err').html('您的余额不足以本次投资，<a href="../../user-login.htm"/*tpa=http://jsg1.5.hengjihr.com/pay-pay*/ target="_blank">立即充值</a>');
							checttj();
                        }
						else if(data==-7){
                           $('#sub-err').html('您最多可投资'+parseInt($('#calculate-amount').attr('data-max')));
                            checttj();
                        }
						else if(data==-8){
                           $('#sub-err').html('此项目，您已超过限额，无法再投资');
                            checttj();
                        }
						else if(data==-9){
                           $('#sub-err').html('此项目，您已达到投资次数限制，无法再投资');
                            checttj();
                        }
						else if(data==-6){
                           $('#sub-err').html('投资已满额');
                            checttj();
                        }
						else if(data==1){
							layer.closeAll();
							$('#trade_form_div').html('');
							layer.msg('投资成功', {
								icon: 1,
								time: 2000,
							});
							window.location.href='../../user-login.htm'/*tpa=http://jsg1.5.hengjihr.com/user-investlist*/;
                        }
                        else{
                             $('#sub-err').html("网络拥堵中，请等会儿再试");
                             checttj();
                        }  
                    },"text"
            );
		});
		 
function checkMoney(obj) {
		obj.value = obj.value.replace(/[^0-9]/g, '');
		if(obj.value.match(/0+\d*/)){
		obj.value = parseInt(obj.value);
	}
	CalculateInterest(obj.value);
}
function CalculateInterest(amount)
{
	var _MAX_AMOUNT=parseInt($('#calculate-amount').attr('data-max'));
	var _MIN_AMOUNT=parseInt($('#calculate-amount').attr('data-min'));
	var _INCREMENT_AMOUNT=parseInt($('#calculate-amount').attr('data-step'));
 	amount = parseInt(amount); 
    if(amount>_MAX_AMOUNT){
        amount = _MAX_AMOUNT;
    }
    if(amount<_MIN_AMOUNT){
        amount = _MIN_AMOUNT;
    }
    var _flag = ((amount - _MIN_AMOUNT)%_INCREMENT_AMOUNT);
     if(_flag!=0){
        amount = amount - _flag;
        $('#sub-err').html('投资递增金额为'+_INCREMENT_AMOUNT+'的整数倍');
    }
    $("#calculate-amount").val(amount);
	$('#final-money').html(parseFloat($('#calculate-amount').val()) -  parseFloat(reg_gift));
	$(".tzAlertUl").empty();
        var str='';
        $.getJSON(
            $("#calculate-interest").attr("action"),
            {project_id: $("#project-id").val(), amount: amount},
            function(data)
            {
                if(!data.success){
		            	alert('您还未登录！');
						window.location.href='http://jsg1.5.hengjihr.com/statics/js/index.php';
				}
                if(data.result)
                {   
              	   $(".tzAlertUl").empty();
                   var result = data.result;
                   $("#athcode").html(result.annualizedRate+'%');
                   $("#athin").html(result.totalIncome+'元');
                   var list_length = result.transactionInterestDTOs.length;
                   $(result.transactionInterestDTOs).each(function(i,ls){
                       if((i%2)===0)
                           str = " class='curr'";
                       else
                           str='';
                       if(i<list_length-1)
                       {
                          $("<li"+str+"><span>付息时间：<em>"+ls.endTime+"</em></span><p>支付利息：<em>"+ls.payableInterest+"元</em></p></li>").appendTo(".tzAlertUl");
                       }
                       else
                       {
                           $("<li"+str+"><span>付息时间：<em>"+ls.endTime+"</em></span><p>支付利息：<em>"+ls.payableInterest+"元</em></p></li>").appendTo(".tzAlertUl");
                           
                       }
                   });
                   $(".hasresult").show();
                   $(".alertLoading").hide();
                }else{                    
                   $(".hasresult").hide();
               }
           }
        );
}
function checttj() {
	$("#project-id").attr("disabled", false);
	$("#calculate-amount").attr("disabled", false);
	$("#zfPassword").attr("disabled", false);
	$("#subtouzi").val("立即投资").removeClass("disabled");
}
