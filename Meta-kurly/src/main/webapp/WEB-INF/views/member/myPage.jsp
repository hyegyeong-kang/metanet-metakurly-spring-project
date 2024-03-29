<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">

    <div class="container mt-5">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active"><c:out value="${member.name}"/>님의 마이페이지 입니다.</li>
              </ul>
            </nav>
            <h1 class="text-center">MyPage</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <main>
    <div class="page-section">
      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-lg-4 py-3">
 			<button type="button" id="modifyBtn" class="btn btn-primary rounded-pill">회원정보수정</button>
 		</div>
 		<div class="col-lg-4 py-3">
          	<button type="button" id="orderListBtn" class="btn btn-primary rounded-pill">주문내역보기</button>
          	</div>
          	<div class="col-lg-4 py-3">
          	<button type="button" id="cartBtn" class="btn btn-primary rounded-pill">장바구니</button>
          	</div>
          <!-- <div class="col-lg-6 py-3">
            <h2 class="title-section">주문내역보기</h2>
            <div class="divider"></div>
             <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.<br> Laborum ratione autem quidem veritatis!</p> 
  
            <ul class="contact-list">
              <li>
                <div class="icon"><span class="mai-map"></span></div>
                <div class="content">123 Fake Street, New York, USA</div>
              </li>
              <li>
                <div class="icon"><span class="mai-mail"></span></div>
                <div class="content"><a href="#">info@digigram.com</a></div>
              </li>
              <li>
                <div class="icon"><span class="mai-phone-portrait"></span></div>
                <div class="content"><a href="#">+00 1122 3344 55</a></div>
              </li>
            </ul>
            
          </div> -->
          
          <!-- <div class="col-lg-6 py-3">
            <div class="subhead">회원정보수정</div>
            <h2 class="title-section">Drop Us a Line</h2>
            <div class="divider"></div>
            
            <form action="#">
              <div class="py-2">
                <input type="text" class="form-control" placeholder="Full name">
              </div>
              <div class="py-2">
                <input type="text" class="form-control" placeholder="Email">
              </div>
              <div class="py-2">
                <textarea rows="6" class="form-control" placeholder="Enter message"></textarea>
              </div>
              <button type="submit" class="btn btn-primary rounded-pill mt-4">Send Message</button>
            </form>
          </div> -->
        </div>
      </div> <!-- .container -->
    </div> <!-- .page-section -->
  </main>

<%@include file="../includes/footer.jsp"%>

<script>
	$('#modifyBtn').click(function(){
		location.href = "/member/modify";
	});
	
	$('#orderListBtn').click(function(){
		location.href = "/orders/list";
	});
	
	$('#cartBtn').click(function(){
		location.href = "/cart/cartList";
	});
</script>