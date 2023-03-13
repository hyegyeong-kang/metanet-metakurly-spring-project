<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="includes/header.jsp"%>
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
						<a href="">장바구니</a>
						<a href="">구매하기</a>
					</div>
				</div>
			</div>
<!-- 하단의 탭부분 시작 -->
			<div class="viewBody">
				<ul class="contentNav">
					<li class="active"><a href="">상품 정보</a></li>
					<li><a href="">상품 후기<span>(<span class="count">20</span>)</span></a></li>
					<li><a href="">Q & A <span></span></a></li>
					<li><a href="">반품 / 교환</a></li>
				</ul>
				<!-- 탭부분 끝 -->
				<!-- 상품정보 -->
				<table class="tproduct-info active">
					<tr>
						<td>제품명</td>
						<td>장수애 열무김치</td>
						<td>식품의 유형</td>
						<td>기타김치/비살균제품</td>
					</tr>
					<tr>
						<td>용량</td>
						<td>1kg ,3kg, 5kg</td>
						<td>제조사</td>
						<td>농업회사법인 움채주식회사</td>
					</tr>
					<tr>
						<td>제조년월일</td>
						<td>제조일로부터 일주일이내 포장된 제품으로 발송됩니다.</td>
						<td>품질유지기한</td>
						<td>제조일로부터 120일</td>
					</tr>
					<tr>
						<td>보관방법</td>
						<td colspan="3">김치는 숨을 쉬는 발효식품입니다. 받으시면 꼭 김치통에 옮겨서 보관해주세요. 익혀서 드실 경우 포기에 기포가 살짝 생길 때까지 기다리신 후 김치 냉장고에 넣어 드시면 됩니다.</td>
					</tr>
					<tr>
						<td>원재료명 및 함량</td>
						<td colspan="3">“열무 80.04%[국산], 고춧가루 3.04$[국산]. 열무 80.04%[국산], 고춧가루 3.04$[국산]. 열무 80.04%[국산], 고춧가루 3.04$[국산]. 열무 80.04%[국산], 고춧가루
3.04$[국산]. 열무 80.04% [국산], 고춧가루 3.04$[국산].  열무 80.04%[국산]</td>
					</tr>
				</table>
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

  </main>



<%@include file="includes/footer.jsp"%>


