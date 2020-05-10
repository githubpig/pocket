function backTop()
{
	var $backToTopTxt = "", $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
	.text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
		$("html, body").animate({ scrollTop: 0 }, 120);
	}), $backToTopFun = function() {
		var st = $(document).scrollTop(), winh = $(window).height(),winw=$(window).width();
		(st > 0)? $backToTopEle.show(): $backToTopEle.hide();
		//IE6下的定位
		if (!window.XMLHttpRequest) {
			$backToTopEle.css("top", st + winh - 106);
		}
		$backToTopEle.css("right", (winw-1000)/2-75);
	};
	$(window).bind("scroll", $backToTopFun);
  $(".backToTop").hover(function(){
		 $(this).css("background-position","-167px -86px")
	},function(){
		 $(this).css("background-position","-167px -5px")
	})
	var winw=$(window).width();
	$("#adLayer,#jsqqLayer,#jsqLayer,#phbLayer").css("right", (winw-1000)/2-75);
	$("#weixin2wm").hover(function(){
		$(".weixinClass").show();
	},function(){
		$(".weixinClass").hide();
	})
}

//切换
function setTabAll(name,cursel,n){
	for(i=1;i<=n;i++){
		var menu=document.getElementById(name+i);
		var con=document.getElementById("gTab_"+name+"_"+i);
		if(menu){
			menu.className=((i==cursel)?"curr":"");
			//menu.style.display=((i==cursel)?"none":"block");
		}
		if(con){
			con.style.display=((i==cursel)?"block":"none");
		}		
	}
}
