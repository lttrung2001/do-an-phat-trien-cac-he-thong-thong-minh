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
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
    <title>Riode - Order Complete</title>
    <base href="${pageContext.servletContext.contextPath}/">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/home/dist/css/orderComplete.css' />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
     
    <!-- Header -->
     
   <%@include file="/WEB-INF/views/header.jsp"%>

    <!-- Main -->
    <main class="main">
        <div class="page-content">
            <div class="step-by">
                <h3 class="title-step  ">1. SHOPPING CART</h3>
                <i class="fa-solid fa-angle-right"></i>
                <h3 class="title-step ">2. CHECKOUT</h3>
                <i class="fa-solid fa-angle-right"></i>
                <h3 class="title-step active">3. ORDER COMPLETE</h3>

            </div>

            <div class="container">
                <div class="order-message">
                    <div class="icon">
                        <i class="fa-solid fa-circle-check"></i>
                    </div>
                    <div class="message">
                        <h4>THANK YOU!</h4>
                        <p>Your order has been received</p>
                    </div>
                </div>
                <div class="order-results">
                    <div class="overview-item">
                        <div class="overview-name">
                            ORDER NUMBER:
                        </div>
                        <div class="overview-value">
                            4935
                        </div>
                    </div>
                    
                   

                    <div class="overview-item">
                        <div class="overview-name">
                            STATUS:
                        </div>
                        <div class="overview-value">
                            Processing
                        </div>
                    </div>

                    <div class="overview-item">
                        <div class="overview-name">
                            DATE:
                        </div>
                        <div class="overview-value">
                            November 20, 2020
                        </div>
                    </div>

                    <div class="overview-item">
                        <div class="overview-name">
                            EMAIL:
                        </div>
                        <div class="overview-value">
                            12345@gmail.com
                        </div>
                    </div>

                    <div class="overview-item">
                        <div class="overview-name">
                            TOTAL:
                        </div>
                        <div class="overview-value">
                            $312.00
                        </div>
                    </div>

                    <div class="overview-item">
                        <div class="overview-name">
                            PAYMENT METHOD:
                        </div>
                        <div class="overview-value">
                            Cash on delivery
                        </div>
                    </div>
                </div>
                <div class="title">ORDER DETAILS</div>
                <div class="order-details">
                    <table>
                        <tr class="table-cat">
                            <th class="table-title">Product</th>
                            <td></td>
                        </tr>

                        <tr class="prod">
                            <td>
                                Beige knitted shoes x <span class="quantity">1</span>
                            </td>

                            <td>$84.00</td>
                        </tr>

                        <tr class="prod">
                            <td>
                                Beige knitted shoes x <span class="quantity">1</span>
                            </td>

                            <td>$84.00</td>
                        </tr>

                        <tr class="prod">
                            <td>
                                Beige knitted shoes x <span class="quantity">1</span>
                            </td>

                            <td>$84.00</td>
                        </tr>

                        <tr class="table-cat">
                            <td class="table-title">Subtotal:</td>
                            <td class="table-value">$312.00</td>
                        </tr>

                        <tr class="table-cat">
                            <td class="table-title">Shipping:</td>
                            <td class="table-value">Free shipping</td>
                        </tr>

                        <tr class="table-cat">
                            <td class="table-title">Payment method:</td>
                            <td class="table-value">Cash on delivery</td>
                        </tr>

                        <tr class="table-cat">
                            <td class="table-title">Total:</td>
                            <td class="table-value bold">$312.00</td>
                        </tr>
                    </table>
                </div>
                <div class="title" style="margin-top: 50px;">Billing Address</div>
                <div class="order-info">
                    <ul>
                        <li>Ho Duc Trung</li>
                        <li>Q9 Thanh pho Thu Duc, TP.HCM</li>
                        <li>0943394369</li>
                        <li>hoductrung2604@gmail.com</li>
                      
                    </ul>
                </div>

                <a href="home.html" class="btn-back-home">Back To Home</a>
            </div>
        </div>
    </main>


    <!-- Footer  -->
    <%@include file="/WEB-INF/views/footer.jsp"%>

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
    <script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>