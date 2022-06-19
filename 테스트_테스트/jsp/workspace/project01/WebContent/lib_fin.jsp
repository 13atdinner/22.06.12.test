<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Project CSS -->
<link rel="stylesheet" href="./css/style.css" />
<link rel="stylesheet" href="./css/library/library.css" />

<title>라이브러리</title>
</head>

<body>
	<!-- header-->
	<%@ include file="./tags/header.jsp"%>
	<div style="padding: 20px"></div>
	
		<!-- section -->
		<div class="container"
			style="padding: 10px; width: 80%; height: auto; color: white;">
			<!-- 검색 바 -->
			<form class="d-flex" 
			style="margin: 10px;">
				<input class="form-con me-2" type="search"
					placeholder="Search" aria-label="Search"
					style="border-radius: 0.5em; background-color: #2A2A2B; ">
				<button class="btn btn-outline-success" type="submit"
					style="color: #2A2A2B; border-color: #121212;">
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</form>
			<!-- 리스트 메뉴바 -->
			<div class="lib_list">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">게임명</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">플레이타임</span>
			        </div>
				</div>
			</div>
			<!-- 플레이 리스트1 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa1-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">FIFA : 남자는 동그란 것에 환장하지</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">00 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트2 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa2-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">바이오쇼크 : 지금 무료로 다운로드 받으세요 by 에픽게임즈</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">--</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트3 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa4-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">임영웅 전설 : 5060 1픽</span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">1 : 30</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트4 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa5-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">령 제로 : 귀신들아 너넨 손이없니 발이없니 니가찍어 </span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">3 : 00</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
			<!-- 플레이 리스트5 -->
			<div class="lib_container">
				<div class="lib_box1">
					<!-- 이미지 -->
			        <div class="lib_img">
			        	<img src="fifa7-1.png" class="card-img" alt="...">
			        </div>
					<!-- 게임명 -->
			        <div class="lib_gameName">
			        	<span class="name">노네임 : 게임명이 길어지면 어떻게 되는지 보려고 길게 쓰고 있는데 의식의 흐름대로 쓰자니 너무 길어져서 푸터에 닿을거같고 적당히 여기서 한번 끊어볼까 했는데 아직도 칸을 안넘어서 아주 조금만 더 써보겠습니다 </span>
			        </div>
					<!-- 플레이타임 -->
			        <div class="lib_gamePlaytime">
			        	<span class="playtime">9999 : 00</span>
			        </div>
				</div>
				<!-- 실행 버튼 -->
			    <div class="lib_box2">
		        	<button type="button" class="lib-starter">실행</button>
			    </div>
			</div>
		
	</div>
		
	<!-- footer -->
	<%@ include file="./tags/footer.jsp"%>

	<!-- Bootstrap 옵션 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>