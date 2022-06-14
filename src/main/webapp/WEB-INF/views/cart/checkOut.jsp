<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
    <title>Riode - Check Out</title>
    <base href="${pageContext.servletContext.contextPath}/">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/home/dist/css/checkOut.css' />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	<style type="text/css">
		#product-quantity {
			width: 70px;
		}
	</style>
</head>
<body>
     
    <%@include file="/WEB-INF/views/header.jsp"%>
	
	


    <!-- Main -->
    <main class="main">
        <div class="page-content">
            <div class="step-by">
                <h3 class="title-step  ">1. SHOPPING CART</h3>
                <i class="fa-solid fa-angle-right"></i>
                <h3 class="title-step active">2. CHECKOUT</h3>
                <i class="fa-solid fa-angle-right"></i>
                <h3 class="title-step ">3. ORDER COMPLETE</h3>

            </div>

            <c:choose>
			    <c:when test="${emptyCart eq 1}">
			        <h2 style="justify-content: center;">Your cart is empty</h2>
			    </c:when>    
			    <c:otherwise>

			        <div class="container">
		                <div class="row">
		                    <div class="col-8">
		                        <table class="shop-table">
		                            <thead>
		                                <tr>
		                                    <th><span>PRODUCT</span></th>
		                                    <th></th>
		                                    <th><span>PRICE</span></th>
		                                    <th><span>QUANTITY</span></th>
		                                    <th><span>SUBTOTAL</span></th>

		                                </tr>
		                            </thead>
		                            <tbody>
		                            	<c:forEach var="pd" items="${products}">
		                            		<tr class="product">
			                                    <td class="product-thumbnail">
			                                        <img src="${pd.image}" alt="">
			                                    </td>
			                                    <td class="product-name">${pd.name}</td>
			                                    <td class="product-subtotal">
			                                    	<fmt:formatNumber type="currency" currencySymbol="$ " value="${pd.price}" />
			                                    </td>
			                                    <td class="product-quantity">
			                                        <div class="form-control">
			                                            <button class="quantity-minus"><i class="fa-solid fa-minus"></i></button>
			                                            <input id="product-quantity" type="number" value="${pd.quantity}">
			                                            <button class="quantity-plus"><i class="fa-solid fa-plus"></i></button>
			                                        </div>
			                                    </td>
			                                    <td class="product-price"><fmt:formatNumber value="${pd.price * pd.quantity}" pattern="0.00"/></td>
			                                    <td class="product-close">
			                                        <span class="btn-remove"><i class="fa-solid fa-xmark"></i></span>
			                                    </td>
			                                </tr>
		                            	</c:forEach>		                                		                               
		                            </tbody>
		                        </table>

		                        <div class="cart-action">
		                            <a href="home/products.htm" class="btn-back-home"><i class="fa-solid fa-arrow-left"></i>CONTINUE SHOPPING</a>
		                        </div>
		                    </div>

		                    <div class="col-4">
		                        <div class="sidebar">
		                            <h3 class="title">Cart Totals</h3>

		                            <div class="shipping useless">
		                                <h3>Calculate Shipping</h3>
		                                <ul>
		                                    <li>
		                                        <input name="ship" type="radio" id="rate"> 
		                                        <label for="rate">Flat rate</label>
		                                    </li>

		                                    <li>
		                                        <input name="ship" type="radio" id="free"> 
		                                        <label for="free">Free shipping</label>
		                                    </li>

		                                    <li>
		                                        <input name="ship" type="radio" id="local"> 
		                                        <label for="local">Local pickup</label>
		                                    </li>
		                                </ul>
		                            </div>

		                            <div class="total">
		                                <label for="">Total</label>
		                                <span class="price">$426.99</span>
		                            </div>

		                            <div class="payment useless">
		                                <h3>Payment Methods</h3>
		                                <ul>
		                                    <li>
		                                        <input type="radio" name="payment" id="check">
		                                        <label for="check">Check payments</label>

		                                    </li>

		                                    <li> 
		                                        <input type="radio" name="payment" id="cash"> 
		                                        <label for="cash">Cash on delivery</label>
		                                    </li>
		                                </ul>
		                            </div>

		                            <a href="cart/orderComplete.htm" class="btn-check-out">PLACE ORDER</a>
		                        </div>
		                    </div>
		                </div>                
		            </div>

			    </c:otherwise>
			</c:choose>
        </div>
    </main>

	
	
	<!-- FOOTER -->
    <%@include file="/WEB-INF/views/footer.jsp"%>

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
    <script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>