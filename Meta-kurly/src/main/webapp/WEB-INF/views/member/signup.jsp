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

<h2>ȸ������</h2>
	
	<form action="/member/signup" method="post">
		���̵�:<input type="text" name="userId"><br/>
		��й�ȣ:<input type="password" name="password "><br/>
		�̸�:<input type="text" name="name"><br/>
		�̸���:<input type="text" name="email"><br/>
		��ȭ��ȣ:
		<select name="phone">
			<option>010</option>
			<option>02</option>
			<option>031</option>
			<option>051</option>
		</select>
		- <input type="text" name="phone-m" size="5">
		- <input type="text" name="phone-l" size="5">
		
		<br/>
		�ּ�:<input type="text" name="address"><br/>
		<input type="submit" value="����">
		
	</form>

</body>
</html>