<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "js/vehiclescript.js"> </script>
<link rel ="stylesheet" type="text/css" href = "css/style.css">
<style>

	.auth-button-inputs{
		display: flex;
        gap: 10px;
	}
	.auth-button-input{
        background-color: #000;
        color: #fff;
        font-size: 16px;
        padding: 8px 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
	}

	.auth-button-input:hover{
		background-color: #333;
	}
	
	.modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        .modal-content {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .modal-content h2 {
            margin-top: 0;
            color: #333;
            font-family: Arial, sans-serif;
        }
        .role-btn {
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 80%;
            transition: all 0.3s ease;
        }
        .user-btn { 
            background-color: #2196F3; 
            color: white; 
        }
        .driver-btn { 
            background-color: #FFC107; 
            color: black; 
        }
        .admin-btn { 
            background-color: #F44336; 
            color: white; 
        }
        .role-btn:hover { 
            opacity: 0.9;
            transform: translateY(-2px);
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            cursor: pointer;
            background: none;
            border: none;
        }
</style>
</head>
<body>

<header>
        <div class="container">
            <!-- Logo -->
            <div class="logo">
                <a href="#"><img src="vehiclepics/logo.png" alt="Logo"></a>
            </div>

            <!-- Navigation -->
            <nav>
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="vRequest.jsp">Reserve</a></li>
                    <li><a href="ManageContactCreate.jsp">Contact Us</a></li>
                </ul>
            </nav>

            <!-- Auth Buttons -->
            <div class="auth-button-inputs">
                <a href="driverInsert.jsp"><button class="auth-button-input">Sign Up</button></a>
                <button onclick="showRoleModal()" class="auth-button-input">Log In</button>
            </div>
        </div>
    </header>
    
    <div id="roleModal" class="modal">
        <div class="modal-content">
            <button class="close-btn" onclick="closeModal()">&times;</button>
            <h2>Sign Up AS</h2>
            <button class="role-btn user-btn" onclick="selectRole('User')">User / Customer</button>
            <button class="role-btn driver-btn" onclick="selectRole('Driver')">Driver</button>
            <button class="role-btn admin-btn" onclick="selectRole('Admin')">Administrator</button>
        </div>
    </div>

    <script>
        // Show the role selection modal
        function showRoleModal() {
            document.getElementById('roleModal').style.display = 'flex';
        }
        
        // Close the modal
        function closeModal() {
            document.getElementById('roleModal').style.display = 'none';
        }
        
        // Handle role selection
        function selectRole(role) {
            closeModal();
            
            // Based on the selected role, redirect to the appropriate page
            switch(role) {
                case 'User':
                    window.location.href = 'userLogin.jsp'; // or 'userRegistration.jsp'
                    break;
                case 'Driver':
                    window.location.href = 'login.jsp'; // or 'driverRegistration.jsp'
                    break;
                case 'Admin':
                    window.location.href = 'adminlogin.jsp';
                    break;
                default:
                    alert('Selected role: ' + role);
            }
        }
        
        // Close modal when clicking outside of it
        window.onclick = function(event) {
            const modal = document.getElementById('roleModal');
            if (event.target === modal) {
                closeModal();
            }
        }
    </script>

</body>
</html>