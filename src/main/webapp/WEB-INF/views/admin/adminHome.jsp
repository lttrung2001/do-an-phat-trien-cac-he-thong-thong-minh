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
    <title>Riode - Admin Home</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
	<link href="<c:url value='/resources/home/dist/css/adminHome.css' />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    
    <aside class="aside">
        <a href="admin/adminHome.htm" class="admin">
            <div class="logo">
                <i class="fa-solid fa-a"></i>
            </div>
            Admin
        </a>

        <ul class="functions">
            <li class="function">
                <a href="admin/adminAccount.htm" class=" ">
                    <div class="icon">
                        <i class="fa-solid fa-users"></i>
                    </div>
                    Account 
                </a>
            </li>

            <li class="function">
                <a href="admin/adminBill.htm">
                    <div class="icon">
                        <i class="fa-solid fa-receipt"></i>

                    </div>
                    Bill 
                </a>
            </li>

            <li class="function">
                <a href="admin/adminProducts.htm">
                    <div class="icon">
                        <i class="fa-solid fa-shirt"></i>
                    </div>
                    Products 
                </a>
            </li>

            
        </ul>

        <button class="btn-log-out"><a href="user/logout.htm">Log out</a></button>
    </aside>

    <!-- Main -->
    <main class="main">
        <div class="main-header">
            <h2>Welcome Admin!</h2>

            <div class="map">
                <a href="home/index.htm">Home</a>
                /
                <a href="admin/adminHome.htm">Admin</a>
            </div>
        </div>

        <div class="main-content">
            <div class="row">

                <!-- A report -->
                <a href="admin/adminBill.htm" class="col-6 bill hx2">
                    <h3>Report about <span class="bold">Bills</span></h3>
                    
                    <div class="icon">
                        <i class="fa-solid fa-chart-pie active"></i>
                        <i class="fa-solid fa-file disable"></i>

                    </div>
                    
                    <p class="desc">View the report about ordered products recently</p>
                </a>

                <div class="col-6">
                    <div class="row">

                        <!-- A report -->
                        <a href="admin/adminAccount.htm" class="col-12 report hx1">
                            <h3>Information about <span class="bold">Account</span></h3>
                    
                            <div class="icon">
                                <i class="fa-solid fa-user"></i>
                                <i class="fa-solid fa-users"></i>
                                <i class="fa-solid fa-user-gear"></i>
                            </div>
                            
                            <p class="desc">View the report about ordered products recently</p>
                        </a>

                        <!-- A report -->
                        <a href="admin/adminProducts.htm" class="col-12 report hx1">
                            <h3>Manage <span class="bold">Products</span></h3>
                    
                            <div class="icon">
                                <i class="fa-solid fa-shirt"></i>
                                <i class="fa-solid fa-glasses"></i>
                                <i class="fa-solid fa-socks"></i>
                            </div>
                            
                            <p class="desc">View the report about ordered products recently</p>
                        </a>
                    </div>
                        
                </div>
            </div>
        </div>
    </main>

  

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
	<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>