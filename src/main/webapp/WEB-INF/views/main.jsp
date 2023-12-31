<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
        <title></title>
        <meta charset="UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=0.5, user-scalable=yes, maximum-scale=1.0">
		<meta name="google-site-verification" content="50FkllZFImXYACu5bVyyDjrJkmFm9NL4-5anvgga8UA" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
		<script src="https://kit.fontawesome.com/97e36fce94.js" crossorigin="anonymous"></script>
		<script srt="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/remixicon@2.2.0/fonts/remixicon.css" rel="stylesheet">
		<link rel="stylesheet" href="../css/main.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="js/main.js"charset="UTF-8"></script>
    </head>
	<body>
		<div class="contents">
			<div class="serchbar">
				<input type="text">
				<i class="fa-solid fa-magnifying-glass" id="searchicon"></i>
			</div>
			<div class="post-area">
				<a class="btn dark write" href="/board/write">글 작성</a>
			</div>
			<div class="board">
				<table id="btable">
					<colgroup>
						<col class="sizeNum">
						<col class="sizeObject">
						<col class="sizeTitle">
					</colgroup>
					<tr class="board-title">
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회 수</th>
					</tr>

				</table>
			</div>
			<div class="paging">
				<ul class="pagination">
					<li class=""><a href="#">&laquo;</a></li>
					<li class=""><a href="#">1</a></li>
					<li class=""><a href="#">2</a></li>
					<li class=""><a href="#">3</a></li>
					<li class=""><a href="#">4</a></li>
					<li class=""><a href="#">5</a></li>
					<li class=""><a href="#">6</a></li>
					<li class=""><a href="#">7</a></li>
					<li class=""><a href="#">8</a></li>
					<li class=""><a href="#">9</a></li>
					<li class=""><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
		
	
	</body>
	<script>
	window.onload = async function(){
		const boards = await fetch( "/boards" );
		let datas = await boards.json();
		console.log( datas );
		for( data of datas ){
			console.log( data );
			//백틱이 안먹네
	
			btable.innerHTML += `<tr class="board-posted">`+
			`<td class="num">`+data.board_id+`</td>`+
			`<td class="writer">`+data.username+`</td>`+
			`<td class="title">`+data.title+`</td>`+
			`<td class="date">`+data.create_date+`</td>`+ 
			`<td class="view">`+data.views+`</td>`+ 
		`</tr>` 
		}
	}
	
	
	</script>
</html>