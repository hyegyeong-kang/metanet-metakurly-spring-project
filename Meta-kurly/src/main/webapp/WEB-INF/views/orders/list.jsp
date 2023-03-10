<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>ȸ����ȣ</th>
			<th>�ֹ���ȣ</th>
			<th>�ֹ���</th>
			<th>����</th>
			<th>�� �ֹ�����</th>
			<th>�� ����</th>
		</tr>
		<c:forEach items="${list}" var="order">
			<tr>
				<td><c:out value="${order.m_id}" /></td>
				<td><c:out value="${order.o_id}" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd"
						value="${order.orders_date}" /></td>
				<td><c:out value="${order.status}" /></td>
				<td><c:out value="${order.total_amount}" /></td>
				<td><c:out value="${order.price}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>