<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/productList/productDetail.css">
    
  </header>

  <main>
    <div class="page-section">
      <div class="container"></div>
      	<!--중단 상품리스트 -->
		
		<div class="shCMSshop">
				<div class="shopView">
					<div class="viewHeader">
						<!-- 상품이미지 -->
						<div class="productImg">
							<div class="mainImg">
								<img src="<c:out value="${product.img_url}" />" />
							</div>
						</div>
						<!-- 상품 설명 -->
						<div class="productInfo">
							<h1><c:out value="${product.name}"><span ></span></c:out></h1>
							<div class="price">
								<span class="sale">20<span>%</span></span>
								<span class="cost-price"><c:out value="${product.price / 0.8}원"></c:out></span>
								<span class="sale-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.price}" />원</span>
							</div>
							<div class="manufact">제조사       <span><c:out value="${product.brand}"></c:out></span></div>
							<div class="categori">분류           <span>기타</span></div>
							<div class="origin">원산지       <span>각 재료 별 원산지는 상세설명 참조</span></div>
							<div class="items">
							</div>
							<h3>
								<div class="num">
									<span>수량</span>
									<span class="count">
										<a href="#" class="minus">-</a>
										<span id="result">1</span>
										<a href="#" class="plus">+</a>
									</span>
								</div>
							</h3>
							<div id="productPrice" style="display:none"><c:out value="${product.price}"></c:out></div>
							<div class="all-price">총 상품금액        <span id='totalCost'><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.price}" /></span>원</div>
							<div class="btn">
								<a id="addCart" href="/cart/cartAdd">장바구니</a>
								<a id="buyBtn" href="/orders/order">구매하기</a>
							</div>
						</div>
					</div>
		<!-- 하단의 탭부분 시작 -->
					<div class="viewBody">
						<ul class="contentNav">
							<li class="active"><a href="">상품 정보</a></li>
							<li><a href="/products/reviews/<c:out value="${product.p_id}"></c:out>">상품 후기<span>(<span class="count">20</span>)</span></a></li>
							<li><a href="">Q & A <span></span></a></li>
							<li><a href="">반품 / 교환</a></li>
						</ul>
						<!-- 탭부분 끝 -->
						<!-- 상품정보 -->
						<table class="tproduct-info active">
							<tr>
								<td>제품명</td>
								<td><c:out value="${product.name}"></c:out></td>
								<td>식품의 유형</td>
								<td>기타</td>
							</tr>
							<tr>
								<td>제조사</td>
								<td><c:out value="${product.brand}"></c:out></td>
								<td>배송타입</td>
								<td><c:out value="${product.delivery_type}배송"></c:out></td>
							</tr>
							<tr>
								<td>제조년월일</td>
								<td>제조일로부터 일주일이내 포장된 제품으로 발송됩니다.</td>
								<td>품질유지기한</td>
								<td>제조일로부터 120일</td>
							</tr>
							<tr>
								<td>보관방법</td>
								<td colspan="3">냉장보관 하거나 서늘한 곳에 보관해주세요.</td>
							</tr>
						</table>
						
						<script>
							
						</script>
						
						<!-- 상품 후기 -->
						<table class="tproduct-review">
							<thead>
								<tr>
									<td>평점</td>
									<td>내용</td>
									<td>작성자</td>
									<td>작성일</td>
								</tr>
							</thead>
							<tr>
								<td>별점</td>
								<td class="tcontent"><img src="" alt=""><span>내용 - 짧은 내용(동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세</span></td>
								<td>rud***</td>
								<td>2017-09-26 10:20</td>
							</tr>
							<tr class="detail-content">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>별점</td>
								<td class="tcontent"><img src="" alt=""><span>내용 - 짧ㅁㄴㅇㄻㄴㅇㄻㄴ은 내용(동해물과 백두산이 마르고 닳도록 블라불라블라 </span></td>
								<td>rud***</td>
								<td>2017-09-26 10:20</td>
							</tr>
							<tr class="detail-content">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr><tr>
								<td>별점</td>
								<td class="tcontent"><img src="" alt=""><span>내용 - 짧은 내용(동해물과 백두산이 마르고 닳도록 </span></td>
								<td>rud***</td>
								<td>2017-09-26 10:20</td>
							</tr>
							<tr class="detail-content">
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<!-- Q & A  -->
							<table class="tquestion">
								<thead>
									<tr>
										<td>번호</td>
										<td colspan="2">내용</td>
										<td>작성자</td>
										<td>작성일
										<a href="">문의 하기</a>
										</td>
									</tr>
							</thead>
								<tr>
									<td>글번호</td>
									<td class="answer-no">미완료</td>
									<td class="tcontent">내용 - 문의</td>
									<td>rud***</td>
									<td>2017-09-26 10:20</td>
								</tr>
								<tr>
									<td>글번호</td>
									<td class="answer-ok">답변완료</td>
									<td class="tcontent">내용 - 문의</td>
									<td>rud***</td>
									<td>2017-09-26 10:20</td>
								</tr>
							</table>
					</div>
				</div>
		</div>
		<form id="postForm" action="/orders/order" method="post">
			<input type="hidden" name="p_id" value="${product.p_id}"/>
			<input type="hidden" id="quantityInput" name="quantity" value=""/>
		</form>

  </main>

<div id="addCartProduct" style="display:none"><c:out value="${product.p_id}" /></div>

<%@include file="../includes/footer.jsp"%>

<script>
let product = document.getElementById("addCartProduct").innerText;
let qt =  document.getElementById("result").innerText;


$("#addCart").click(function(){

   var productInfo = {
      p_id: product,
      quantity: qt
   };

   $.ajax({
      url: '/cart/cartAdd',
      type: 'post',
      data: JSON.stringify(productInfo),
      dataType: 'text',
      contentType: 'application/json',
      success: function(data){
         location.replace("/cart/cartList");
      }
   });
});

$("#buyBtn").click(function(){
	var quantityVal = $("#result").text();
	$("#quantityInput").val(quantityVal);
	
	console.log("DDDddd  " + quantityVal);
	$("#postForm").submit();
	return false;
});
</script>





