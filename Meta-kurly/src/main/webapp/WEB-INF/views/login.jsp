<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/productList/product.css">
<link rel="stylesheet" href="/resources/css/login/login.css">
    
  </header>

  <main>
    <div class="page-section">
      <div class="container">
      	<!--중단 상품리스트 -->

<div class="htop"></div>

  <div class="hbottom">
   
  </div>

	<div style="width:50%; margin:auto;">
		<div class="membership">
  	<div style="text-align:center"><h1>로그인</h1></div>
		
    <form>

      <div>
      	
        <div>아이디<span class="orange">&nbsp;*</span></div>
        <div>
          <input id="user_id" type="text" name="" placeholder="예 : marketkurly12">
        </div>
      </div>

      <div>
        <div>비밀번호<span class="orange">&nbsp;*</span></div>
        <input type="password" name="" placeholder="비밀번호를 입력해주세요" required>
      </div>


    </form>

  </div>


  <div class="agree"></div> <!-- 이거 지우지 마세요! -->


  <button>로그인</button>
  <span style="position: absolute; left: 50%; top:85%; transform: translateX(-50%);"><a href="/">홈으로 돌아가기</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="/join">회원이 아니신가요?</a></span>
  
		
	</div>
  
  </main>


<%@include file="includes/footer.jsp"%>

