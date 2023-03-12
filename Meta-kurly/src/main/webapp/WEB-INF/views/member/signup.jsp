<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includes/header.jsp"%>
<c:set var ="path" value = "${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/login/login.css">
<script type="text/javascript">

</script>
</head>
<body>
<div class="page-section">
      <div class="container">
      	<!--중단 상품리스트 -->

<div class="htop"></div>

  <div class="hbottom">
   
  </div>

  <div class="membership">

    <form action="${path}/member/signup" id="signupForm" method="post">

      <div>
        <div>아이디<span class="orange">&nbsp;*</span></div>
        <div>
          <input name="userId" type="text" placeholder="ex) marketkurly12">
          <input type="button" value="중복확인" id="idCheck" required>
        </div>
      </div>

      <div>
        <div>비밀번호<span class="orange">&nbsp;*</span></div>
        <input name="password" type="password" placeholder="비밀번호를 입력해주세요" required>
      </div>

      <div>
        <div>비밀번호 확인<span class="orange">&nbsp;*</span></div>
        <input name="passwordCheck" type="password" placeholder="비밀번호를 한번 더 입력해주세요" required>
      </div>

      <div>
        <div>이름<span class="orange">&nbsp;*</span></div>
        <input name="name" type="text" placeholder="이름을 입력해주세요" required>
      </div>

      <div>
        <div>이메일<span class="orange">&nbsp;*</span></div>
        <input name="email" type="text" placeholder="ex) marketkurly@kurly.com" required>
      </div>

      <div>
        <div>휴대폰<span class="orange">&nbsp;*</span></div>
        <div>
          <input name="phone" type="text" placeholder="ex) 010-1234-5678">
        </div>
      </div>

      <div>
        <div>주소<span class="orange">&nbsp;*</span></div>
        <input name="address" type="text" placeholder="주소지 입력" required>
        <p>
          배송지에 따라 상품 정보가 달라질 수 있습니다.
        </p>
      </div>
     
     <button type="submit" id="submit">가입하기</button>

    </form>

  </div>


  <div class="agree"></div> <!-- 이거 지우지 마세요! -->

  
  
</body>
</html>

<%@include file="../includes/footer.jsp"%>