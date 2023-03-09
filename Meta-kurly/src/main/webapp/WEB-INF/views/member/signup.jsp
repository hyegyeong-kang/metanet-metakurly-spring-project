<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Sign Up</title>
</head>
<body>

<h2>회원가입</h2>
	
	<form action="/member/signup" method="post">
		아이디:<input type="text" name="userId"><br/>
		비밀번호:<input type="password" name="password "><br/>
		이름:<input type="text" name="name"><br/>
		이메일:<input type="text" name="email"><br/>
		전화번호:
		<select name="phone">
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>
		</select>
		- <input type="text" name="phone-m" size="5">
		- <input type="text" name="phone-l" size="5">
		
		<br/>
		주소:<input type="text" name="address"><br/>
		<input type="submit" value="가입">
		
	</form>

</body>
</html>