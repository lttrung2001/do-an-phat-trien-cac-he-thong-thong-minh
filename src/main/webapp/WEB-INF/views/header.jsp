<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
						<li><a href="">Sale</a></li>
						<li><a href="">About</a></li>
						<li class="search d-flex ai-center"><input type="text"
							placeholder="Search..."> <a href=""> <i
								class="fa-solid fa-magnifying-glass"></i>
						</a></li>
					</ul>
				</div>

				<ul class="header-right  d-flex jc-space-between ai-center">
		<!-- getSession -->
					<c:if test="${acc != null}">
						<c:if test="${acc.getrole().getIdRole() == 2}">
							<li><a href="user/userHome.htm " class="user-area"> <span
									class="user-name">${acc.getFullname() }</span>
									<div class="user-thumbnail">
										<c:if test="${!acc.getImage().toString().equals(null)}">
											<img src="${acc.getImage() }" alt="">
										</c:if>
									</div>
							</a></li>
						</c:if>
						<c:if test="${acc.getrole().getIdRole() == 1}">
							<li><a href="admin/adminHome.htm " class="user-area"> <span
									class="user-name">${acc.getFullname() }</span>
									<div class="user-thumbnail">
										<c:if test="${!acc.getImage().toString().equals(null)}">
											<img src="${acc.getImage() }" alt="">
										</c:if>
									</div>
							</a></li>
						</c:if>
					</c:if>

					<c:if test="${acc == null}">
						<li><a href="user/login.htm"><i class="fa-solid fa-user"></i></a></li>
					</c:if>
					
					
					<!-- Cart-Shopping  -->
                    <li class="cart-group">
                        <a href="cart/checkout.htm">
                            <i class="fa-solid fa-bag-shopping"></i>
                            <span class="prod-quantity">3</span>
                        </a>
                        
                        <div class="cart">
                            <div class="show-prods">
                                <div class="prod">
                                    <div class="prod-image">
                                        <img src="https://d-themes.com/html/riode/images/demos/demo4/products/5.jpg" alt="">
                                    </div>

                                    <div class="prod-info">
                                        <div class="prod-content">
                                            <h3 ><a href="home/detail.htm" class="prod-name">Riode White Trends</a></h3>
                                            <p><span class="quantity">1</span> x <span class="price">$21.00</span></p>
                                        </div>

                                        
                                    </div>

                                    <div class="btn-remove">
                                        <span class="icon"><i class="fa-solid fa-xmark"></i></span>
                                    </div>
                                </div>

                                <div class="prod">
                                    <div class="prod-image">
                                        <img src="https://d-themes.com/html/riode/images/demos/demo4/products/5.jpg" alt="">
                                    </div>

                                    <div class="prod-info">
                                        <div class="prod-content">
                                            <h3 ><a href="" class="prod-name">Riode White Trends</a></h3>
                                            <p><span class="quantity">1</span> x <span class="price">$21.00</span></p>
                                        </div>

                                        
                                    </div>

                                    <div class="btn-remove">
                                        <span class="icon"><i class="fa-solid fa-xmark"></i></span>
                                    </div>
                                </div>

                                <div class="prod">
                                    <div class="prod-image">
                                        <img src="https://d-themes.com/html/riode/images/demos/demo4/products/5.jpg" alt="">
                                    </div>

                                    <div class="prod-info">
                                        <div class="prod-content">
                                            <h3 ><a href="" class="prod-name">Riode White Trends</a></h3>
                                            <p><span class="quantity">1</span> x <span class="price">$21.00</span></p>
                                        </div>

                                        
                                    </div>

                                    <div class="btn-remove">
                                        <span class="icon"><i class="fa-solid fa-xmark"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="subtotal">
                                <label for="">Subtotal:</label>
                                <span class="total-price">$139.00</span>
                            </div>

                            <div class="action">
                                <!-- <a class="btn-view-cart" href="viewCart.html">View Cart</a> -->

                                <a href="cart/checkout.htm" class="btn-check-out">GO TO CHECK OUT</a>
                            </div>
                        </div>
                    </li>
				</ul>
			</div>
		</section>

		<div class="header-support"></div>

	</header>