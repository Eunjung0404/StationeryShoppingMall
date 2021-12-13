<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="loginform">
	<ul>
		<li><input type="button" value="회원로그인" id="btn" onclick="userclickEvent()"></li>
		<li><input type="button" value="관리자로그인" id="btn" onclick="adminclickEvent()"></li>

	</ul>

<div id="inputform">
	<div id="userlogin">
		<form method="post" action="">
			아이디<input type="text" name="id"><br> 로그인<input type="password" name="pwd">
			<input type="submit" value="로그인">
		</form>
				
	</div>
	<div id="adminlogin">
		<form method="post" action="<%=request.getContextPath()%>/admin/login">
		아이디<input type="text" name="id"> <br> 로그인<input type="password" name="pwd">
		<input type="submit" value="로그인">
		</form>
		
	</div>

</div>

</div>

<script type="text/javascript">
	var btn1 = document.getElementById("btn1");
	var btn2 = document.getElementById("btn2");

	var div1 = document.getElementById("userlogin");
	var div2 = document.getElementById("adminlogin");
	function userclickEvent() {
		div1.style.display = "block";
		div2.style.display = "none";

	};
	function adminclickEvent() {
		div1.style.display = "none";
		div2.style.display = "block";

	};
</script>