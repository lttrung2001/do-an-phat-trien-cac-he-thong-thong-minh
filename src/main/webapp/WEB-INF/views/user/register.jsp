<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Riode - Register</title>
<base href="${pageContext.servletContext.contextPath}/">

<link href="<c:url value='/resources/home/dist/css/reset.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/home/dist/css/login.css' />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="<c:url value='/resources/home/dist/css/owl.carousel.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/resources/home/dist/css/owl.theme.default.css' />"
	rel="stylesheet">
	<link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
</head>
<body>

	<!-- HEADER -->
	<%@include file="/WEB-INF/views/header.jsp"%>
	
	
	
	<!-- MAIN -->
	<main class="main login-container">
		<div class="container">

			<form:form class="register-form" action="user/register.htm" modelAttribute="user" enctype="multipart/form-data">
				<h2>Register</h2>

				<div class="row">
					<div class="col-4 ">
						<form:input type="text" path="fullname" placeholder="Full name"></form:input>
						<form:errors path="fullname"></form:errors>
						<form:input type="text" path="email" placeholder="Gmail"></form:input>
						<form:errors path="email"></form:errors>
						<form:input type="number" path="phone" placeholder="Phone number"></form:input>
						<form:errors path="phone"></form:errors>

						<div class="input-group">
							<label for="">Gender</label>
							<form:select path="gender" id="gender">
								<form:option value="0">Male</form:option>
								<form:option value="1">Female</form:option>
<%-- 								<form:option value="other">Other</form:option> --%>
							</form:select>
						</div>
					</div>

					<div class="col-4 ">
						<form:input type="text" path="user_name" placeholder="Username"></form:input>
						<form:errors path="user_name"></form:errors>
						<form:input type="password" path="password" placeholder="Password"></form:input>
						<form:errors path="password"></form:errors>
						<input type="password" name="passwordagain" placeholder="Password again"></input>
						<p>${passwordagain }</p>

						<p>
							<a href="user/login.htm">You already have an account?</a>
						</p>
					</div>

					<div class="col-4 ">
						<div class="input-group">
							<label for="">Image file upload</label> <input type="file" name="photo">

						</div>

						<div class="input-group">
							<label for="">Date of birth </label>
							<form:input type="date" path="birthday"></form:input>
							<form:errors path="birthday"></form:errors>
						</div>

						<form:input type="text" path="address" placeholder="Address"></form:input>
						<form:errors path="address"></form:errors>
						
						${messageRegister }
						<button>REGISTER</button>
					</div>
				</div>


			</form:form>
		</div>
	</main>
</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>