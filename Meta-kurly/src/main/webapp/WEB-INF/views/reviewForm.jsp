<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com">

  <title>MetaKurly - Review</title>

  <link rel="stylesheet" href="/resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="/resources/css/bootstrap.css">

  <link rel="stylesheet" href="/resources/css/maicons.css">

  <link rel="stylesheet" href="/resources/vendor/owl-carousel/css/owl.carousel.css">

  <link rel="stylesheet" href="/resources/css/theme.css">

</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
      <div class="container">
        <a href="index.html" class="navbar-brand">Meta<span class="text-primary">Kurly.</span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-lg-4 pt-3 pt-lg-0">
            <li class="nav-item">
              <a href="/" class="nav-link">홈</a>
            </li>
            <li class="nav-item">
              <a href="/product/bestProduct" class="nav-link">베스트</a>
            </li>
            <li class="nav-item">
              <a href="/product" class="nav-link">전체상품</a>
            </li>
            <li class="nav-item active">
              <a href="review" class="nav-link">리뷰</a>
            </li>
            <li class="nav-item">
              <a href="myPage" class="nav-link">마이페이지</a>
            </li>
          </ul>

          <div class="ml-auto">
            <a href="#" class="btn btn-outline rounded-pill">Sign in</a>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <main>
    <div class="page-section pt-5">
      <div class="container">
        <nav aria-label="Breadcrumb">
          <ul class="breadcrumb p-0 mb-0 bg-transparent">
            <li class="breadcrumb-item"><a href="/">홈</a></li>
            <li class="breadcrumb-item"><a href="/product/productList">상품</a></li>
            <li class="breadcrumb-item active">리뷰</li>
          </ul>
        </nav>
        
        <div class="row">
          <div class="col-lg-8">  
            <div class="comment-form-wrap pt-5">
              <h2 class="mb-5">리뷰 작성</h2>
              <form action="#" class="">
                <div class="form-row form-group">
                  
                </div>
   
                <div class="form-group">
                  <label for="message">내용</label>
                  <textarea name="msg" id="message" cols="30" rows="8" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" value="리뷰 등록" class="btn btn-primary">
                </div>
    
              </form>
            </div>
  
          </div>
          <div class="col-lg-4">
            <div class="widget">
              
  
              <!-- Widget Categories -->
              <div class="widget-box">
                <h4 class="widget-title">카테고리</h4>
                <div class="divider"></div>
  
                <ul class="categories">
                  <li><a href="#">과일 · 채소</a></li>
                  <li><a href="#">과자 · 간식 · 떡</a></li>
                  <li><a href="#">정육 · 계란</a></li>
                  <li><a href="#">베이커리</a></li>
                  <li><a href="#">생활용품</a></li>
                </ul>
              </div>
  
              <!-- Widget recent post -->
              <div class="widget-box">
                <h4 class="widget-title">최근 본 상품</h4>
                <div class="divider"></div>
  
                <div class="blog-item">
                    <a class="post-thumb" href="">
                      <img src="/resources/img/blog/blog-1.jpg" alt="">
                    </a>
                    <div class="content">
                      <h6 class="post-title"><a href="#">Even the all-powerful Pointing has no control</a></h6>
                      <div class="meta">
                        <a href="#"><span class="mai-calendar"></span> July 12, 2018</a>
                        <a href="#"><span class="mai-person"></span> Admin</a>
                        <a href="#"><span class="mai-chatbubbles"></span> 19</a>
                      </div>
                    </div>
                </div>
  
                <div class="blog-item">
                    <a class="post-thumb" href="">
                      <img src="/resources/img/blog/blog-2.jpg" alt="">
                    </a>
                    <div class="content">
                      <h6 class="post-title"><a href="#">Even the all-powerful Pointing has no control</a></h6>
                      <div class="meta">
                        <a href="#"><span class="mai-calendar"></span> July 12, 2018</a>
                        <a href="#"><span class="mai-person"></span> Admin</a>
                        <a href="#"><span class="mai-chatbubbles"></span> 19</a>
                      </div>
                    </div>
                </div>
  
                <div class="blog-item">
                    <a class="post-thumb" href="">
                      <img src="/resources/img/blog/blog-3.jpg" alt="">
                    </a>
                    <div class="content">
                      <h6 class="post-title"><a href="#">Even the all-powerful Pointing has no control</a></h6>
                      <div class="meta">
                        <a href="#"><span class="mai-calendar"></span> July 12, 2018</a>
                        <a href="#"><span class="mai-person"></span> Admin</a>
                        <a href="#"><span class="mai-chatbubbles"></span> 19</a>
                      </div>
                    </div>
                </div>
  
              </div>
  
              <!-- Widget Tag Cloud -->
              <div class="widget-box">
                <h4 class="widget-title">해시태그</h4>
                <div class="divider"></div>
  
                <div class="tag-clouds">
                  <a href="#" class="tag-cloud-link">Projects</a>
                  <a href="#" class="tag-cloud-link">Design</a>
                  <a href="#" class="tag-cloud-link">Travel</a>
                  <a href="#" class="tag-cloud-link">Brand</a>
                  <a href="#" class="tag-cloud-link">Trending</a>
                  <a href="#" class="tag-cloud-link">Knowledge</a>
                  <a href="#" class="tag-cloud-link">Food</a>
                </div>
              </div>
  
            </div>
          </div>
        </div>
  
      </div>
    </div>
  </main>

  <footer class="page-footer">
    <div class="container">
      <div class="row justify-content-center mb-5">
        <div class="col-lg-3 py-3">
          <h3>Digi<span class="text-primary">Gram.</span></h3>
          <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>

          <p><a href="#" >digigram@mail.com</a></p>
          <p><a href="#">+00 1122 3344 5566</a></p>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Quick Links</h5>
          <ul class="footer-menu">
            <li><a href="#">How it works</a></li>
            <li><a href="#">Security</a></li>
            <li><a href="#">Pricing</a></li>
            <li><a href="#">Resources</a></li>
            <li><a href="#">Report a Bug</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>About Us</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Our Teams</a></li>
            <li><a href="#">Testimonials</a></li>
            <li><a href="#">News & Press</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Subscribe</h5>
          <form action="#">
            <input type="text" class="form-control" placeholder="Enter your mail..">
          </form>

          <div class="sosmed-button mt-4">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google"></span></a>
            <a href="#"><span class="mai-logo-linkedin"></span></a>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-sm-6 py-2">
          <p id="copyright">&copy; 2020 <a href="https://macodeid.com/">MACode ID</a>. All rights reserved</p>
        </div>
        <div class="col-sm-6 py-2 text-right">
          <div class="d-inline-block px-3">
            <a href="#">Privacy</a>
          </div>
          <div class="d-inline-block px-3">
            <a href="#">Contact Us</a>
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </footer> <!-- .page-footer -->


  <script src="/resources/js/jquery-3.5.1.min.js"></script>

  <script src="/resources/js/bootstrap.bundle.min.js"></script>

  <script src="/resources/vendor/wow/wow.min.js"></script>

  <script src="/resources/vendor/owl-carousel/js/owl.carousel.min.js"></script>

  <script src="/resources/vendor/waypoints/jquery.waypoints.min.js"></script>

  <script src="/resources/vendor/animateNumber/jquery.animateNumber.min.js"></script>

  <script src="/resources/js/google-maps.js"></script>

  <script src="/resources/js/theme.js"></script>

</body>
</html>