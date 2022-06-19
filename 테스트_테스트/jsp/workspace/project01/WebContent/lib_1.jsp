<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Hello, world!</title>
<style>

    .flex-container{
        display: inline-flex;
        justify-content: space-between;
        width: 1100px;
        height: 100px;
        margin: 5px;
        border: 2px solid black;
    }
    .flex-box1{
        display: inline-flex;
    	width: 100%;
    	height: 95%;
    	margin: 2px;
    	border: 2px solid skyblue;
    }
    .flex-box2{
    	width: 100%;
    	height: 95%;
    	margin: 2px;
    	border: 2px solid skyblue;
    	float: right;
    }
    .flex-item1{
        width: 200px;
        height: 95%;
        margin: 2px;
        padding: 2px;
        border: 2px solid green;
        text-align: center;
    }
    .flex-item2{
        width: 400px;
        height: 95%;
        margin: 2px;
        padding: 2px;
        border: 2px solid green;
        text-align: center;
    }
    .flex-item3{
        width: 200px;
        height: 95%;
        margin: 2px;
        padding: 2px;
        border: 2px solid green;
        text-align: center;
    }
    .flex-item4{
        width: 200px;
    	height: 95%;
        margin-left: auto;
        padding: 2px;
        border: 2px solid green;
        text-align: center;
    }
    .card-start{
    }
	.card-img{
		width: 50%;
		height: 100%;
		margin: auto;
	}
</style>
</head>
<body>

	<!-- header-->
	<%@ include file="./tags/header.jsp"%>
	<div style="padding: 20px"></div>
	
	<!-- section -->
	<div class="flex-container">
	
		<div class="flex-box1">
	<!-- 		이미지 -->
	        <div class="flex-item1">
	        	<img src="fifa1-1.png" class="card-img" alt="...">
	        </div>
	<!-- 		게임명 -->
	        <div class="flex-item2">
	        	게임명
	        </div>
	<!-- 		플레이타임 -->
	        <div class="flex-item3">
	        	<h4 class="card-time">플레이타임</h4>
	        </div>
		</div>
        
        
<!-- 		실행 버튼 -->
	    <div class="flex-box2">
	        <div class="flex-item4">
	        	<button type="button" class="btn btn-primary btn-lg">실행</button>
	        </div>
	    </div>
	    
	    
    </div>
    
    <!-- footer -->
	<%@ include file="./tags/footer.jsp"%>
    
    
<!-- 	<div class="flex-container"> -->
<!--         <div class="flex-item1"> -->
<!--         	<img src="fifa1-1.png" class="card-img" alt="..."> -->
<!--         </div> -->
<!--         <div class="flex-item2"> -->
<!--         	<h3 class="card-name">게임명</h3> -->
<!--         </div> -->
<!--         <div class="flex-item3"> -->
<!--         	<h4 class="card-time">플레이타임</h4> -->
<!--         </div> -->
<!--         <div class="flex-item4"> -->
<!--         	<button type="button" class="btn btn-primary btn-lg">실행</button> -->
<!--         </div> -->
<!--     </div> -->
<!-- 	<div class="flex-container"> -->
<!--         <div class="flex-item1"> -->
<!--         	<img src="fifa1-1.png" class="card-img" alt="..."> -->
<!--         </div> -->
<!--         <div class="flex-item2"> -->
<!--         	<h3 class="card-name">게임명</h3> -->
<!--         </div> -->
<!--         <div class="flex-item3"> -->
<!--         	<h4 class="card-time">플레이타임</h4> -->
<!--         </div> -->
<!--         <div class="flex-item4"> -->
<!--         	<button type="button" class="btn btn-primary btn-lg">실행</button> -->
<!--         </div> -->
<!--     </div> -->
<!-- 	<div class="flex-container"> -->
<!--         <div class="flex-item1"> -->
<!--         	<img src="fifa1-1.png" class="card-img" alt="..."> -->
<!--         </div> -->
<!--         <div class="flex-item2"> -->
<!--         	<h3 class="card-name">게임명</h3> -->
<!--         </div> -->
<!--         <div class="flex-item3"> -->
<!--         	<h4 class="card-time">플레이타임</h4> -->
<!--         </div> -->
<!--         <div class="flex-item4"> -->
<!--         	<button type="button" class="btn btn-primary btn-lg">실행</button> -->
<!--         </div> -->
<!--     </div> -->
<!-- 	<div class="flex-container"> -->
<!--         <div class="flex-item1"> -->
<!--         	<img src="fifa1-1.png" class="card-img" alt="..."> -->
<!--         </div> -->
<!--         <div class="flex-item2"> -->
<!--         	<h3 class="card-name">게임명</h3> -->
<!--         </div> -->
<!--         <div class="flex-item3"> -->
<!--         	<h4 class="card-time">플레이타임</h4> -->
<!--         </div> -->
<!--         <div class="flex-item4"> -->
<!--         	<button type="button" class="btn btn-primary btn-lg">실행</button> -->
<!--         </div> -->
<!--     </div> -->

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>
</html>



