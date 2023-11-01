<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<%@include file="./includes/header.jsp"%>
<body>
	<div class="container">
		<h2>로그인</h2>

		<div class="form-floating mb-3">
			<input type="text" class="form-control" id="floating_input_login_id"
				name="username"> <label for="floating_input_login_id">ID</label>
		</div>
		<div class="form-floating mb-3">
			<input type="password" class="form-control"
				id="floating_input_password" name="password"> <label
				for="floating_input_password">Password</label>
		</div>
		<button id="submit" class="btn btn-primary">전송</button>
		<a href="/" class="btn btn-danger">뒤로가기</a>

	</div>
</body>
<script>
submit.addEventListener("click", async function(){
	let obj = new Object();
	obj.username = floating_input_login_id.value;
	obj.password = floating_input_password.value;
	const res = await fetch( "/user/login", {
		method: "post",
		headers:{
			'Content-Type': 'application/json'
		},
		body: JSON.stringify( obj )
		})
	const data = await res.json();
	
	if( data ){
			alert("로그인 성공");
			location.href="/";
	}else{
		alert( " 로그인 간 에러 발생 잠시후 다시 시도해주세요." );
	}
	
	
	
	
	})
	
</script>
<%@include file="includes/footer.jsp"%>
</html>
