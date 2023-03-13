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
</head>
<body>
<div class="page-section">
	<div class="container">
      	<!--중단 상품리스트 -->

<div class="htop"></div>

  <div class="hbottom">
   
  </div>

	<div style="width:50%; margin:auto;">
		<div class="membership">
  	<div style="text-align:center"><h1>로그인</h1></div>
		
    <form role="form" action="${path}/member/login" id="loginForm" name="loginForm" method="post">

      <div>
      	
        <div>아이디<span class="orange">&nbsp;*</span></div>
        <div>
          <input type="text" name="userId" placeholder="ex) marketkurly12">
        </div>
      </div>

      <div>
        <div>비밀번호<span class="orange">&nbsp;*</span></div>
        <input type="password" name="password" placeholder="비밀번호를 입력해주세요" required>
        <c:if test="${result == 0}">
      		<p style="color:#f00;">잘못된 아이디 또는 잘못된 비밀번호입니다.</p>
      	</c:if>
      </div>

	  <label><input name="remember-me" type="checkbox">&nbsp;&nbsp;Remember Me</label>

  	  <button type="submit" id="submit">로그인</button>

    </form>
    
  
  </div>


  <div class="agree"></div> <!-- 이거 지우지 마세요! -->
  
  <span style="position: absolute; left: 50%; top:85%; transform: translateX(-50%);"><a href="/">홈으로 돌아가기</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="/member/signup">회원이 아니신가요?</a></span>
  
		
</div>

</body>
</html>

<%@include file="../includes/footer.jsp"%>
