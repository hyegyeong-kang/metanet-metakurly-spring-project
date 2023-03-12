<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<th>주문자</th>
				<td>${member.name} | ${member.phone}</td>
			</tr>
			<tr>
				<th>배송지</th>
				<td>${member.address}</td>
			</tr>
			<tr>
				<th>주문상품</th>
				<c:forEach items="${products}" var="product">
					<td><img href='<c:out value="${product.img_url}"/>'></td>
					<td>${product.brand}</td>
					<td>${product.name}</td>
					<td>${product.brand}</td>
					<td>수량 <c:out value="${product.quantity}"/>개</td>
				</c:forEach>
			</tr>
			<tr>
				<th>결제</th>
				<td>보유한 적립금 <c:out value="${member.point}"/></td>
				<td>사용할 적립금 <input type='text' id="usePointInput" name='usePoint'>
					<p id="errorMsg"></p>
				</td>
				<td>결제 금액 <p id="finalPrice"></p></td>
				<td>결제 방법</td>
				<td>
					<select name="paymentMethod" id="method">
	    				<option value="card">카드</option>
	    				<option value="account">계좌이체</option>
	    			</select>
    			</td>
			</tr>
		</tbody>
	</table>
	
	<!-- <div class="comment-form-wrap pt-5">
              <h2 class="mb-5">Leave a comment</h2>
              <form action="#" class="">
                <div class="form-row form-group">
                  <div class="col-md-6">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="col-md-6">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="website">Website</label>
                  <input type="url" class="form-control" id="website">
                </div>
    
                <div class="form-group">
                  <label for="message">Message</label>
                  <textarea name="msg" id="message" cols="30" rows="8" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" value="Post Comment" class="btn btn-primary">
                </div>
    
              </form>
            </div> -->
	<input type='submit' value="결제">
	
	<script type="text/javascript">
		$("#usePointInput").change(function(){
			var usePoint = this.val();
			var price = ${product.totalPrice};
			if(usePoint > price){
				$("#errorMsg").text("결제금액보다 큰 금액은 적을 수 없습니다.");
				this.val("");
			}
			else{
				$("#errorMsg").text("");
				var finalPrice = ${product.totalPrice} - usePoint);
				$("#finalPrice").val(finalPrice);
				if(finalPrice === 0){
					$("#method").option("disabled", "true");
				}
			}
			
		});
	</script>
</body>
</html>