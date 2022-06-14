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
    <title>Riode - User home</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/home/dist/css/userHome.css' />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    
    <aside class="aside">
        <a href="user/userHome.htm" class="admin">
            <div class="logo">
                <i class="fa-solid fa-t"></i>
            </div>
            ${acc.getFullname() }
        </a>

        <ul class="functions">
            <li class="function">
                <a href="user/userHome.htm" class=" active">
                    <div class="icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    Information 
                </a>
            </li>

            <li class="function">
                <a href="user/changepassword.htm" class="">
                    <div class="icon">
                        <i class="fa-solid fa-key"></i>
                    </div>
                    Change password 
                </a>
            </li>

            <li class="function">
                <a href="">
                    <div class="icon">
                        <i class="fa-solid fa-receipt"></i>

                    </div>
                    Shopping History 
                </a>
            </li>

        

            
        </ul>

        <form>
        	<button class="btn-log-out"><a href="user/logout.htm">Log out</a></button>
        </form>
    </aside>

    <!-- Main -->
    <main class="main">
        <div class="main-header">
            <h2>Welcome our customer!</h2>

            <div class="map">
                <a href="home/index.htm">Home</a>
                /
                <a href="user/userHome.htm">${acc.getFullname() }</a>
            </div>
        </div>

        <div class="main-content">
            <div class="row">
                <div class="col-4">
                    <div class="logo">
                        <i class="fa-solid fa-t"></i>
                    </div>
                </div>
                
                <div class="col-4">
                    
                    <label for="">Username:</label>
                    <input type="text" placeholder= "Username" value="${acc.getUser_name() }" readonly>
                    
                    <label for="">Full name:</label>
                    <input type="text" placeholder="FullName" value= "${acc.getFullname() }" readonly>
                    
                    <label for="">Email:</label>
                    <input type="email" placeholder="Email" value= "${acc.getEmail() }" readonly>
                    
                    <!-- <select name="" id="" reaonly>
                        <option value="">Male</option>
                        <option value="">Female</option>
                        <option value="">Other</option>
                    </select> -->


                </div>
                
                <div class="col-4">
                
                	<label for="">Birthday:</label>
                    <input type="date" placeholder="Birthday" value="${acc.getBirthday() }" readonly>
                    
                    <label for="">Number:</label>
                    <input type="number" placeholder="PhoneNumber" value= "${acc.getPhone() }" readonly>
                    
                    <label for="">Address:</label>
                    <input type="text" placeholder="Address" value= "${acc.getAddress() }" readonly>
                </div>
            </div>

            <a href="user/changeInfor.htm" class="btn">Change Information</a>

        </div>
    </main>

  

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
	<script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>
