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
    <title>Riode - Manage Account</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
	<link href="<c:url value='/resources/home/dist/css/adminAccount.css' />" rel="stylesheet">
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
                <a href="admin/adminAccount.htm" class="active">
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
            <div class="header-left">
                <h2>Manage Account</h2>

                <div class="map">
                    <a href="home/index.htm">Home</a>
                    /
                    <a href="admin/adminHome.htm">Admin</a>
                    /
                    <a href="admin/adminAccount.htm">Account</a>
                </div>
            </div>

            <div class="header-right">

            </div>
        </div>


        <div class="main-content">
            <div class="table-container">
                <table>
                    <tr>
                        <th>Username</th>
                        <th>Full name</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>Birthday</th>
                        <th>Phone</th>
                        <th>Address</th> 
                    </tr>
    
                    <div class="scroll"> 
    					<c:forEach var="a" items="${listAccounts }" begin="0" end="${size }">
    						<c:if test="${a.role.getIdRole() == 2 }">
    							<tr>
		                            <td>${a.user_name}</td>
		                            <td>${a.fullname}</td>
		                            <td>${a.email}</td>
		                            <td>${a.gender==false?'Nam':'Nữ'}</td>
		                            <td>${a.birthday}</td>
		                            <td>${a.phone}</td>
		                            <td>${a.address}</td> 
		                            
		                        </tr>
    						</c:if>
    						
    					</c:forEach>
    				
    					
                    </div>
                  
                   
                </table>
            </div>

            <!-- <ul class="report title">
                <li>Username</li>
                <li>Password</li>
                <li>Full name</li>
                <li>Email</li>
                <li>Gender</li>
                <li>Birthday</li>
                <li>Phone number</li>
                <li>Address</li>
            </ul>
            <ul class="list-report">
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
                <li>
                    <ul class="report">
                        <li>hoducrtungkdsfj</li>
                        <li>124324734</li>
                        <li>Ho Duc Trung</li>
                        <li>hoductrung@gmail,com</li>
                        <li>Gender</li>
                        <li>Birthday</li>
                        <li>Phone number</li>
                        <li>Address</li>
                    </ul>
                </li>
            </ul> -->
        </div>
    </main>

  

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
	<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>