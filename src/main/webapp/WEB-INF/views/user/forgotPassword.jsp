<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Riode - Forgot Password</title>
<base href="${pageContext.servletContext.contextPath}/">

<link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
<link href="<c:url value='/resources/home/dist/css/login.css' />" rel="stylesheet">

<link rel="icon" type="image/png"
	href="https://d-themes.com/html/riode/images/icons/favicon.png"/>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="<c:url value='/resources/home/dist/css/owl.carousel.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/resources/home/dist/css/owl.theme.default.css' />"
	rel="stylesheet">
</head>
<body>

	<!-- Header -->
	<header class="header">
		<section class="header-top">
			<div class="container d-flex jc-space-between ai-center">
				<div class="header-left">
					<p>Welcome to Riode store message or remove it!</p>
				</div>

				<div class="header-right">
					<a class="hover-p-color" href=""> <i
						class="fa-solid fa-location-dot"></i>Contact Us
					</a> <a class="hover-p-color" href=""> <i
						class="fa-solid fa-circle-info"></i>Need help
					</a>
				</div>
			</div>
		</section>

		<section class="header-middle">
			<div class="container d-flex jc-space-between ai-center">
				<div class="header-left  d-flex jc-space-between ai-center">
					<div class="logo">
						<a href="home/index.htm"><img
							src="https://d-themes.com/html/riode/images/demos/demo4/logo.png"
							alt=""></a>
					</div>

					<ul class="menu  d-flex jc-space-between ai-center">
						<li><a href="home/index.htm">Home</a></li>
						<li><a href="home/products.htm">Products</a></li>
						<li class="active"><a href="home/products.htm">Sale</a></li>
						<li><a href="">About</a></li>
						<li class="search d-flex ai-center"><input type="text"
							placeholder="Search..."> <a href=""> <i
								class="fa-solid fa-magnifying-glass"></i>
						</a></li>
					</ul>
				</div>

				<ul class="header-right  d-flex jc-space-between ai-center">

					<li><a href="user/login.htm"><i class="fa-solid fa-user"></i></a></li>
					<li><a href=""><i class="fa-solid fa-bag-shopping"></i></a></li>
				</ul>
			</div>
		</section>

		<div class="header-support"></div>

	</header>

	<main class="main login-container">
		<div class="container">

			<form:form class="login-form" action="user/forgotpassword.htm" modelAttribute="user">
				<h2>Find your password</h2>

				<p>Please enter your username to get OTP from email</p>
				<form:input type="text" path="user_name" placeholder="Username"></form:input>
<%-- 				<span class="errors">Can't find your username</span> --%>
				<span class="errors"><form:errors path="user_name"/>${message }</span>
				<button>Send</button>
			</form:form>
		</div>
	</main>



</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>
<script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>