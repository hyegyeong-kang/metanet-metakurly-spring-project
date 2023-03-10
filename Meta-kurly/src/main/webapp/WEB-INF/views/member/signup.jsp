<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var ="path" value = "${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sign Up</title>
</head>
<body>

<h2>회원가입</h2>
	
	<form action="${path}/member/signup" id="signupForm" method="post">
		아이디:<input type="text" name="userId"><br/>
		비밀번호:<input type="password" name="password"><br/>
		이름:<input type="text" name="name"><br/>
		이메일:<input type="text" name="email"><br/>
		전화번호:<input type="text" name="phone"><br/>
		주소:<input type="text" name="address"><br/>
		<button class="btn btn-success" type="submit" id="submit">가입</button>
		
	</form>

</body>

</html>