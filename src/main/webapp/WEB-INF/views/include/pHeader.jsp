<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width:1024px){
	.topInfo{
		width:100%;
		margin:0 auto;
		padding:5px 15%;
		background: #444;
	}
	.topInfo > p{
		font-size:17px;
		text-align: right;
		color:#fff;
	}
	.headerWrap {
		width: 100%;
		margin: 0 auto;
		overflow: hidden;
		padding: 10px 15%;
		border-bottom: 1px solid #f1f1f1;
	}
	
	.headerWrap>a>img {
		float: left;
		width: 201px;
	}
	
	.headerWrap>ul {
		width: 500px;
		float: right;
		margin-top: 18px;
	}
	
	.headerWrap>ul>li {
		float: left;
		font-size: 20px;
		font-weight: 600;
		width: 20%;
		text-align: center;
	}
	.headerWrap > ul > li:first-child > a{
		color:#df3638;
	}
}
@media (min-width: 768px) and (max-width: 1024px) {
	.topInfo{
		width:100%;
		margin:0 auto;
		padding:5px 3%;
		background: #444;
	}
	.topInfo > p{
		font-size:15px;
		text-align: right;
		color:#fff;
	}
	.headerWrap {
		width: 100%;
		margin: 0 auto;
		overflow: hidden;
		padding: 10px 3%;
		padding-bottom:8px;
		border-bottom: 1px solid #f1f1f1;
	}
	.headerWrap>a>img {
		float: left;
		width: 180px;
	}
	.headerWrap>ul {
		width: 450px;
		float: right;
		margin-top: 16px;
	}
	.headerWrap>ul>li {
		float: left;
		font-size: 18px;
		font-weight: 600;
		width: 20%;
		text-align: center;
	}
	.headerWrap > ul > li:first-child > a{
		color:#df3638;
	}
}
</style>
<script>
	function wheel_touchMove_event(event,obj){
		var wheelState=event.originalEvent.wheelDelta;/* 밑으로 내리면  -120 위로 올리면 +120 */
		var nowTag=$(obj).attr("id");
		var prevTag=$(obj).prev().attr("id");
		var nextTag=$(obj).next().attr("id");
		if((nowTag=="section1"&&wheelState>0)||(nowTag=="section5"&&wheelState<0)){
			return false;
		}
		
		if(wheelState > 0){
			console.log(nowTag);
			if(nowTag=="section1"){
				console.log("#section1 태그입니다.");
				return false;
			}else{
				$('html, body').animate({
					scrollTop : $("#"+prevTag).offset().top - 105 
				}, 300, 'linear');
			}
		}else{
			if(nowTag=="section5"){
				console.log("section5 태그입니다.");
				return false;
			}else{
				$('html, body').animate({
					scrollTop : $("#"+nextTag).offset().top - 105
				}, 300, 'linear');
			}
		}
		return;
	}
	
	function funcWait(milliseconds) {
		  var start = new Date().getTime();//현재시간
		  for (var i = 0; i < 1e7; i++) {
		    if ((new Date().getTime() - start) > milliseconds){
		      break;
		    }
		  }
		}
	$(function() {
		//$(".headerWrap > ul > li > a").eq(0).css("color","#df3638");
		$(".headerWrap > ul > li > a").click(function(e) {
			e.preventDefault();
			
			var divecieWidth=$(document).width();
			
			$(".headerWrap > ul > li > a").css("color","#5c5c5c");
			$(this).css("color","#df3638");
			
			if(divecieWidth > 1024){
				$('html, body').animate({
					scrollTop : $($(this).attr('href')).offset().top - 105
				}, 500, 'linear');
			}else if(divecieWidth > 767 && divecieWidth < 1025){
				$('html, body').animate({
					scrollTop : $($(this).attr('href')).offset().top - 98
				}, 500, 'linear');
			}
		});
		
		/* $(".sectionDiv").on("mousewheel", function(event) {
			wheel_touchMove_event(event,$(this));
			
		});*/
		
		$(document).bind("touchend",function(event){
			var s1=$("#section1").position().top;
			var s2=$("#section2").position().top;
			var s3=$("#section3").position().top;
			var s4=$("#section4").position().top;
			var s5=$("#section5").position().top;
			
			var s1half=(s2-s1)/2;
			var s2half=(s3-s2)/2;
			var s3half=(s4-s3)/2;
			var s4half=(s5-s4)/2;
			var s5half=(s2-s1)/2;
			var height=$(document).scrollTop();
			/* alert("s1="+s1+", s2="+s2+", s3="+s4+", s5="+s5); */
			//alert(height);
			
			$(".headerWrap > ul > li > a").css("color","#5c5c5c");
			
			if(height > s5){
				$(".headerWrap > ul > li > a").eq(4).css("color","#df3638");
				//alert("scrollTop="+height+", s4="+s4);
			}else if(height > (s4-s1half)){
				$(".headerWrap > ul > li > a").eq(3).css("color","#df3638");
				//alert("scrollTop="+height+", s4="+s4);
			}else if(height > (s3-s1half)){
				$(".headerWrap > ul > li > a").eq(2).css("color","#df3638");
				//alert("scrollTop="+height+", s3="+s3);
			}else if(height > (s2-s1half)){
				$(".headerWrap > ul > li > a").eq(1).css("color","#df3638");
				//alert("scrollTop="+height+", s2="+s2);
			}else if(height > (s1-s1half)){
				$(".headerWrap > ul > li > a").eq(0).css("color","#df3638");
				//alert("scrollTop="+height+", s1="+s1);
			}
		});
		
		
	});
</script>
<div class="topInfo">
		<p>주소 : 대구광역시 수성구 청수로 70(상동) &nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;&nbsp;문의전화 : 053-761-0202</p>
</div>
<div class="headerWrap">
	<a href="${pageContext.request.contextPath}/"><img
		src="${pageContext.request.contextPath}/resources/images/logo2.png"></a>
	<ul>
		<li><a href="#section1">회사소개</a></li>
		<li><a href="#section2">취급품목</a></li>
		<li><a href="#section3">오시는 길</a></li>
		<li><a href="#section4">장착사례</a></li>
		<li><a href="#section5">취급브랜드</a></li>
	</ul>
</div>