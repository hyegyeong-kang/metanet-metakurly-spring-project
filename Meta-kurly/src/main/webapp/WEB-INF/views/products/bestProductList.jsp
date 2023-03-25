<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<title>MetaKurly | Product</title>
<%@include file="../includes/header.jsp"%>
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
      <div class="container">
      
      	<!--중단 상품리스트 -->

		<!--상품리스트1-->
		<section class="product-section-1">
  <div class="con prod-list best-item">
        <ul class="row">
	        <c:forEach items='${bestProductList}' var="product">
	            <li class="cell" >
	                <a href="/products/detail/${product.p_id}"><div class="img-box"><span><img src="<c:out value="${product.img_url}" />" /></span></div></a>
	                <div style="color:gray" class="title"><c:out value="${product.delivery_type}배송" /></div>
	                <div class="price"><span><c:out value="[${product.brand}]"></c:out></span></div>
	                <div class="price"><span><c:out value="${product.name}" /></span></div>
	                <div class="price"><span><c:out value="${product.price}원" /></span></div>
	            </li>
	         </c:forEach>
        </ul>
</div>   

<section class="banner-2">
  <a href="#"><img src="https://product-image.kurly.com/banner/random-band/pc/img/e4d03436-77aa-4875-86bf-f9655f4c1069.jpg" alt=""></a>
</section>


  </main>


<%@include file="../includes/footer.jsp"%>