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
			<th>��ǰ��ȣ</th>
			<th>�귣��</th>
			<th>��ǰ��</th>
			<th>����</th>
			<th>�ֹ�����</th>
		</tr>
		<tr>
			<c:forEach items="${orderlist}" var="order">
			<td><c:out value="${order.m_id}" /></td>
			<td><c:out value="${order.o_id}" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd"
					value="${order.orders_date}" /></td>
			<td><c:out value="${order.status}" /></td>
			<td><c:out value="${order.total_amount}" /></td>
			<td><c:out value="${order.price}" /></td>
			<c:forEach items="${order}" var="detail">
				<c:forEach items="${detail}" var="product">
					<td><c:out value="${product.p_id }" /></td>
					<td><c:out value="${product.brand}" /></td>
					<td><c:out value="${product.name}" /></td>
					<td><c:out value="${product.price}" /></td>
					<td><c:out value="${product.quantity}" /></td>
				</c:forEach>
			</c:forEach>
			</c:forEach>
		</tr>
	</table>
</body>
</html>