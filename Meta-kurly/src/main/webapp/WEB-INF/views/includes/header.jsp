<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com">

<title>MetaKurly | Products Detail</title>

<link rel="stylesheet" href="/resources/vendor/animate/animate.css">

<link rel="stylesheet" href="/resources/css/bootstrap.css">

<link rel="stylesheet" href="/resources/css/maicons.css">

<link rel="stylesheet"
	href="/resources/vendor/owl-carousel/css/owl.carousel.css">

<link rel="stylesheet" href="/resources/css/theme.css">


</head>
<body>

	<!-- Back to top button -->
	<div class="back-to-top"></div>

	<header>
		<nav class="navbar navbar-expand-lg navbar-light shadow-sm">
			<div class="container">
				<a href="/" class="navbar-brand">Meta<span class="text-primary">Kurly.</span></a>

				<button class="navbar-toggler" data-toggle="collapse"
					data-target="#navbarContent" aria-controls="navbarContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="navbar-collapse collapse" id="navbarContent">
					<ul class="navbar-nav ml-lg-4 pt-3 pt-lg-0">
						<li class="nav-item"><a href="/" class="nav-link">Home</a>
						</li>
						<li class="nav-item active"><a href="bestProductList.html"
							class="nav-link">Best</a></li>
						<li class="nav-item"><a href="productList.html"
							class="nav-link">Products</a></li>
						<li class="nav-item"><a href="qnaList.html" class="nav-link">Q&A</a>
						</li>
						<li class="nav-item"><a href="myPage.html" class="nav-link">MyPage</a>
						</li>
					</ul>

					<div class="ml-auto">
					<c:if test="${member == null}">
						<a href="../member/signup" class="btn btn-outline rounded-pill">Sign up</a>
						<a href="../member/login" class="btn btn-outline rounded-pill">Sign in</a>
					</c:if>
					<c:if test="${member != null}">
						<p>환영합니다! ${member.userId} 님</p>
						<a href="../member/logout">로그아웃</a>
					</c:if>
					</div>
				</div>
			</div>
		</nav>