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
	<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 11px 0 0; color: #7B68EE; font-size: 32px; line-height: 41px; letter-spacing: -2px;">
					주문하기
				</div>
			</div>
		</div>


		<div
			style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; word-spacing: -2px; margin: 0 20px; padding: 25px 0 9px; border-bottom: 2px solid #666; color: #333; font-size: 16px; font-weight: bold;">주문자
			정보</div>
		<div
			style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 0 20px;">
			<table
				style="border-collapse: collapse; margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 0; line-height: 0; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; border-spacing: 0; border-collapse: collapse; table-layout: fixed; width: 100%;">
				<caption
					style="visibility: hidden; width: 0; height: 0; font-size: 0; line-height: 0;"></caption>
				<colgroup>
					<col
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; width: 120px;">
					<col
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; width: *;">
				</colgroup>
				<tbody>
					<tr>
						<th colspan="1" rowspan="1" scope="row"
							style="width: 120px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; text-align: left; font-weight: normal; vertical-align: top; background: #f6f6f6; border-bottom: 1px solid #e6e6e6;">이름</th>
						<td
							style="width: 558px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; color: #333; border-bottom: 1px solid #e6e6e6;"><c:out value="${member.name}"/></td>
					</tr>
					<tr>
						<th colspan="1" rowspan="1" scope="row"
							style="width: 120px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; text-align: left; font-weight: normal; vertical-align: top; background: #f6f6f6; border-bottom: 1px solid #e6e6e6;">핸드폰번호</th>
						<td
							style="width: 558px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; color: #333; border-bottom: 1px solid #e6e6e6;"><strong
							style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; color: #666;"><c:out value="${member.phone}"/></strong></td>
					</tr>
					<tr>
						<th colspan="1" rowspan="1" scope="row"
							style="width: 120px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; text-align: left; font-weight: normal; vertical-align: top; background: #f6f6f6; border-bottom: 1px solid #e6e6e6;">주소</th>
						<td
							style="width: 558px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; color: #333; border-bottom: 1px solid #e6e6e6;"><strong
							style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; color: #7B68EE; letter-spacing: 0;"><c:out value="${member.address}"/></strong></td>
					</tr>
					<tr>
						<th colspan="1" rowspan="1" scope="row"
							style="width: 120px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; text-align: left; font-weight: normal; vertical-align: top; background: #f6f6f6; border-bottom: 1px solid #e6e6e6;">택배메세지</th>
						<td
							style="width: 558px; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 14px 0 16px 16px; line-height: 20px; color: #333; border-bottom: 1px solid #e6e6e6;">
							<input type="text" name="deliveryMsg" id="msgInput">
						</td>
					</tr>
				</tbody>
			</table>
		</div>



		<!-- 무통장인 경우 무통장 가상계좌 정보보여줌. -->


		<div
			style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; word-spacing: -2px; margin: 0 20px; padding: 25px 0 9px; border-bottom: 2px solid #666; color: #333; font-size: 16px; font-weight: bold;">
			주문상품</div>

	 	<%-- <c:forEach items="${products}" var="product"> --%>
			<div style="overflow: hidden; margin: 0 20px;">
				<a target="_blank"
					style="float: left; :70 px; :70 px; margin: 20px 0;"
					href="/product/detail" id="productImg"><img
					style="border: 0; width: 70px; height: 70px;"
					src="<c:out value='${product.img_url}'/>"
					alt=""></a>
					<form action="/product/detail" method="get" id="getForm">
						<input type="hidden" name="p_id" value="${product.p_id}"/>
					</form>
				<div
					style="float: left; width: 68%; margin: 0 0 0 15px; padding: 17px 0 15px;">
					<a target="_blank"
						style="color: #333; font-size: 15px; line-: 18px; display: block; text-decoration: none; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; :36 px; -webkit-box-orient: vertical; -webkit-line-clamp: 2; font-family: '맑은고딕', 'malgun gothic', 'dotum', sans-serif;"
						href="https://m.oliveyoung.co.kr/m/goods/getGoodsDetail.do?goodsNo=A000000007088">
						<c:out value="${product.brand}"/><br><c:out value="${product.name}"/>
					</a>
					<div
						style="color: #999; font-size: 12px; line-height: 16px; font-weight: bold;">
					</div>
					<div
						style="color: #999; font-size: 12px; line-height: 16px; font-weight: bold;">구매수량
						: ${product.quantity} 개</div>
					<div style="padding: 4px 0 0;">
	
						<span
							style="color: #333; font-size: 20px; font-weight: bold; padding: 0 0 0 7px;">
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.price}" /><em
							style="display: inline-block; color: #b0b0b0; font-style: normal; font-size: 12px; vertical-align: 1px; color: #333 !important; padding: 0 0 0 2px; vertical-align: 2px !important;">원</em>
						</span>
						
					</div>
				</div>
			</div>

	 <%-- </c:forEach>  --%>
		


		<div
			style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; margin: 0; padding: 0; border: 0; box-sizing: border-box; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; word-spacing: -2px; margin: 0 20px; padding: 25px 0 9px; border-bottom: 2px solid #666; color: #333; font-size: 16px; font-weight: bold;">결제
			정보</div>
		<div
			style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; padding: 0 20px;">
			<div
				style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px; padding: 8px 0 9px; background: url('http://m.oliveyoung.co.kr/mc-static-root/image/comm/bg_dashed02.png') repeat-x 0 0; background-size: 6px 1px; background: none;">
				<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px;">
					<strong
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: left; font-weight: normal;">
						총 상품금액 </strong> <span
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: right; color: #f47330; font-weight: bold; font-size: 16px; letter-spacing: 0;">
						<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.totalPrice}" /><em
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; display: inline-block; margin-left: 3px; font-style: normal; font-weight: bold; font-size: 12px; vertical-align: 2px; letter-spacing: -1px;">원</em>
					</span>
				</div>
			</div>

			<div
				style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px; padding: 8px 0 9px; background: url('http://m.oliveyoung.co.kr/mc-static-root/image/comm/bg_dashed02.png') repeat-x 0 0; background-size: 6px 1px;">


				<!-- 
					11 신용카드
					21 실시간계좌이체
					22 휴대폰결제
					23 문화상품권
					24 도서상품권
					61 무통장
					
					31 예치금
					13 카페테리아
					12 CJONE포인트
					 -->


				<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px;">
					<strong
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: left; font-weight: normal;">
						보유 포인트 </strong> <span
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: right; color: #f47330; font-weight: bold; font-size: 16px; letter-spacing: 0;">
						<c:out value="${member.point}"/><em
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; display: inline-block; margin-left: 3px; font-style: normal; font-weight: bold; font-size: 12px; vertical-align: 2px; letter-spacing: -1px;">원</em>
					</span>
				</div>
				<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px;">
					<strong
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: left; font-weight: normal;">
						사용 포인트 </strong><br>
						<div id="errorMsg" style="visibility: hidden">입력한 포인트를 사용할 수 없습니다</div>
						<span
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: right; color: #f47330; font-weight: bold; font-size: 16px; letter-spacing: 0;">
						<input type="text" name="usePoint" id="usePointNum" style="width: 93%" value="0"><em
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; display: inline-block; margin-left: 3px; font-style: normal; font-weight: bold; font-size: 12px; vertical-align: 2px; letter-spacing: -1px;">원</em>
					</span>
				</div>
				<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 6px 0 7px;">
					<strong
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: left; font-weight: normal;">
						결제방법 </strong> <span
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: right; color: #f47330; font-weight: bold; font-size: 16px; letter-spacing: 0;">
						<select name="paymentMethod" id="method">
							<option value="카드">카드</option>
							<option value="계좌이체">계좌이체</option>
						</select>
					</span>
				</div>

			</div>


			<div
				style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; border-top: 1px solid #e6e6e6;">
				<div
					style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; overflow: hidden; padding: 10px 0 14px;">
					<strong
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: left; padding: 11px 0 0; color: #ff2828;">
						총 결제금액 </strong> <span
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; float: right; color: #ff2828; font-weight: bold; font-size: 28px; line-height: 38px; letter-spacing: 0;">
						<p id="finalPrice" style="display: inline"><c:out value="${product.totalPrice}" /><%-- <fmt:formatNumber type="number" maxFractionDigits="3" value="${product.totalPrice}" /> --%></p><em
						style="margin: 0; padding: 0; border: 0; box-sizing: border-box; font-size: 14px; line-height: 22px; font-family: '맑은고딕', 'Malgun Gothic', 'dotum', sans-serif; letter-spacing: -1px; display: inline-block; margin-left: 3px; font-style: normal; font-weight: bold; font-size: 12px; vertical-align: 2px; letter-spacing: -1px;">원</em>
					</span>
				</div>
			</div>


		</div>
		<form id="paymentForm" action="/orders/payment" method="post">
			<input type="hidden" name="deliveryMsg" id="deliveryMsg"/>
			<input type="hidden" name="p_id" value="${product.p_id}"/>
			<input type="hidden" name="total_amount" value="${product.quantity}"/>
			<input type="hidden" name="price" value="${product.totalPrice}"/>
			<input type="hidden" name="method" id="methodInput"/>
			<input type="hidden" name="payment_amount" id="paymentAmountInput"/>
			<input type="hidden" name="usePoint" id="usePointInput"/>
			<button type="submit" id="paymentBtn">결제하기</button>
		</form>
	</div>




<%@include file="../includes/footer.jsp"%>

<script type="text/javascript">
	$("#usePointNum").change(function(e){
		var usePoint = $(this).val();
		
		var price = 0;
		price = ${product.totalPrice};
		if(usePoint > price || usePoint > ${member.point}){
			$("#errorMsg").css("visibility", "visible");
			$(this).val("0");
		}
		else{
			$("#errorMsg").css("visibility", "hidden");
			var finalPrice = ${product.totalPrice} - usePoint;
			
			$("#finalPrice").text(finalPrice);
			if(finalPrice === 0){
				$("#method").option("disabled", "true");
			}
		}
		
	});
	
	$("#paymentBtn").click(function(){
		console.log($("#msgInput").val());
		$("#deliveryMsg").val($("#msgInput").val());
		$("#methodInput").val($("#method").val());
		$("#paymentAmountInput").val($("#finalPrice").text());
		$("#usePointInput").val($("#usePointNum").val());
		
		$("#paymentForm").submit();
		
	});
	
	$("#productImg").click(function(){
		$("#getForm").submit();
		
		return false;
	});
</script>
