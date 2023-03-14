<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method='post' action="/orders/payment">
		<div>
			<div>회원정보</div>
<%-- 			<input type='text' value='<c:out value="${member.name}"/>' readonly="readonly">
			<input type='text' value='<c:out value="${member.phone}"/>' readonly="readonly">
			<input type='text' value='<c:out value="${member.address}"/>' readonly="readonly"> --%>
			<input type='text' value='<c:out value="${memberId}"/>' readonly="readonly">
		</div>
		<div>
			<div>주문상품</div>
			<%-- <img alt="" src="<c:out value='${product.img_url}'/>"><br>
			<c:out value="${product.brand}"/><br>
			<c:out value="${product.name}"/><br>
			<c:out value="${product.quantity}"/><br>
			<c:out value="${product.price}"/> --%>
			<c:out value="${productId}"/><br>
			<c:out value="${quantity}"/>
		</div>
		<div>
			<h4>결제정보</h4>
			<%-- <h5>보유한 적립금</h5>
			<c:out value="${member.point}"/><br>
			<h5>사용할 적립금</h5>
			<input type='text' name='usePoint'>
			<h5>결제 금액</h5>
			<p> --%>
			<h5>결제 방법</h5>
			<select name="paymentMethod" id="method">
    			<option value="card">카드</option>
    			<option value="account">계좌이체</option>
    		</select>

			<div>
				<input type='submit' value="결제">
			</div>
		</div>
	</form>
</body>
</html>