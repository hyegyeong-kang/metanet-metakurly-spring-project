<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/productList/bestProductList.css">

    <div class="container mt-5">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Best 100</li>
              </ul>
            </nav>
            <h1 class="text-center">Best Products</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <main>
    <div class="page-section">
      <div class="container">
      	<!--중단 상품리스트 -->

		<!--상품리스트1-->
		<section class="product-section-1">
  <h1>이 상품 어때요?</h1>

  <ul class="pro-list-box-1">
    <li class="list-1">
      <a href="#">
      <c:forEach items='${bestProductList}' var="product">
      	<tr>
      		<td><c:out value="${product.brand}"></c:out></td>
          	<td><c:out value="${product.name}" /></td>
           	<td><c:out value="${product.price}" /></td>  
          	<td><c:out value="${product.delivery_type}" /></td>
          	<td><c:out value="${product.img_url}" /></td>
        </tr>
      </c:forEach>
      </a>
    </li>
  </ul>
</section>

<section class="product-section-1">
  <h1>이 상품 어때요?</h1>

  <ul class="pro-list-box-1">
    <li class="list-1">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1648707073838l0.jpg" alt="">
        <p class="text-p-1">[멘야하나비] 마제소바 2인분</p>
        <p class="text-p-2"><span class="sale">10%</span><span class="price">13,410원</span></p>
        <p class="text-p-3">14,900원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 999+</p>
      </a>
    </li>

    <li class="list-2">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1655473008977l0.jpg" alt="">
        <p class="text-p-1">[스킨푸드] 블랙슈가 퍼펙트 에센셜 스크럽2X 210g</p>
        <p class="text-p-2"><span class="sale">30%</span><span class="price">13,300원</span></p>
        <p class="text-p-3">19,000원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 434</p>
      </a>
    </li>

    <li class="list-3">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1650529892895l0.jpg" alt="">
        <p class="text-p-1">[제니튼] 닥터제니 무불소 키즈치약 베이비용 60g</p>
        <p class="text-p-2"><span class="price">7,000원</span></p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 115</p>
      </a>
    </li>

    <li class="list-4">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1651572461324l0.jpg" alt="">
        <p class="text-p-1">[프로틴기프트] 아미노양갱</p>
        <p class="text-p-2"><span class="price">6,480원</span></p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 153</p>
      </a>
    </li>
  </ul>
</section>

<section class="banner-2">
  <a href="#"><img src="https://product-image.kurly.com/banner/random-band/pc/img/e4d03436-77aa-4875-86bf-f9655f4c1069.jpg" alt=""></a>
</section>

<!--한정특가-->
<section class="special-price">
  <div class="special-text">
    <p class="text-p-1">한우 반값 한정특가</p>
    <p class="text-p-2">오전 11시 한정 수량 오픈!</p>
    <p class="text-p-3">망설이면 늦어요!</p>
  </div>

  <div class="special-img">
    <img src="https://product-image.kurly.com/product/image/6690502e-cad2-4802-89b3-504687d01bb7.jpg" alt="">
    <p class="text-p-1">100g당 가격: 6,557원 (쿠폰적용가)</p>
    <p class="text-p-2">1+ 한우 등심 300g(냉장)</p>
    <p class="text-p-3">
      <span class="sale">42%</span>
      <span class="sale-price">23,142원</span>
      <span class="price">39,900원</span>
    </p>
    <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 705</p>
  </div>
</section>

<!--상품리스트2-->
<section class="product-section-2">
  <h1>밀키트 인기리스트!
    <a href="#">
      <svg width="32" height="32" xmlns="http://www.w3.org/2000/svg">
        <g fill="none" fill-rule="evenodd">
          <path d="M0 0h32v32H0z" />
          <path d="m10.952 23.384 2.096 2.146 10.055-9.825-9.701-10.278-2.182 2.06 7.677 8.133z" fill="#333" fill-rule="nonzero" />
        </g>
      </svg>
    </a>
  </h1>
  <p>그냥 따라 만들면 내가 바로 쉐프👩‍🍳</p>

  <ul class="pro-list-box-2">
    <li class="list-1">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1621838625107l0.jpg" alt="">
        <p class="text-p-1">[마이하노이] 고기폭탄 쌀국수</p>
        <p class="text-p-2">6,900원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 9,999+</p>
      </a>
    </li>

    <li class="list-2">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1634633589756l0.jpg" alt="">
        <p class="text-p-1">[시골보쌈과 감자옹심이] 감자 옹심이 칼국수 (2인분)</p>
        <p class="text-p-2">10,500원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 9,999+</p>
      </a>
    </li>

    <li class="list-3">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1653037586448l0.jpeg" alt="">
        <p class="text-p-1">[한팟] 치즈 부대찌개 1858g (냉장)</p>
        <p class="text-p-2">13,500원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 9,999+</p>
      </a>
    </li>

    <li class="list-4">
      <a href="#">
        <img src="https://img-cf.kurly.com/cdn-cgi/image/quality=85,width=400/shop/data/goods/1652768054422l0.jpg" alt="">
        <p class="text-p-1">[방방곡곡] 망향식 비빔국수 키트 (2인분)</p>
        <p class="text-p-2">9,900원</p>
        <p class="comment"><i class="fa-regular fa-comment-dots"></i> 후기 999+</p>
      </a>
    </li>
  </ul>
</section>

<section class="banner-3">
  <a href="#"><img src="https://product-image.kurly.com/banner/random-band/pc/img/16d8e884-ffe7-4089-ae7d-8d2e9197af63.jpg" alt=""></a>
</section>
      </div> <!-- .container -->
    </div> <!-- .page-section -->

  </main>


<%@include file="includes/footer.jsp"%>