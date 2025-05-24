<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <title>Admin Login - Vehicle Rental System</title>
 
    <style>
        body {
    		font-family: Arial, Helvetica, sans-serif;
    		background-image: url("../vehiclepics/oip.jpg");
    		width: 100%;
    		min-height: 100vh;
    		background-repeat: repeat-y;
    		background-size: cover;
    		display: flex;
    		flex-direction: column;
    		background-position: center;
    		margin: 0;
    		padding: 0;
		}

        .login-form {
        	margin-top: 40px;
        	margin-bottom: 40px;
        	margin-left: 450px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
            
        }

        .login-form h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .form-group input:focus {
            outline: none;
            border-color: #1E90FF;
            box-shadow: 0 0 5px rgba(30,144,255,0.3);
        }

        .error-message {
            color: #dc3545;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #1E90FF;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: #187bcd;
        }
    </style>
    
</head>

<jsp:include page="header.jsp"/>
<body>

<div class="login-form">
        <h2>Admin Login</h2>

        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message">
                <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <form action="adminloginServlet" method="post">
            <div class="form-group">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>

            <button type="submit" class="submit-btn">Login</button>
        </form>
    </div>
       

<jsp:include page="vehicleFooter.jsp"/>

</body>
</html>