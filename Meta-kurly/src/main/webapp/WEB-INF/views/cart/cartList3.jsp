<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
	<h2>장바구니</h2>
	<div class="content_totalCount_section">

		<div class="content_area">
		
			<div class="content_subject">
				<span>장바구니</span>
			</div>
			<!-- 장바구니 리스트 -->
			<div class="content_middle_section"></div>
			<!-- 장바구니 가격 합계 -->
			<!-- cartInfo -->
			<!-- 체크박스 전체 여부 -->
			<div class="all_check_input_div">
				<input type="checkbox" class="all_check_input input_size_20" checked="checked">
				<span class="all_chcek_span">전체선택</span>
			</div>
			
			

			<table class="subject_table">
				<caption>표 제목 부분</caption>
				<tbody>

					<tr>
						<th class="td_width_1"></th>
						<th class="td_width_2"></th>
						<th class="td_width_3">상품명</th>
						<th class="td_width_4">가격</th>
						<th class="td_width_4">수량</th>
						<th class="td_width_4">합계</th>
						<th class="td_width_4">삭제</th>
					</tr>
				</tbody>
			</table>
			<script>
 
            function itemSum() {
                var str = "";
                var sum = 0;
                var count = $(".chkbox").length;
                for (var i = 0; i < count; i++) {
                    if ($(".chkbox")[i].checked == true) {
                        sum += parseInt($(".chkbox")[i].value);
                    }
                }
                $("#totalPrice_span").html(sum + " 원");
                $("#amount").val(sum);
            }
 
        </script>
			<table class="cart_table">
				<caption>표 내용 부분</caption>
				<tbody>
				
					<c:forEach items="${list}" var="cart">
						<tr>
							<td class="td_width_1 cart_info_td">
								<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked" onClick="itemSum()" value="${cartList.quantity * cartList.productList[0].price}">
								<input type="hidden" class="individual_price_input" value="${cart.productList[0].price}">
								<input type="hidden" class="individual_name_input" value="${cart.productList[0].name}"> 
								<input type="hidden" class="individual_quantity_input" value="${cart.quantity}"> 
								<input type="hidden" class="individual_totalPrice_input" value="${cart.quantity * cart.productList[0].price }">
								 <%-- 	<input type="hidden" class="individual_point_input" value="${ci.point}">
									<input type="hidden" class="individual_totalPoint_input" value="${ci.totalPoint}">
									<input type="hidden" class="individual_bookId_input" value="${ci.bookId}">	 --%>
							</td>
							<%-- 	이미지부분							<td class="td_width_2">
									<div class="image_wrap" data-bookid="${ci.imageList[0].bookId}" data-path="${ci.imageList[0].uploadPath}" data-uuid="${ci.imageList[0].uuid}" data-filename="${ci.imageList[0].fileName}">
										<img>
									</div>								
								</td> --%>
							<td class="td_width_3">${cart.productList[0].name}</td>
							<td class="td_width_4 price_td">판매가 : <span
								class="red_color"><fmt:formatNumber
										value="${cart.productList[0].price}" pattern="#,### 원" /></span><br>
							</td>
							<td class="td_width_4 table_text_align_center">
								<div class="table_text_align_center quantity_div">
									<input type="text" value="${cart.quantity}"
										class="quantity_input">
									<button class="quantity_btn plus_btn">+</button>
									<button class="quantity_btn minus_btn">-</button>
								</div>
							</td>
							<td class="td_width_4 table_text_align_center"><fmt:formatNumber
									value="${cart.quantity * cart.productList[0].price }" pattern="#,### 원" /></td>
							<td class="td_width_4 table_text_align_center">
								<button class="delete_btn" data-cartid="${ci.cartId}">삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<table class="list_table">
			</table>
		</div>
		<!-- 가격 종합 -->
		<div class="content_total_section">
			<div class="total_wrap">
				<table>
					<tr>
						<td>
							<table>
								<tr>
									<td>상품수</td>
									<td>
									<span class="totalCount_span"></span>권
									</td>
								</tr>
							</table>
						</td>
						<td>
							<table>
								<tr>
									<td></td>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<td>
							<table>
								<tbody>
									<tr>
										<td><strong>총 결제 예상 금액</strong></td>
										<td><span class="totalPrice_span">70000</span> 원</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<br>
	<p class="order">

		<button type="button" class="order_btn">주문하기</button>


<script>

$(document).ready(function(){
	setTotalInfo();
})

// 체크여부에 따른 종합 정보 변화
$(".individual_cart_checkbox").on("change", function(){
	// 총 주문 정보 셋팅
	setTotalInfo($(".cart_info_td"));
});


// 체크박스 전체 선택
$(".all_check_input").on("click", function(){
	console.log("전체선책");
	
	// 체크박스 체크 해제
	if($".all_check_input").prop("checked")){
		$(".individual_cart_checkbox").attr("checked", true);
	} else {
		$(".individual_cart_checkbox").attr("checked", false);
	}
	
	// 총 주문정보 세팅 (총 가격, 물품 수)
	setTotalInfo($(".cart_info_td"));
});


// 총 주문 정보 셋팅(총 가격, 물품 수)
function setTotalInfo() {
	
	let totalPrice = 0;
	let totalCount = 0;
	
	
	$(".cart_info_td").each(function(index, element){
		
		if($(element).find(".individual_cart_checkbox").is(":checked") === true) {
			
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_quantity_input").val());
		}
	});
	
	
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocalString());
	// 총 갯수
	$(".totalCount_span").text(totalCount);
		
}


// 수량 플러스 버튼
$(".plus_btn").on("click", function(){
	console.log("버튼눌림@@@@");
	let quantity = $(this).parent('div').find("input").val();
	$(this).parent("div").find("input").val(++quantity);
});
//수량 마이너스 버튼
$(".minus_btn").on("click", function(){
	let quantity = $(this).parent("div").find("input").val();
	if(quantity > 1){
		$(this).parent("div").find("input").val(--quantity);		
	}
});

/* 수량 수정 버튼 */
$(".quantity_modify_btn").on("click", function(){
	let cartId = $(this).data("cartid");
	let bookCount = $(this).parent("td").find("input").val();
	$(".update_cartId").val(cartId);
	$(".update_bookCount").val(bookCount);
	$(".quantity_update_form").submit();
	
});

/* 장바구니 삭제 버튼 */
$(".delete_btn").on("click", function(e){
	e.preventDefault();
	const cartId = $(this).data("cartid");
	$(".delete_cartId").val(cartId);
	$(".quantity_delete_form").submit();
});
		
		
		
	}

</script>
</body>
</html>
<%@include file="../includes/footer.jsp"%>