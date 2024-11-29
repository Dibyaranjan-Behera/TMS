<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="./header/header.jsp"></jsp:include>
    <jsp:include page="./header/navigation.jsp"></jsp:include>
 	 <!-- Login Section Start-->
      
      <div class="cont">
          <div class="form sign-in">
          
          <%
          String successMessage = (String) session.getAttribute("successMessage");
          String successSubMessage = (String) session.getAttribute("successSubMessage");
  		  String successLogin = (String) session.getAttribute("successLogin");

          if (successMessage != null) {
		  %>
      	<div style="color: #fff !important; background-color: #4CAF50 !important; border-radius: 05px; text-align: center; ">
	       	<h3><%= successMessage %></h3>
	        <p><%= successSubMessage %></p>
    	</div>
		<%
		 session.removeAttribute("successMessage");
         session.removeAttribute("successSubMessage");
  		  }
        %>
        <%
		  String invalidLogin = (String) session.getAttribute("invalidLogin");
         if (invalidLogin != null) {

        %>
        <div style="color: red; background-color: white; border-radius: 05px; text-align: center; ">
        	<h3><%= invalidLogin %></h3>
		</div>
		<%
         session.removeAttribute("invalidLogin");
         }
         %>   
        <form action="login" method ="post">
              <h2>Welcome</h2>
              <label>
                  <span>Email</span>
                  <input type="email" name="userName">
              </label>
              <label>
                  <span>Password</span>
                  <input type="password" name="password">
              </label>
              <p class="forgot-pass">Forgot password?</p>
              <button type="submit" class="submit">Sign In</button>
           
           </form>
          </div>
          
          
          
          <div class="sub-cont">
              <div class="img">
                  <div class="img__text m--up">
                   
                      <h3>Don't have an account? Please Sign up!</h3>
                  </div>
                  <div class="img__text m--in">
                  
                      <h3>If you already has an account, just sign in.</h3>
                  </div>
                  <div class="img__btn">
                      <span class="m--up">Sign Up</span>
                      <span class="m--in">Sign In</span>
                  </div>
              </div>
              <form action="register" method="post">
              <div class="form sign-up">
                  <h2>Create your Account</h2>
                  <div class="register">
                  <input type="text" placeholder="Enter Your Name" name="uname">
                  <input type="email" placeholder="Enter Your Email" name="email">
                  <input type="number" min="10" placeholder="Enter Your Mobile" name="phoneNumber">
                  <div class="gender">
                    <input type="radio" id="male" name="gender" value="male"> Male
                  <input type="radio" id="female" name="gender" value="female"> Female
                  <input type="radio" id="other" name="gender" value="other"> Other
                  </div>
                  <input type="date" name="dob">
                  <input type="password" placeholder="Enter Your Password" name="password">
                  </div>
                  <button type="submit" class="submit">Sign Up</button>
                  
              </div>
                </form>
          </div>
      </div>
 
      <script>
          document.querySelector('.img__btn').addEventListener('click', function() {
              document.querySelector('.cont').classList.toggle('s--signup');
          });
      </script>
      <!-- login section end-->
     
      
      <jsp:include page="./footer/footer-menu.jsp"></jsp:include>
    <jsp:include page="./footer/footer.jsp"></jsp:include>