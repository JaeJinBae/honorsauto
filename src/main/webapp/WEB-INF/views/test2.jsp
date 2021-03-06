<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick-theme.css?ver=1" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Nu7GGZxq1jrv1d4zLO2L&submodules=geocoder"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/slick/slick.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@media only screen and (min-width:1024px){
	header {
		width: 100%;
		position: fixed;
		top: 0;
		z-index: 99;
		background: #f1f1f1;
	}
	.mHeader{
		display:none;
	}
	section {
		width: 100%;
		height: 100%;
		padding-top: 105px;
	}
	.sectionTitle {
		width: 100%;
		margin: 0 auto;
		text-align: center;
		padding: 2% 0;
		font-size: 4vh;
	}
	
	#section1 {
		width: 100%;
		height: 100%;
	}
	
	#section1 > img {
		width: 100%;
		height: 100%;
	}
	
	#section2 {
		width: 100%;
		height: 100%;
		padding: 0 4%;
		padding-bottom: 40px;
	}
	
	.section2ContentWrap {
		width: 95%;
		height: 100%;
		margin: 0 auto;
		overflow: hidden;
		text-align: center;
		padding-left: 2%;
	}
	.mobileSection2ContentWrap{
		display:none;
	}
	.section2Content {
		float: left;
		width: 23%;
		height: 100%;
		margin-right: 2%;
	}
	
	.section2Content:last-child {
		margin: 0;
	}
	
	.section2Content > img {
		width: 100%;
		box-shadow: 5px 5px 20px 4px rgba(1, 1, 1, 0.3);
	}
	
	.section2Content > ul {
		width: 100%;
		margin-top: 13%;
	}
	
	.section2Content > ul > li {
		font-size: 2.5vh; /* 21px */
		margin-top: 7%;
		font-weight: 500;
		color: black;
		text-align: center;
	}
	
	#section3 {
		width: 100%;
		height: 100%;
		background:	url("${pageContext.request.contextPath}/resources/images/section3Bg.png");
		background-size: cover;
		position: relative;
	}
	
	.section3Content {
		width: 100%;
		position: absolute;
		top: 60%;
	}
	
	.section3Content > ul {
		width: 90%;
		margin: 0 auto;
		overflow: hidden;
	}
	
	.section3Content > ul > li {
		float: left;
		width: 25%;
		text-align: center;
	}
	
	.section3Content > ul > li > img {
		width: 80px;;
	}
	
	.section3Content > ul > li > p {
		color: #fff;
		font-size: 20px;
		margin-top: 20px;
	}
	
	#section4 {
		width: 100%;
		background: #f2f6f9;
		padding-bottom: 40px;
	}
	
	.section4ContentWrap {
		width: 75%;
		height: 100%;
		margin: 0 auto;
	}
	
	.section4ContentWrap ul {
		width: 100%;
		margin: 0 auto;
		overflow: hidden;
		margin-bottom: 2%;
	}
	
	.section4ContentWrap ul > li {
		float: left;
		width: 23%;
		margin-right: 2.6%;
		text-align: center;
		background: #fff;
	}
	
	.section4ContentWrap ul > li:last-child {
		margin: 0;
	}
	
	.section4ContentWrap ul > li > img {
		width: 100%;
	}
	
	.section4ContentWrap ul > li > p {
		font-size: 20px;
		font-size: 2.5vh;
		width: 100%;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		margin: 8% 0;
	}
	
	.section4ContentWrap > p {
		width: 100%;
		text-align: center;
	}
	
	.section4ContentWrap > p > a {
		font-size: 23px;
		width: 200px;
		margin: 0 auto;
		background: black;
		color: #fff;
		padding: 5px 7px;
	}
	
	.section4ContentWrap > p > a:hover {
		font-weight: 600;
	}
	
	#section5 {
		width: 100%;
		height: 90%;
		background: url("${pageContext.request.contextPath}/resources/images/section5BgTest.png") no-repeat;
		background-size: cover;
		background-position: center;
		padding: 0 8%;
		text-align: center;
	}
	
	#section5>img {
		width: 10%;
	}
	.topTxtSlider_tb{
		display:none;
	}
	.topTxtSlider {
		width: 100%;
		margin-top: 3%;
	}
	
	.topTxtSlider p {
		font-size: 2.3vh;
		margin-top: 20px;
		font-weight: 600;
	}
	
	.footer {
		width: 100%;
		margin-top:30%;
	}
	#section6{
		width:100%;
		height:10%;
		background: #999;
		font-size: 2vh;
		text-align: center;
		padding:1% 0;
	}
}
@media only screen and (min-width: 768px) and (max-width: 1023px) {
	header {
		width: 100%;
		position: fixed;
		top: 0;
		z-index: 99;
		background: #f1f1f1;
	}
	.mHeader{
		display:none;
	}
	section {
		width: 100%;
		/* height: 100%; */
		padding-top: 97px;
	}
	.sectionTitle {
		width: 100%;
		margin: 0 auto;
		text-align: center;
		padding: 2% 0;
		font-size: 3vh;
	}
	
	#section1 {
		width: 100%;
		/* height: 100%; */
		/* background: url("${pageContext.request.contextPath}/resources/images/section01BgTest5.png") no-repeat;
		background-size: contain;
		background-position: top; */
	}
	
	#section1 > img {
		width: 100%;
		/* height: 100%; */
	}
	
	#section2 {
		width: 100%;
		/* height: 100%; */
		padding: 0 4%;
		padding-bottom: 40px;
	}
	
	.section2ContentWrap {
		width: 95%;
		/* height: 100%; */
		margin: 0 auto;
		overflow: hidden;
		text-align: center;
		padding-left: 2%;
	}
	.mobileSection2ContentWrap{
		display:none;
	}
	.section2Content {
		float: left;
		width: 47%;
		/* height: 100%; */
		margin-right: 2%;
		margin-bottom:20px;
	}
	
	.section2Content:last-child {
		margin: 0;
	}
	
	.section2Content > img {
		width: 85%;
		box-shadow: 3px 3px 30px 2px rgba(1, 1, 1, 0.3);
	}
	
	.section2Content > ul {
		width: 100%;
		margin-top: 8%;
	}
	
	.section2Content > ul > li {
		font-size: 1.5vh;
		margin-top: 3%;
		font-weight: 500;
		color: black;
		text-align: center;
	}
	
	#section3 {
		width: 100%;
		height: 1024px;
		background:	url("${pageContext.request.contextPath}/resources/images/section3Bg.png") no-repeat;
		background-size: cover;
		position: relative;
	}
	#map{
		height:65% !important;
	}
	.section3Content {
		width: 100%;
		position: absolute;
		top: 73%;
	}
	
	.section3Content>ul {
		width: 90%;
		margin: 0 auto;
		overflow: hidden;
	}
	
	.section3Content > ul > li {
		float: left;
		width: 25%;
		text-align: center;
	}
	
	.section3Content > ul > li > img {
		width: 80px;;
	}
	
	.section3Content > ul > li > p {
		color: #fff;
		font-size: 20px;
		margin-top: 20px;
	}
	.section3Content > ul > li > p:last-child{
		font-size:17px;
	}
	
	#section4 {
		width: 100%;
		/* height:105%; */
		background: #f2f6f9;
		padding-bottom: 40px;
	}
	
	.section4ContentWrap {
		width: 75%;
		/* height: 100%; */
		margin: 0 auto;
	}
	
	.section4ContentWrap ul {
		width: 100%;
		margin: 0 auto;
		overflow: hidden;
		
	}
	
	.section4ContentWrap ul > li {
		float: left;
		width: 40%;
		margin-right: 19.6%;
		text-align: center;
		background: #fff;
		margin-bottom: 2%;
	}
	.section4ContentWrap ul > li:nth-child(even){
		margin:0;
	}
	.section4ContentWrap ul > li:last-child {
		margin: 0;
	}
	
	.section4ContentWrap ul > li > img {
		width: 100%;
		height:135px;
	}
	
	.section4ContentWrap ul > li > p {
		font-size: 1.9vh;
		width: 100%;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
		margin: 5% 0;
	}
	
	.section4ContentWrap > p {
		width: 100%;
		text-align: center;
		margin-top:3%;
	}
	
	.section4ContentWrap > p > a {
		font-size: 23px;
		width: 200px;
		margin: 0 auto;
		background: black;
		color: #fff;
		padding: 5px 7px;
	}
	
	.section4ContentWrap > p > a:hover {
		font-weight: 600;
	}
	
	#section5 {
		width: 100%;
		height: 760px;
		background: url("${pageContext.request.contextPath}/resources/images/section5BgTest.png") no-repeat;
		background-size: cover;
		background-position: center;
		padding: 0 8%;
		text-align: center;
	}
	
	#section5 > img {
		width: 16%;
	}
	.topTxtSlider{
		display:none;
	}
	.topTxtSlider_tb {
		width: 100%;
		margin-top: 10%;
	}
	
	.topTxtSlider_tb p {
		font-size: 2.3vh;
		margin-top: 20px;
		font-weight: 600;
	}
	
	.footer {
		width: 100%;
		margin-top:30%;
	}
	#section6{
		width:100%;
		height:10%;
		background: #999;
		font-size: 2vh;
		text-align: center;
		padding:1% 0;
	}
}
@media only screen and (min-width: 320px) and (max-width: 767px){
	header{
		display:none;
	}
	.mHeader{
		width:100%;
		background:#f1f1f1;
		position:fixed;
		top:0;
		z-index: 9999;
	}
	section{
		width:100%;
		padding-top:57px;
	}
	.sectionTitle{
		width:100%;
		text-align: center;
		font-size:25px;
		padding:20px 0;
	}
	#section1{
		width:100%;
	}
	#section1 > img{
		width:100%;
	}
	#section2{
		width:100%;
		padding:0 2%;
		padding-bottom:5%;
		overflow:hidden;
	}
	.mobileSection2ContentWrap{
		width:100%;
	}
	.section2ContentWrap{
		display:none;
	}
	.section2Content{
		width:48%;
		float:left;
		margin-right:2%;
		padding-bottom:5%;
	}
	.sction2Content:nth-child(even){
		margin:0;
	}
	.section2Content > img{
		width:100%;
		margin:0 auto;
	}
	.section2Content > ul{
		width:100%;
	}
	.section2Content > ul > li{
		font-size:14px;
		text-align: center;
		margin-top:11px;
		font-weight:600;
	}
	#section3{
		width:100%;
		background:	url("${pageContext.request.contextPath}/resources/images/section3Bg.png") no-repeat;
		background-size: cover;
	}
	#map{
		height:400px !important;
	}
	.section3Content{
		width:100%;
		padding:10px 0;
	}
	.section3Content > ul{
		width:100%;
	}
	.section3Content > ul > li{
		width:72%;
		margin: 10px auto;
		overflow:hidden;
	}
	.section3Content > ul > li > img{
		width:30px;
		float:left;
	}
	.section3Content > ul > li > p{
		width:80%;
		float:right;
		color:#fff;
		font-size:15px;
	}
	#section4{
		width:100%;
		padding:0 2%;
		background: #f2f6f9;
	}
	.section4ContentWrap{
		width:100%;
		padding-bottom:20px;
	}
	.section4ContentWrap > ul {
		width:100%;
		overflow: hidden;
	}
	.section4ContentWrap > ul > li{
		width: 48%;
		height:190px;
	    float: left;
	    margin-right: 2%;
	    margin-bottom:10px;
	    background: #fff;
	}
	.section4ContentWrap > ul > li > img{
		width:100%;
	}
	.section4ContentWrap > ul > li > p{
		width:100%;
		/* text-align: center; */
		font-size:14px;
		padding:10px 15px;
	}
	.section4ContentWrap > p {
		width: 100%;
		text-align: center;
		margin-top:3%;
	} 
	
	.section4ContentWrap > p > a {
		font-size: 15px;
		width: 200px;
		margin: 0 auto;
		background: black;
		color: #fff;
		padding: 5px 7px;
	}
	#section5{
		width:100%;
		padding:0 2%;
		text-align: center;
	}
	#section5 > img{
		width:25%;
	}
	.topTxtSlider{
		display:none;
	}
	.topTxtSlider_tb{
		margin:20px 0;
	}
	.topTxtSlider_tb p{
		margin-bottom:5px;
		font-size:14px;
	}
	#section6{
		background: #999;
		text-align: center;
		padding:2% 0;
	}
}
</style>
<script>
	$(function() {
		$(".topTxtSlider").slick({
			arrows : false,
			dots : false,
			speed : 4000,
			slidesToShow : 4,
			infinite : true,
			autoplay : true,
			autoplaySpeed : 0,
			edgeFriction : 0.15,
		});
		$(".topTxtSlider_tb").slick({
			arrows : false,
			dots : false,
			speed : 4000,
			slidesToShow : 2,
			infinite : true,
			autoplay : true,
			autoplaySpeed : 0,
			edgeFriction : 0.15,
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="include/pHeader.jsp"></jsp:include>
	</header>
	<div class="mHeader">
		<jsp:include page="include/mHeader.jsp"></jsp:include>
	</div>
	<section id="main">
		<div id="section1" class="sectionDiv">
			<img src="${pageContext.request.contextPath}/resources/images/section01BgTest5.png">
		</div>
		<div id="section2" class="sectionDiv">
			<h1 class="sectionTitle">취급품목</h1>
			<div class="section2ContentWrap">
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img01.png">
					<ul>
						<li>내비게이션 터치매립</li>
						<li>DMB</li>
						<li>헤드레스트TV</li>
						<li>어라운드 뷰(360도 카메라)</li>
						<li>순정내비게이션 터치수리</li>
						<li>순정모니터 수리</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img02.png">
					<ul>
						<li>전후방카메라</li>
						<li>천장형모니터</li>
						<li>모빌아이(첨단운전자보조시스템)</li>
						<li>블루투스 장착</li>
						<li>MMI수리</li>
						<li>차량용 스마트폰 충전장치</li>
						<li>체인저 수리</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img03.png">
					<ul>
						<li>광각미러(사각지대 해결)</li>
						<li>썬팅</li>
						<li>광택 유리막</li>
						<li>전후방센스감지기</li>
						<li>측후방경보기(사각지대알림경보)</li>
						<li>라이트복원</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img04.png">
					<ul>
						<li>블랙박스</li>
						<li>하이패스</li>
						<li>카오디오</li>
						<li>스피커, 앰프</li>
						<li>차량매트</li>
						<li>실내복원</li>
					</ul>
				</div>
			</div><!-- section2ContentWrap end -->
			<div class="mobileSection2ContentWrap">
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img01.png">
					<ul>
						<li>내비게이션 터치매립</li>
						<li>DMB</li>
						<li>헤드레스트TV</li>
						<li>어라운드 뷰(360도 카메라)</li>
						<li>순정내비게이션 터치수리</li>
						<li>순정모니터 수리</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img02.png">
					<ul>
						<li>전후방카메라</li>
						<li>천장형모니터</li>
						<li>모빌아이(운전자보조시스템)</li>
						<li>블루투스 장착</li>
						<li>MMI수리</li>
						<li>차량용 스마트폰 충전장치</li>
						<li>체인저 수리</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img03.png">
					<ul>
						<li>광각미러(사각지대 해결)</li>
						<li>썬팅</li>
						<li>광택 유리막</li>
						<li>전후방센스감지기</li>
						<li>측후방경보기(사각지대경보)</li>
						<li>라이트복원</li>
					</ul>
				</div>
				<div class="section2Content">
					<img src="${pageContext.request.contextPath}/resources/images/section2_img04.png">
					<ul>
						<li>블랙박스</li>
						<li>하이패스</li>
						<li>카오디오</li>
						<li>스피커, 앰프</li>
						<li>차량매트</li>
						<li>실내복원</li>
					</ul>
				</div>
			</div><!-- mobileSection2ContentWrap end -->
		</div><!-- section2 end -->
		
		<div id="section3" class="sectionDiv">
			<div id="map" style="width: 100%; height: 50%; margin: 0 auto;"></div>
			<script>
				var mapOptions = {
					center : new naver.maps.LatLng(35.840200, 128.615696),
					zoom : 12
				};

				var map = new naver.maps.Map('map', mapOptions);

				var marker = new naver.maps.Marker({
					position : new naver.maps.LatLng(35.840200, 128.615696),
					map : map
				});
			</script>
			<div class="section3Content">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/section3Icon01.png">
						<p>위 치</p>
						<p>대구광역시 수성구 청수로 70 (상동)</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section3Icon02.png">
						<p>영업시간</p>
						<p>AM 09:00 - PM 06:00</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section3Icon03.png">
						<p>전화번호</p>
						<p>053 761 0202</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section3Icon04.png">
						<p>메 일</p>
						<p>abcdefghi@naver.com</p>
					</li>
				</ul>
			</div><!-- section3Content end -->
		</div><!-- section3 end -->
		<div id="section4" class="sectionDiv">
			<h1 class="sectionTitle">장착사례</h1>
			<div class="section4ContentWrap">
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img01.png">
						<p>밴츠C200 네비게이션 작업</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img02.png">
						<p>폭스바겐 티구안 내비게이션</p><!--  TIGUAN RUNZ FS2 Voice VW -->
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img03.png">
						<p>벤츠S63.AMG 내비.헤드레스트모니터</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img04.png">
						<p>벤츠S500 헤드레스트, DMB 작업</p>
					</li>
				</ul>
				<ul>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img05.png">
						<p>아우디 Q7 블랙박스 작업</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img06.png">
						<p>bmw 745Li 네비게이션, 후방카메라</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img07.png">
						<p>폭스바겐 폴로 후방카메라장착</p>
					</li>
					<li><img src="${pageContext.request.contextPath}/resources/images/section4img08.png">
						<p>bmw 740Li 카메트, 블랙박스 QXD950View</p></li>
				</ul>
				<p>
					<a href="">장착사례 더보기</a>
				</p>
			</div>
			<!-- section4ContentWrap end -->
		</div><!-- section4 end -->
		<!-- section4 end -->
		<div id="section5" class="sectionDiv">
			<h1 class="sectionTitle">취급브랜드</h1>
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand01.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand02.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand03.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand04.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand05.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand06.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand07.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand08.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand09.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand10.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand11.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand12.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand13.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand14.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand15.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand16.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand17.png">
			<img src="${pageContext.request.contextPath}/resources/images/section5Brand18.png">
			<div class="topTxtSlider">
				<div>
					<p>폭스바겐 내비게이션 AS지정점</p>
					<p>아우디 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>포드 내비게이션 AS지정점</p>
					<p>링컨 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>캐딜락 내비게이션 AS지정점</p>
					<p>볼보 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>재규어 내비게이션 AS지정점</p>
					<p>랜드로버 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>포르쉐 내비게이션 AS지정점</p>
					<p>닛산 내비게이션 AS지정점</p>
				</div>
				<div> 
					<p>인피니티 내비게이션 AS지정점</p>
					<p>현대기아 썬팅 지정점</p>
				</div>
			</div><!-- topTxtSlider end -->
			<div class="topTxtSlider_tb">
				<div>
					<p>폭스바겐 내비게이션 AS지정점</p>
					<p>아우디 내비게이션 AS지정점</p>
					<p>포드 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>링컨 내비게이션 AS지정점</p>
					<p>캐딜락 내비게이션 AS지정점</p>
					<p>볼보 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>재규어 내비게이션 AS지정점</p>
					<p>랜드로버 내비게이션 AS지정점</p>
					<p>포르쉐 내비게이션 AS지정점</p>
				</div>
				<div>
					<p>닛산 내비게이션 AS지정점</p> 
					<p>인피니티 내비게이션 AS지정점</p>
					<p>현대기아 썬팅 지정점</p>
				</div>
			</div><!-- topTxtSlider end -->
			<!-- <div class="footer">
				소재지 : 대구광역시 수성구 청수로 70(상동) | 대표 : 이원희<br> 전화번호 : 053.761.0202 | 사업자번호 : 502-28-18752
			</div>  -->
		</div><!-- section5 end -->
		<div id="section6" class="sectionDiv">
			소재지 : 대구광역시 수성구 청수로 70(상동) | 대표 : 이원희<br> 전화번호 : 053.761.0202 | 사업자번호 : 502-28-18752
		</div>
	</section>
</body>
</html>