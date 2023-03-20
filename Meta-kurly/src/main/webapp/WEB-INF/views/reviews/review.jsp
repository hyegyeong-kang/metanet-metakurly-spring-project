
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/review/review.css">
<link rel="stylesheet" href="/resources/vendor/animate/animate.css">

<link rel="stylesheet" href="/resources/css/bootstrap.css">



<link rel="stylesheet" href="/resources/css/theme.css">
    
  </header>

  <main>
    <div class="page-section">
      <div class="container"></div>
      	<!--중단 상품리스트 -->
		

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<div class="carousel">
	<div class="review-slider">
	     <div class="slides con relative">
	     	<div class="pg 01 item inline-block active">
	         	<ul class="list row">
			         <table>
			         	<thead>
			         		<td>번호</td>
			         		<td>작성자</td>
			         		<td>내용</td>
			         		<td>작성일</td>
			         	</thead>
				         <c:forEach items='${product}' var="product" >
				          	<c:forEach items='${product.reviewList}' var="review" varStatus="status">
								 <tbody>
								 		<tr>
									    	<td><c:out value="${status.count }"></c:out></td>
									    	<td><c:out value="${member.name}"></c:out></td>
									    	<td><a href="/products/detail/${review.p_id}/reviews"><c:out value="${review.contents }"></c:out></a></td>
									    	<td><c:out value="${review.review_date }"></c:out></td>
										</tr>
								 </tbody>
							</c:forEach>
						</c:forEach>
					</table>
				</ul>    
	    	</div>
		</div>
	</div>
</div>
<div class="pagination con text-align-center" style="text-align:center; left:35%;">
        <a href="#" class="pg-btn-prev"><i class="fas fa-chevron-left"></i></a>
        <a href="#" class="pg-btn">1</a>
        <a href="#" class="pg-btn">2</a>
        <a href="#" class="pg-btn">3</a>
        <a href="#" class="pg-btn">4</a>
        <a href="#" class="pg-btn">5</a>
        <a href="#" class="pg-btn">6</a>
        <a href="#" class="pg-btn">7</a>
        <a href="#" class="pg-btn">8</a>
        <a href="#" class="pg-btn">9</a>
        <a href="#" class="pg-btn-next"><i class="fas fa-chevron-right"></i></a>
        <a style="margin-left:150px;" href="/products/reviews" class="btn btn-primary">리뷰 작성</a>  
 </div>
</main>



<%@include file="../includes/footer.jsp"%>


