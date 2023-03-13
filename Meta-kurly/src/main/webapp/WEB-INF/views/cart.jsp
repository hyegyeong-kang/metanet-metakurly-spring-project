<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/login/login.css">
<link rel="stylesheet" href="/resources/css/cart/cart.css">
    
  </header>

  <main>
    <div class="page-section">
      <div class="container">
      	<!--중단 상품리스트 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<div class="cart_table">
            <p>장바구니</p>

            <ul class="cart_list">
                <li>
                    <div class="checkbox">
                        <input type="checkbox" name="all_chk" id="all_chk">
                        <label for="all_chk">전체선택</label>
                    </div>
                    <div class="del_btn">삭제 (<span class="num">0</span>)</div>
                </li>
                <li>
                    <div class="checkbox">
                        <input type="checkbox" name="item_chk" id="item_chk01">
                        <label for="item_chk01"></label>
                    </div>
                    <div class="item_detail">
                        <img src="https://tictoc-web.s3.ap-northeast-2.amazonaws.com/img/shop/detail_thumb_s_01.jpg">
                        <p class="name"><strong>모바일 상품권</strong></p>
                        <p class="txt">A. 3만원권,남편과의 데이트</p>
                    </div>
                    <div class="opt_info">
                        <strong class="price_unit">10,000</strong>원
                        <div class="price_btn">
                            <input type="button" value="-" class="minus_btn">
                            <input type="text" value="1" class="number">
                            <input type="button" value="+" class="plus_btn">
                        </div>
                        <div class="total_p">
                            <strong class="price_amount">10,000</strong>원
                            <span class="del_li_btn"><img src="https://tictoc-web.s3.ap-northeast-2.amazonaws.com/web/img/icon/btn_del_circle.svg"></span>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="checkbox">
                        <input type="checkbox" name="item_chk" id="item_chk02">
                        <label for="item_chk02"></label>
                    </div>
                    <div class="item_detail">
                        <img src="https://tictoc-web.s3.ap-northeast-2.amazonaws.com/img/shop/detail_thumb_s_01.jpg">
                        <p class="name"><strong>모바일 상품권</strong></p>
                        <p class="txt">A. 3만원권,남편과의 데이트</p>
                    </div>
                    <div class="opt_info">
                        <strong class="price_unit">20,000</strong>원
                        <div class="price_btn">
                            <input type="button" value="-" class="minus_btn">
                            <input type="text" value="1" class="number">
                            <input type="button" value="+" class="plus_btn">
                        </div>
                        <div class="total_p">
                            <strong class="price_amount">20,000</strong>원
                            <span class="del_li_btn"><img src="https://tictoc-web.s3.ap-northeast-2.amazonaws.com/web/img/icon/btn_del_circle.svg"></span>
                        </div>
                    </div>

                </li>
            </ul>

            <div class="cart_total_area">
                <p>결제 정보</p>

                <div class="cart_total_price">
                    <p>총 상품금액 <strong class="item_price">60,000</strong>원 <span class="plus_ic"></span></p>
                    <p>할인금액 <strong class="sale_price color-symbol">-10,000</strong>원 <span class="plus_ic"></span></p>
                    <p>총 배송비 <strong class="delivery_price">2,500</strong>원 <span class="equal_ic"></span></p>
                    <p>총 결제금액 <strong class="total_price color-red">52,500</strong>원</p>
                </div>
            </div>

            <div class="btn_box">
                <button type="button" onclick="goBack()" class="btn wh-btn">계속 쇼핑하기</button>
                <button type="button" class="btn black-btn">구매하기</button>
            </div>

        </div>
		
		</div>
	</div>

  <div class="agree"></div> <!-- 이거 지우지 마세요! -->


  </main>


<%@include file="includes/footer.jsp"%>
