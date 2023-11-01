
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="./includes/header.jsp"%>
<body>

<div class="container">

    <h2>회원 가입</h2>
<%--    TODO action을 채워 넣으세요--%>

        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floating_input_login_id" name="loginId">
            <label for="floating_input_login_id">ID</label>
        </div>

        <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floating_input_password" name="password" >
            <label for="floating_input_password">Password</label>
        </div>

        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floating_input_email" name="email">
            <label for="floating_input_email">Email address</label>
        </div>

        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floating_input_user_name" name="name">
            <label for="floating_input_user_name">username</label>
        </div>

        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floating_input_nickname" name="nickname">
            <label for="floating_input_nickname">nickname</label>
        </div>
        <button class="btn btn-primary" id="submit">전송</button>
        <a href="/" class="btn btn-danger">뒤로가기</a>

</div>


</body>
<script>
	submit.addEventListener( "click" , async function(){
		let obj = new Object();
		obj.username=floating_input_login_id.value;
		obj.password=floating_input_password.value;
		obj.email=floating_input_email.value;
		obj.name=floating_input_user_name.value;
		obj.nickname=floating_input_nickname.value;	
		console.log( obj );
		/*
		verification 필요.
		*/
		
		
		const res = await fetch( "/user/join", {
			method: "post",
			headers:{
				'Content-Type': 'application/json'
			},
			body: JSON.stringify( obj )
		})
		
		const data = await res.json();
		
		if( data ){

			alert("회원가입에 성공하였습니다.");
			location.href="/";

		}else{
			alert("회원가입 간 에러가 발생하였습니다. 다시 시도해주세요.");
		}
		
		
	})

</script>
<%@include file="includes/footer.jsp"%>
</html>
