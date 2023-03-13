<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
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
		<tr>

			<td><c:out value="${order.m_id}" /></td>
			<td><c:out value="${order.o_id}" /></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd"
					value="${order.orders_date}" /></td>
			<td id="statusTd"><c:out value="${order.status}" /></td>
			<td><c:out value="${order.total_amount}" /></td>
			<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${order.price}" /></td>
		</tr>
	</table>
	<br>
	<table>
		<tr>
			<th>��ǰ��ȣ</th>
			<th>�귣��</th>
			<th>��ǰ��</th>
			<th>����</th>
			<th>�ֹ�����</th>
		</tr>

		<c:forEach items="${order.orderDetailList}" var="detail">
			<tr>
				<td><c:out value="${detail.productDTO.p_id}" /></td>
				<td><c:out value="${detail.productDTO.brand}" /></td>
				<td><c:out value="${detail.productDTO.name}" /></td>
				<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${detail.productDTO.price}" /></td>
				<td><c:out value="${detail.quantity}" /></td>
			</tr>
		</c:forEach>
	</table>
	<form id="postForm" action="" method="post">
		<button id="cancelBtn" type="submit">�ֹ� ���</button>
	</form>
	
	
	<script type="text/javascript">
		$(function(){
			var status = "${order.status}";
			$("#cancelBtn").hide();
			if(status === "�����Ϸ�"){
				$("#cancelBtn").show();
				$("#postForm").attr("action", "/orders/cancel/<c:out value='${order.o_id}'/>");
			}
		});
		/* $("#cancelBtn").click(function(){
			$("#postForm").submit();
			 $.ajax({
				type: 'patch',
				url: '/orders/cancel/${order.o_id}',
				success: function(){
					alert("success");
				}
			}); 
		}); */
	</script>
</body>
</html>