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


  <div class="membership">

    <form>

      <div>
        <div>아이디<span class="orange">&nbsp;*</span></div>
        <div>
          <input id="user_id" type="text" name="" placeholder="예 : marketkurly12">
          <input type="button" value="중복확인" required>
        </div>
      </div>

      <div>
        <div>비밀번호<span class="orange">&nbsp;*</span></div>
        <input type="password" name="" placeholder="비밀번호를 입력해주세요" required>
      </div>

      <div>
        <div>비밀번호 확인<span class="orange">&nbsp;*</span></div>
        <input type="password" name="" placeholder="비밀번호를 한번 더 입력해주세요" required>
      </div>

      <div>
        <div>이름<span class="orange">&nbsp;*</span></div>
        <input type="text" name="" placeholder="이름을 입력해주세요" required>
      </div>

      <div>
        <div>이메일<span class="orange">&nbsp;*</span></div>
        <input type="email" name="" placeholder="예 : marketkurly@kurly.com" required>
      </div>

      <div>
        <div>휴대폰<span class="orange">&nbsp;*</span></div>
        <div>
          <input type="tel" name="" placeholder="숫자만 입력해주세요">
          <input type="button" value="인증번호 받기" disabled="false" required>
        </div>
      </div>

      <div>
        <div>주소<span class="orange">&nbsp;*</span></div>
        <input type="text" name="" placeholder="도로명, 지번, 건물명 검색" required>
        <p>
          배송지에 따라 상품 정보가 달라질 수 있습니다.
        </p>
      </div>

    </form>

  </div>


  <div class="agree"></div> <!-- 이거 지우지 마세요! -->


  <button>가입하기</button>

  </main>


<%@include file="includes/footer.jsp"%>

