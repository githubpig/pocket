<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../taglib.jsp"%>
<ul class="bxb-margin-center">
			
			<c:forEach items="${ps}" var="p" varStatus="cindex">
			 <li>
				<h5 class="tit">
					<a href="index.php-m=content&c=index&a=show&catid=19&id=32.htm" tppabs="http://jsg1.5.hengjihr.com/index.php?m=content&c=index&a=show&catid=19&id=32" >
					<span class="type">100%本息保障</span>
					<span class="text">${p.name }</span>
					</a>
					<a href="index.php-m=content&c=index&a=show&catid=19&id=32.htm" tppabs="http://jsg1.5.hengjihr.com/index.php?m=content&c=index&a=show&catid=19&id=32" >
						<span class="bxb-color-icon bxb-color-red">${p.huankuanfangshi }</span>
					</a>
				</h5>
			
				<div class="list bxb-clearfix bxb-m20-top">
					<div class="interest module bxb-fl">
						<h6 class="num fontDin">
							<span class="num-int fontDin">${p.rate }</span>
							<span class="unit">%</span> 
						</h6>
						<p class="note">日化收益率</p>
					</div>
			
					<div class="amount module bxb-fl">
						<h6 class="num ">
							<span class="fontDin">5,500</span>
							<span class="unit">万元</span> 
						</h6>
						<p class="note">项目的总额(元)</p>
					</div>
			
					<div class="days module bxb-fl">
						<h6 class="num">
							<span class="fontDin">${p.duration }</span>
							<span class="unit">个自然日</span> 
						</h6>
						<p class="note">项目期限</p>
					</div>
			
					<div class="remaining module bxb-fl">
						<h6 class="num">
							<span class="fontDin">${p.start_money }</span>
						</h6>
						<p class="note">起投金额(元)</p>
					</div>
			 		<div class="progress module bxb-relative bxb-fl">
						<h6 class="num fontDin">
							<span class="fontDin">${p.projectrate }</span>
							<span class="unit">%</span> 
						</h6>
						<div class="progress-con bxb-absolute">
							<div class="con bxb-absolute bxb-tran" style="width: 30.97px;"></div>
						</div>
						<p class="note">进度</p>
					</div>
					 	<div class="investment-btn bxb-fr bxb-text-center status_2">
						<a href="index.php-m=content&c=index&a=show&catid=19&id=32.htm" tppabs="http://jsg1.5.hengjihr.com/index.php?m=content&c=index&a=show&catid=19&id=32" class="bxb-tran">立即投资</a>
						</div>
						
						
				</div>
			</li>
			
			</c:forEach>
		
</ul>