<%@ page language="java" contentType="text/html; charset=utf-8"
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
    <link rel="icon" type="image/png" href="https://d-themes.com/html/riode/images/icons/favicon.png">
    <title>Riode - Changing Password</title>
    <base href="${pageContext.servletContext.contextPath}/">

    <link href="<c:url value='/resources/home/dist/css/reset.css' />" rel="stylesheet">
    <link href="<c:url value='/resources/home/dist/css/userChangePass.css' />" rel="stylesheet">
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
                <a href="user/userHome.htm" class="">
                    <div class="icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    Information 
                </a>
            </li>

            <li class="function">
                <a href="user/changepassword.htm" class="active">
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

        <button class="btn-log-out"><a href="user/logout.htm">Log out</a></button>
    </aside>

    <!-- Main -->
    <main class="main">
        <div class="main-header">
            <h2>Welcome Admin!</h2>

            <div class="map">
                <a href="home/index.htm">Home</a>
                /
                <a href="user/userHome.htm">${acc.getFullname() }</a>
                /
                <a href="user/changepassword.htm">Change Password   </a>
            </div>
        </div>

        <div class="main-content">
            <form:form action="user/changepassword.htm">
                <h2>Change password</h2>

                <input type="password" name = "oldPassword" placeholder="Old Password"/>
                <p>${message1 }</p>
                <input type="password" name = "newPassword" placeholder="New Password"/>
                <p>${message2 }</p>
                <input type="password" name = "newPasswordAgain" placeholder="New Password Again"/>
                <p>${message3 }</p>
                
				<a href = "user/changepassword.htm" >
					<button>Change</button>
				</a>
                
                <p>${message }</p>
            </form:form>

        </div>
    </main>

  

</body>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
    <script src="<c:url value='/resources/home/dist/js/owl.carousel.js' />"></script>
    <script src="<c:url value='/resources/home/dist/js/home.js' />"></script>
</html>