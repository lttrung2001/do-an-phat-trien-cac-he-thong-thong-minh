<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
        <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Riode - Login</title>
                    <base href="${pageContext.servletContext.contextPath}/">

                    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
                    <link href="<c:url value='/resources/home/dist/css/login.css' />" rel="stylesheet">
                    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
                    />

                    <link href="<c:url value='/resources/home/dist/css/owl.carousel.css' />" rel="stylesheet">
                    <link href="<c:url value='/resources/home/dist/css/owl.theme.default.css' />" rel="stylesheet">
                </head>

                <body>


                    <%@include file="/WEB-INF/views/header.jsp"%>


                        <!-- Main -->

                        <main class="main login-container">
                            <div class="container">

                                <form:form class="login-form" action="user/login.htm" modelAttribute="user">
                                    <h2>Login</h2>

                                    <form:input type="text" path="user_name" placeholder="Username" />
                                    <h5><form:errors path="user_name"></form:errors></h5>
                                    <!-- <span class="errors">Have to type account</span> -->
                                    <form:input type="password" path="password" placeholder="Password" />
                                    <h5><form:errors path="password"></form:errors></h5>
                                    <!-- <span class="errors">Wrong password</span> -->

                                    <div class="link">
                                        <a href="user/register.htm">I don't have account</a>
                                        <a href="user/forgotpassword.htm">Lost your password?</a>
                                    </div>
                                  	
                                  	<h5 style="margin: 12px;">${message }</h5>
                                    <!-- <br> -->
                                    <form:button>Login</form:button>
                                </form:form>
                            </div>
                        </main>

                        <%@include file="/WEB-INF/views/footer.jsp"%>
                </body>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
                <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
                <script src="<c:url value='/resources/home/dist/js/home.js' />"></script>

                </html>