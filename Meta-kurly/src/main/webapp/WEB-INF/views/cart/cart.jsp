
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
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
            <p><strong>장바구니</strong></p>
            

            <ul class="cart_list">
                <li>
                    <div class="checkbox">
                        <input type="checkbox" name="all_chk" id="all_chk">
                        <label for="all_chk">전체선택</label>
                    </div>
                    <div class="del_btn">삭제 (<span class="num">0</span>)</div>
                </li>
                
                <c:forEach items="${list}" var="cart">
                <li>
                    <div class="checkbox">
                        <input type="checkbox" name="item_chk" id="item_chk01">
                        <label for="item_chk01"></label>
                    </div>
                    <div class="item_detail">
							<tr>
							<td class="td_width cart_info_td">
								<!-- <input type="checkbox" id="chk_list" name="chk_list" value="list" class="cart_checkbox" checked="checked"/> -->
								<input type="hidden" class="individual_price_input" value="${cart.productList[0].name}">
								<input type="hidden" class="individual_totalPrice_input" value="${cart.productList[0].price}">
								<input type="hidden" class="individual_count_input" value="${cart.quantity}">
							</td>
							</tr>
                        <img src="<c:out value="${cart.productList[0].img_url}" />" />
                        <p class="name" ><strong><c:out value="${cart.productList[0].name}"></c:out></strong></p>
                    </div>
                    <div class="opt_info">
                        <strong class="price_unit"><c:out value="${cart.productList[0].price}"></c:out></strong>원
                        <div class="price_btn">
                            <input type="button" value="-" class="minus_btn">
                            <span class="number"><c:out value='${cart.quantity}'></c:out></span>
                            <%-- <input type="text" value="<c:out value='${cart.quantity}'></c:out>" class="number"> --%>
                            <input type="button" value="+" class="plus_btn">
                        </div>
                        <div class="total_p">
                            <strong class="price_amount"><c:out value="${cart.productList[0].price * cart.quantity}"></c:out></strong>원
                            <span class="del_li_btn"><img src="https://tictoc-web.s3.ap-northeast-2.amazonaws.com/web/img/icon/btn_del_circle.svg"></span>
                        </div>
                    </div>
                </li>
                </c:forEach>
            </ul>

