<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
	<div class="container-fluid">
		<!-- <a class="navbar-brand" href="index.jsp"> -->
		<a class="navbar-brand" href="index.jsp"><img src="img/img12.png" alt="" height="50" width="200"><!-- <i class="fa-solid fa-graduation-cap"></i>  LEARN HUB --> </a>
		<img src="img/sustlogo.png" class="d-block w-30" height=50px>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp">
						<i class="fas fa-sign-in-alt"></i> ADMIN</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp">TEACHER</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_courses.jsp">COURSES</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp">STUDENT</a></li>

				</c:if>




				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="all_courses.jsp">COURSES</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="registared_courses.jsp">VIEW COURSES</a></li>

					<div class="dropdown">
						<button class="btn btn-outline-dark dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>
							
						</ul>
					</div>


					

				</c:if>





			</ul>
		</div>
	</div>
</nav>