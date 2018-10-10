<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@media only screen and (min-width: 320px) and (max-width: 767px){
	.headerWrap{
		width:100%;
		text-align: center;
		margin-top:13px;
		margin-bottom:10px;
		position: relative;
	}
	.logo{
		/* width:350px; */
		margin:0 auto;
	}
	.logo > img{
		width:120px;
	}
	.menuIcon{
		width:30px;
		position:absolute;
		top:-5px;
		right:20px;
	}
	.menuIcon > img{
		width:40px;
	}
	.sidenav {
	    height: 100%; /* 100% Full-height */
	    width: 0; /* 0 width - change this with JavaScript */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Stay on top */
	    top: 0; /* Stay at the top */
	    right: 0;
	    background: #777;
	    overflow-x: hidden; /* Disable horizontal scroll */
	    padding-top: 40px; /* Place content 60px from the top */
	    transition: 0.5s; /* 0.5 second transition effect to slide in the sidenav */
	}
	.homeBtn{
		position: absolute;
	    top: 17px;
	    left:0;
	    font-size: 18px;
	    margin-left: 20px;
	    color:#fff;
	}
	.homeBtn > img{
		width:21px;
	}
	.homeBtn > span{
		margin-left:10px;
	}
	.sidenav .closebtn {
	    position: absolute;
	    top:5px;
	    right: 16px;
	    font-size: 40px;
	    margin-left: 50px;
	    color:#fff;
	}
	.sidenav > hr{
		margin-top:15px;
		margin-bottom:0;
		border:0;
		border-top:2px solid #fff;
	}
	.sidenav .mainMenu > li{
		/* margin-bottom:13px; */
		border-bottom:1px solid #fff;
		text-align: left;
	}
	.sidenav .mainMenu > li > p {
	    padding: 13px 8px 13px 20px;
	    text-decoration: none;
	    font-size: 16px;
	    color: #fff;
	    display: block;
	    transition: 0.3s;
	}
	.sidenav .mainMenu > li > p > a{
		color:#fff;
	}
	/* .sidenav .mainMenu > li > p > img{
		width:20px;
		float:right;
		margin-right:10px;
	} */
	/* Style page content - use this if you want to push the page content to the right when you open the side navigation */
	/* #main {
	    transition: margin-right .5s;
	    padding: 20px;
	} */
}
</style>
<script>
	// sideNavBar
	function openNav() {
	    document.getElementById("mySidenav").style.width = "250px";
	    document.getElementById("main").style.marginRight = "250px";
	    document.body.style.backgroundColor = "rgba(54,39,25,0.4)";
	}
	function closeNav() {
	    document.getElementById("mySidenav").style.width = "0";
	    document.getElementById("main").style.marginRight = "0";
	    document.body.style.backgroundColor = "white";
	}
	
	$(function(){
		var arr=[0, 0, 0, 0, 0, 0];
		//메뉴 클릭 시 화살표 방향 변경
		$(".mainMenu > li > p > a").click(function(){
			closeNav();
			$('html, body').animate({
				scrollTop : $($(this).attr('href')).offset().top - 57
			}, 500, 'linear');
		});
		
		
	});	
</script>
<div class="headerWrap"><!-- mobileMenu.png -->
	<a class="logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo2.png"></a>
	<p class="menuIcon" onclick="openNav()"><img src="${pageContext.request.contextPath}/resources/images/mobileMenu.png"></p>
	<div id="mySidenav" class="sidenav">
		<a class="homeBtn" href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/images/mobileHomeIcon.png">
			<span>홈으로</span>
		</a>
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<hr>
		<ul class="mainMenu">
			<li>
				<p><a href="#section1">회사소개</a></p>
			</li>
			<li>
				<p><a href="#section2">취급품목</a></p>
			</li>
			<li>
				<p><a href="#section3">오시는 길</a></p>
			</li>
			<li>
				<p><a href="#section4">장착사례</a></p>
			</li>
			<li>
				<p><a href="#section5">취급브랜드</a></p>
			</li>
		</ul>
	</div>
</div>