<!--             <div class="cart_total_area">
                <p>결제 정보</p>

                <div class="cart_total_price">
                	<p>총 상품금액 <strong class="item_price">60,000</strong>원 <span class="plus_ic"></span></p>
                    <p>총 결제금액 <strong class="total_price color-red">52,500</strong>원</p>
                </div>
            </div> -->

            <div class="btn_box">
                <button type="button" onclick="history.go(-1);return false;" class="btn wh-btn" style="border-color:#7B68EE">계속 쇼핑하기</button>
                <button type="button" onclick="order()" class="btn black-btn" style="background-color:#7B68EE">구매하기</button>
            </div>

        </div>
		
		</div>
	</div>

  <div class="agree"></div> <!-- 이거 지우지 마세요! -->
  
  <script>
  		function order(){
	   		console.log("주문하기 버튼 눌림");
/* 	   	 $.ajax({
	         url : "/order/${ResultMap.seq}",
	         type : "POST",
	         data : $("#updateForm").serialize(),
	         dataType: 'JSON',
	         success : function (data) {
	             if(data.resultMap.code == "1"){
	                 alert("success!")
	                 
	             } else {
	                 alert("error!")
	             }
	             
	             }
	         }); */
	   	}
  		
  		$(document).ready(function(){
  		    //전체 선택 클릭시 
  		    $('#all_chk').change(function () {
  		      if($("#all_chk").is(":checked")){
  		        $("input[name=item_chk]").prop("checked",true);
  		      }else{
  		        $("input[name=item_chk]").prop("checked",false);
  		      }
  		      // 전체 체크 순회(체크 확인)
  		      var check_cnt=0;
  		      $("input:checkbox[name=item_chk]").each(function() {
  		         if($("input:checkbox[name=item_chk]").is(":checked") == true){
  		            check_cnt++;
  		            //console.log(check_cnt)      
  		         }
  		      });
  		      $('.del_btn .num').text(check_cnt);
  		    });

  		   $('input[name="item_chk"]').change(function () {

  		    var itemLength = $('input[name="item_chk"]').length;
  		    var checkedLength = $('input[name="item_chk"]:checked').length;
  		    var selectAll = (itemLength == checkedLength);
  		    //console.log(checkedLength);

  		    $('.del_btn .num').text(checkedLength);
  		    $('#all_chk').prop('checked', selectAll);

  		    });

  		// 상품 수량 + / - 버튼 눌렀을 때 호출
  		   $('.price_btn input[type="button"]').on('click', function(){
  		       var $ths = $(this);
  		       var $par = $ths.parent().parent();
  		       var $obj = $par.find('span.number');
  		       var val = parseInt($obj.text());
  		       if ($ths.val()=='-') {
  		           if (val > 1)
  		               $obj.text(--val);
  		       }
  		       else if ($ths.val()=='+') {
  		           if (val < 30)
  		               $obj.text(++val);
  		       }
  		   
  		     //수량 변경
  		     var unit_amount=$par.find('.price_unit').text().replace(/[^0-9]/g,"");
  		     console.log("11111" + JSON.stringify(unit_amount, null, 2));
  		     var quantity = val;
  		     
  		     // 수량 업데이트 ajax
  		      $.ajax({
	         url : "/cart/updateCart",
	         type : "POST",
	         data : $("#updateForm").serialize(),
	         dataType: 'JSON',
	         success : function (data) {
	             if(data.resultMap.code == "1"){
	                 alert("success!")
	                 
	             } else {
	                 alert("error!")
	             }
	             
	             }
	         });
  		     
  		     
  		     // 결제 수량 변경 로직은 메인터너스의 편리성을 위해서 밖으로 빼서 처리함.
  		     //1단 세로 부분 결제 금액
  		     pay_unit_func($par,unit_amount,quantity);
  		     //2단 결제 금액
  		     pay_total_func();
  		   });
  		  
  		  
  		  function pay_unit_func($par,unit_amount,quantity){
  		    //1번 단
  		    var unit_total_amount=$par.find('.price_amount').text((unit_amount*quantity).toLocaleString());
  		 	console.log("unit!!!: " + (unit_amount*quantity).toLocaleString());
  		 
  		  } 
  		  
  		  
  		  
  		  function pay_total_func(){
  			  
 
  		    //2번 단 
  		    var amount_total=0;
  		    var converse_unit=0;
  		    $('.cart_list li').each(function() {
  		      //console.log($(this).find('.price_amount').text());
  		      converse_unit=$(this).find('.price_amount').text().replace(/[^0-9]/g,"");
  		      amount_total=amount_total+(parseInt(converse_unit)|| 0);
  		      //총 상품금액
  		      //console.log(amount_total);
  		    });
  		    //총 상품금액
  		    //var total_amount_money = $('.cart_total_price').children().find('.item_price').text();
  		    var total_amount_money =$('.cart_total_price').children().find('.item_price').text(amount_total.toLocaleString());
  		    //할인금액
  		    var total_sale_money = parseInt($('.cart_total_price').children().find('.sale_price').text().replace(/[^0-9]/g,"")|| 0);
  		    console.log(total_sale_money);
  		    //총 배송비
  		    var total_delivery_price = parseInt($('.cart_total_price').children().find('.delivery_price').text().replace(/[^0-9]/g,"")|| 0);
  		    console.log(total_delivery_price);
  		    //총 결제금액
  		    var total_price=(parseInt(amount_total|| 0)-total_sale_money+total_delivery_price);
  		    var total_total_price = $('.cart_total_price').children().find('.total_price').text(total_price.toLocaleString());
  		    
  		    // update => m_id, p_id, quantity
  		  console.log("total!!!: " + total_price);
  		  }
  		  
  		   //개별 아이템 삭제
  		   $('.del_li_btn').on('click', function(){
  		     var recent_delete_cnt=$('.del_btn .num').text();
  		     var check_delete_ck=$(this).offsetParent().parent().find('input[type="checkbox"]').is(':checked');
  		     console.log(check_delete_ck);
  		     if(check_delete_ck == true){
  		       recent_delete_cnt=recent_delete_cnt - 1;
  		       $('.del_btn .num').text(recent_delete_cnt);
  		     }
  		     $(this).offsetParent().parent().remove();
  		     //console.log($(this).offsetParent().parents().find('input[type="checkbox"]').is(':checked'));
  		     pay_total_func();
  		   });
  		   
  		   
  		   //삭제 버튼을 누르면 지정된 상품 삭제 (m_id, p_id 받아야 함)
  		   $('.del_btn').on('click', function(){
  		     var recent_delete_cnt=$('.del_btn .num').text();
  		     $("input:checkbox[name=item_chk]").each(function() {
  		          var check_delete_ck=$(this).offsetParent().find('input[type="checkbox"]').is(':checked');
  		          console.log(check_delete_ck);
  		          if(check_delete_ck == true){
  		            recent_delete_cnt=recent_delete_cnt - 1;
  		            $('.del_btn .num').text(recent_delete_cnt);
  		            $(this).offsetParent().remove();
  		          }
  		      });
  		      pay_total_func();
  		      
  		      
  		   }); 
  		   
  		   
  		});
  		
  
  </script>


  </main>


<%@include file="../includes/footer.jsp"%>

