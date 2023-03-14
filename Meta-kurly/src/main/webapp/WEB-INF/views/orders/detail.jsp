<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/login/login.css">

  </header>

  <main>
    <div class="page-section">
      <div class="container">
      	<!--중단 상품리스트 -->

	<div class="widget-box">
		<h4 class="widget-title">주문상세</h4>
		<h6 class="post-title">주문번호 <c:out value="${order.o_id}"/></h6>
		결제날짜 <fmt:formatDate pattern="yyyy-MM-dd" value="${order.orders_date}" />  <c:out value="${order.status}"/>
		<div class="divider"></div>
		
		<c:forEach items="${order.orderDetailList}" var="detail">
			<div class="blog-item">
					<a class="post-thumb" href="">
						<img src="/resources/img/blog/blog-1.jpg" alt="">
					</a>
					<div class="content">
						<%-- <h6 class="post-title">주문번호 <c:out value="${order.o_id}"/></h6> --%>
						<div class="meta" style="width:300px">
							<c:out value="${detail.productDTO.brand}"/> <c:out value="${detail.productDTO.name}"/>
							<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${detail.productDTO.price}" /></strong> <c:out value="${detail.quantity}"/>개</a>
							<div><button type="submit" id="reviewWriteBtn">리뷰 작성</button>
							<button type="submit" id="reviewReadBtn">작성리뷰 보기</button></div>
							<!-- <a href="#"><span class="mai-person"></span> Admin</a> -->
							<%-- 결제날짜 <fmt:formatDate pattern="yyyy-MM-dd" value="${order.orders_date}" /> --%>
							<!-- <span class="mai-calendar"></span> -->
							<!-- <a href="#"><span class="mai-chatbubbles"></span> 19</a> -->
			            </div>
					</div>
				</div>
		</c:forEach> 
		<div class="divider"></div>
		
		<h4 class="widget-title">주문자정보</h4>
		<h6 class="post-title"><c:out value="${member.name}"/> | <c:out value="${member.phone}"/></h6>
		<h6 class="post-title">배송지 <c:out value="${member.address}"/></h6>
		<div class="divider"></div>
		
		<h4 class="widget-title">결제정보</h4>
		<h6 class="post-title"><fmt:formatNumber type="number" maxFractionDigits="3" value="${payment.payment_amount}" />원</h6>
		<c:out value="${payment.method}"/>
 		<form id="postForm" action="" method="post">
			<span><button id="cancelBtn" type="submit">주문취소</button></span>
    		<span><button id="listBtn" type="submit">주문목록</button></span>
		</form>
    </div>
   

<script>
$(function(){
	var status = "${order.status}";
	$("#cancelBtn").hide();
	alert(status);
	if(status === "결제완료"){
		$("#cancelBtn").show();
		$("#postForm").attr("action", "/orders/cancel/<c:out value='${order.o_id}'/>");
	}
});
</script>

<%@include file="../includes/footer.jsp"%>