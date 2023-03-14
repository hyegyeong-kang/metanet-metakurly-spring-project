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
		<h4 class="widget-title">주문내역</h4>
		<div class="divider"></div>
		
		<c:forEach items="${list}" var="order">
			<div class="blog-item">
					<a class="post-thumb" href="">
						<img src="/resources/img/blog/blog-1.jpg" alt="">
					</a>
					<div class="content">
						<div class="meta">
							<a href='#'><c:out value="${order.status}"/></a>
			            </div>
						<h6 class="post-title"><a href='/orders/detail/<c:out value="${order.o_id}"/>'><c:out value="${order.orderDetailList[0].productDTO.brand}"/> <c:out value="${order.orderDetailList[0].productDTO.name}"/> 외 <c:out value="${order.total_amount}"/>개</a></h6>
						<div class="meta">
							<!-- <a href="#"><span class="mai-person"></span> Admin</a> -->
							<a href='#'>주문번호 <c:out value="${order.o_id}"/></a>
							<span class="mai-calendar"></span><fmt:formatDate pattern="yyyy-MM-dd" value="${order.orders_date}" />
							<!-- <a href="#"><span class="mai-chatbubbles"></span> 19</a> -->
			            </div>
					</div>
				</div>
		</c:forEach>

    </div>

<%@include file="../includes/footer.jsp"%>