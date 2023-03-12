<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<form class="buyForm" method="post">
		<input type="text" id="m_id" name="m_id" /><br>
		<input type="text" id="p_id" name="p_id" /><br> 
		<input type="number" min="1" max="10" step="1" value="1" id="number" name="quantity" /><br>
		<button type="submit" id="submitBtn">주문하기</button>
	</form>

	<form class=".form" method="post">
		<input type="hidden" name="p_id" value="${p_id}">
		<input type="hidden" name="quantity">
	</form>
	
	<script type="text/javascript">
		$("#m_id").change(function() {
			$("form").attr("action", "/orders/" + $("#m_id").val());
		});
	</script>

</body>
</html>