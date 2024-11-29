<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Header Section -->
    <header class="header_section">
        <div class="header_top">
            <div class="container-fluid">
                <div class="contact_nav">
                    <a href="tel:+917978100509">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <span>Call : +91 7978100509</span>
                    </a>
                    <a href="mailto:ranjandibya203@gmail.com">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <span>Email : ranjandibya203@gmail.com</span>
                    </a>
                    <a href="#">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <span>Location</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="header_bottom">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg custom_nav-container">
                    <a class="navbar-brand" href="index.jsp">
                        <span>
                        	<marquee behavior="" direction="">Let's go for a journey</marquee>
                        </span>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class=""> </span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="home.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="service.jsp">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.jsp">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">Contact Us</a>
                            </li>
                            
								                            <%
								    String successLogin = (String) session.getAttribute("successLogin");
                        		
								    if (successLogin != null) {
								%>
								    <li class="nav-item">
<!-- 								        <form action="details" method="post" style="display: inline;"> -->
<!-- 								            <button id="sidebarToggle" type="submit" style="border:none; background:none" class="nav-link"> -->
<!-- 								                <i class="fa fa-user" aria-hidden="true"></i> -->
<!-- 								            </button> -->
<!-- 								        </form> -->
								<input type="hidden" id="sucessLogin" value="<%=successLogin %>>">
											<button id="sidebarToggle" type="submit" style="border:none; background:none" class="nav-link">
								                <i class="fa fa-user" aria-hidden="true"></i>
								            </button>
								    </li>
								<%
								    } else {
								%>
								    <li class="nav-item">
								        <a class="nav-link" href="login.jsp">
								            <i class="fa fa-user" aria-hidden="true"></i> Login
								        </a>
								    </li>
								<%
								    }
								%>
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Slider Section -->
    <jsp:include page="./SideProfile.jsp"></jsp:include>
    