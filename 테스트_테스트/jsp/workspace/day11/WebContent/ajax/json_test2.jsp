<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Ajax를 이용한 실시간 순위 나타내기</h1>
	<table border="1">
		<tr>
			<th>실시간 검색 순위</th>
			<th>키워드</th>
		</tr>
		<tr>
			<td id="td1">순위</td>
			<td id="td2">키워드</td>
		</tr>
	</table>
	
	<script>
// 		[내풀이] : 이렇게 하면 for문 맨끝에 5번째 것 밖에 출력이 안됨..
// 		let xhr = new XMLHttpRequest;
// 		xhr.open("GET","data2.json",true);
// 		xhr.send();
// 		xhr.onreadystatechange = function(){
// 			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
// 				let obj = JSON.parse(xhr.responseText);
// 				for(let i=0; i<obj.search_word.length; i++){
// 					document.getElementById("td1").innerHTML = obj.search_word[i].rank;
// 					document.getElementById("td2").innerHTML = obj.search_word[i].name;
// 				}
// 			}
// 		}
		
// 		[강사님]
		let word = new Array();		// 파싱된 배열의 name값을 담아줄 배열변수
		let obj = "";
		let xhr = new XMLHttpRequest;
		xhr.open("GET","data2.json",true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200){
// 				alert(JSON.parse(xhr.responseText));	// search_word:[]
				obj = JSON.parse(xhr.responseText);
// 				alert(obj.search_word);					// [rank:값, name:값]
				// 파싱된 obj에서 search_word라는 key를 가지고 있는 value를 보면 [{},{},{},{},{}]가 나옴, 즉 배열이다
				
				for(let i=0; i<obj.search_word.length; i++){		// for문에선 파싱된 name값을 배열에 담아줄 작업만 처리
					// obj.search_word 배열과 각 방에는 또 json들이 담겨있다 -> {"rank":"1","name":"똥"}
					// 각 방에 json들에서 name키로 담겨있는 검색어를 꺼내서 word배열에 담아준다
					word[i] = obj.search_word[i].name;
				}
			}
		}
		
		let i=0;
		let interval = setInterval(function(){
			// 0,1,2,3,4 -> 5가 되는 순간 다시 0이 되어야 한다 (ex:검색어 순위가 총 5개인데 5번이 되면 다시 1번이 떠야 하므로)
			i = i%obj.search_word.length;		// i를 다시 0으로 만드는 작업
			document.getElementById("td1").innerHTML = i+1;
			document.getElementById("td2").innerHTML = word[i];
			i++;
		},2000);
	</script>
</body>
</html>