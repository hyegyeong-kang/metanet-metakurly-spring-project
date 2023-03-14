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

  <div class="membership">
  
	<div style="text-align:center"><h1>회원 본인 확인</h1></div>

    <form action="${path}/member/delete" name="deleteForm" method="post">
		<input type="hidden" name="m_id" value="${member.m_id}">
		<input type="hidden" name="status" value="${member.status}">
      <div>
      	<div style="text-align:center"><span class="orange">비밀번호를 입력 후 탈퇴하기 버튼을 누르시면 탈퇴 처리가 됩니다.</span></div>
        <div>비밀번호</div><br>
        <div>
          <input name="password" type="password" value="${member.password}">
        </div>
        <c:if test="${result == 0}">
      		<p style="color:#f00;">잘못된 비밀번호입니다.</p>
      	</c:if>
      </div>
	  <button type="submit" id="submit">회원 탈퇴</button>
    </form>

  </div>


  <div class="agree"></div> <!-- 이거 지우지 마세요! -->

  
  
</body>
</html>

<%@include file="../includes/footer.jsp"%>