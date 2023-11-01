<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <title>게시판 쓰기 템플릿</title>
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
		<link rel="stylesheet" href="../css/write.css">
		<link rel="stylesheet" href="../css/write.css">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Jua&display=swap" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
    </head>
	<body>
		<div class="wrapper">

			<div class="section title">
				<input type="text" placeholder="제목" id="title">
			</div>
			<div class="section content">
				<textarea placeholder="내용" id="content"></textarea>
			</div>
			
			<div class="section footer">
				<a class="btn cancel" id="cancel" href="/boardPage">취소</a>
				<a class="btn save dark" id="submit">출제</a>
			</div>
		</div>
	</body>
	<script>
	submit.addEventListener("click", async function(){
		let obj = new Object();
		obj.title = title.value;
		obj.content = content.value;
		const res = await fetch( "/board", {
			method: "post",
			headers: {
				'Content-Type':'application/json'
			},
			body: JSON.stringify(obj)
			
		
		})
		
		const result = await res.json();
		
		if( result ){
			alert("등록 성공");
			
		}else{
			alert("에러 발생")
		}
	})
	
	
	</script>
</html>