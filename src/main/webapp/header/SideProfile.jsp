<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="profile.*,java.util.*"%>
    <style>
/* General reset */
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

/* Sidebar styles */
.sidebar {
    position: fixed;
    top: 0;
    right: -300px; /* Hidden initially */
    width: 300px;
    height: 100%;
    background-color: #ffffff;
    color: #050505;
    transition: right 0.3s ease;
    box-shadow: -2px 0 5px rgba(0, 0, 0, 0.2);
    overflow-y: auto;
    z-index: 1050; /* Ensure it is above other content */
}


.sidebar-header {
    padding: 8px;
    background-color: #04233b;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #fff;
}

.sidebar-header h2 {
    margin: 0;
    color: #fff !important;
}

.close-btn {
    background: none;
    border: none;
    color: #fff;
    font-size: 1.5rem;
    cursor: pointer;
}

.sidebar-content {
    padding: 15px;
}

.sidebar-content p {
    margin: 10px 0;
    line-height: 1.5;
}

.edit-btn {
    display: block;
    width: 100%;
    padding: 10px;
    margin-top: 20px;
    background-color: #008cba;
    color: #fff;
    border: none;
    border-radius: 4px;
    font-size: 1rem;
    cursor: pointer;
    text-align: center;
    transition: background 0.3s ease;
}

.edit-btn:hover {
    background-color: #005f8a;
}

</style>
<!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <div class="sidebar-header">
            <h2>User Details</h2>
            <button id="closeSidebar" class="close-btn">&times;</button>
        </div>
        <div class="sidebar-content">
       
<%
	String successLogin = (String) session.getAttribute("successLogin");
	UserBean ub = (UserBean) session.getAttribute("userDetails");
	if (ub != null) {
	    out.println("<p><strong>Name:</strong> " + ub.getUname() + "</p>");
	    out.println("<p><strong>Email:</strong> " + ub.getEmail() + "</p>");
	    out.println("<p><strong>Gender:</strong> " + ub.getGender() + "</p>");
	    
	} else {
	    out.println("User details are not available.");
	}

%>

        
        
        
<!--             <p><strong>Name:</strong> John Doe</p> -->
<!--             <p><strong>Email:</strong> john.doe@example.com</p> -->
<!--             <p><strong>About:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus varius sem vel neque sollicitudin fringilla.</p> -->
            <button class="edit-btn">Edit</button>
            <form action="logout" method="post">
            <button class="edit-btn">Logout</button>
            </form>
        </div>
    </div>

   <script>
        document.addEventListener("DOMContentLoaded", () => {
            const sidebar = document.getElementById("sidebar");
            const sidebarToggle = document.getElementById("sidebarToggle");
            const closeSidebar = document.getElementById("closeSidebar");
        
            sidebarToggle.addEventListener("click", () => {
                sidebar.style.right = "0"; // Show the sidebar
            });
        
            closeSidebar.addEventListener("click", () => {
                sidebar.style.right = "-300px"; // Hide the sidebar
            });
            
            // Close sidebar when clicking outside
            document.addEventListener("click", (event) => {
                if (!sidebar.contains(event.target) && !sidebarToggle.contains(event.target)) {
                    sidebar.style.right = "-300px";
                    
                }
            });
        });
        


    </script>
