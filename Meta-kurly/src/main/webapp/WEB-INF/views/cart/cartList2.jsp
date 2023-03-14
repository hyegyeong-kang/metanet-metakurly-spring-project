<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
<h2>장바구니</h2>
<table>
	<tr>
		<td colspan="4">장바구니 상품 목록</td>
	</tr>
	<tr>
		<th>상품명</th>
		<th>가격</th>
		<th>수량</th>
		<th>합계</th>
	</tr>
	<c:set var="tot" value="${0}"/>
	<c:forEach items="${list}" var="cart">
			<tr>
				<td class="td_width cart_info_td">
					<input type="checkbox" id="chk_list" name="chk_list" value="list" class="cart_checkbox" checked="checked"/>
					<input type="hidden" class="individual_price_input" value="${cart.productList[0].name}">
					<input type="hidden" class="individual_totalPrice_input" value="${cart.productList[0].price}">
					<input type="hidden" class="individual_count_input" value="${cart.quantity}">
				</td>	
					
<%-- 				<td><c:out value="${cart.productList[0].name}" /></td>
				<td><c:out value="${cart.productList[0].price}" /></td>
				<td><c:out value="${cart.quantity}" /></td> --%>
				<td>
					${cart.quantity * cart.productList[0].price }
					<c:set var="tot" value="${tot + (cart.quantity * cart.productList[0].price) }"/>
					<a href="cartDelete?index=${stat.index }"></a>
				</td>
				<td class="deleteBtn"><button>삭제</button></td>
			</tr>
		</c:forEach>
	<tr>
		<td colspan="4" align="right"> 총 구입 금액 : ${tot }원</td>
	</tr>
</table>
<br>
<p class="order">

<button type="button" class="order_btn">주문하기</button>


<script>

$(document).ready(function(){
	setTotalInfo();
})

	$(".individual_cart_checkbox").on("change", function(){
		// 총 주문 정보 셋팅
		setTotalInfo($(".cart_info_td"));
	});
	
	$(".all_check_input").on("click", function(){
		if($".all_check_input").prop("checked")){
			$(".individual_cart_checkbox").attr("checked", true);
		} else {
			$(".individual_cart_checkbox").attr("checked", false);
		}
		
		setTotalInfo($(".cart_info_td"));
	});

	function setTotalInfo() {
		
		let totalPrice = 0;
		let totalCount = 0;
		let finalTotalPrice = 0;
		
		
		$(".cart_info_td").each(function(index, element){
			
			if($(element).find(".individual_cart_checkbox").is(":checked") === true) {
				
				// 총 가격
				totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
				// 총 갯수
				totalCount += parseInt($(element).find(".individual_count_input").val());
			}
		});
			
	});
		
		
		
		
	}



</script>


</body>
</html>
<%@include file="../includes/footer.jsp"%>