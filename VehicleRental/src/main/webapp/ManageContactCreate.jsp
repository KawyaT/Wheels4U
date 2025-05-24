<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Vehicle Rental System - Contact Us</title>
<style>
/* Reset and Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #333;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
}

.wrapper {
    min-height: 100vh;
    display: flex;
    align-items: center;
    padding: 20px 0;
}

/* Contact Section */
.contact {
    width: 100%;
    padding: 60px 0;
}

.contact-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 60px;
    align-items: start;
}

/* Contact Info Styles */
.contact-info {
    background: rgba(255, 255, 255, 0.95);
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.2);
}

.contact-info h2 {
    font-size: 2.5rem;
    margin-bottom: 20px;
    color: #2c3e50;
    font-weight: 700;
    position: relative;
}

.contact-info h2::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    width: 60px;
    height: 4px;
    background: linear-gradient(45deg, #667eea, #764ba2);
    border-radius: 2px;
}

.contact-info p {
    font-size: 1.1rem;
    margin-bottom: 30px;
    color: #555;
    line-height: 1.8;
}

.contact-info ul {
    list-style: none;
}

.contact-info li {
    display: flex;
    align-items: center;
    margin-bottom: 25px;
    padding: 15px;
    background: rgba(102, 126, 234, 0.05);
    border-radius: 10px;
    transition: all 0.3s ease;
}

.contact-info li:hover {
    background: rgba(102, 126, 234, 0.1);
    transform: translateX(10px);
}

.contact-info li img {
    width: 24px;
    height: 24px;
    margin-right: 15px;
    filter: hue-rotate(220deg);
}

.contact-info li b {
    color: #667eea;
    margin-right: 10px;
    font-weight: 600;
}

/* Contact Form Styles */
.contact-form {
    background: rgba(255, 255, 255, 0.95);
    border-radius: 20px;
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.2);
    overflow: hidden;
}

.contact-container1 {
    padding: 40px;
}

.form-group {
    margin-bottom: 25px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    font-weight: 600;
    color: #2c3e50;
    font-size: 1rem;
}

.form-group input,
.form-group textarea {
    width: 100%;
    padding: 15px 20px;
    border: 2px solid #e0e6ed;
    border-radius: 10px;
    font-size: 1rem;
    transition: all 0.3s ease;
    background: rgba(255, 255, 255, 0.9);
    font-family: inherit;
}

.form-group input:focus,
.form-group textarea:focus {
    outline: none;
    border-color: #667eea;
    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
    background: white;
}

.form-group input::placeholder,
.form-group textarea::placeholder {
    color: #aaa;
    font-style: italic;
}

.form-group textarea {
    resize: vertical;
    min-height: 120px;
}

.contact-button {
    width: 100%;
    padding: 18px;
    background: linear-gradient(45deg, #667eea, #764ba2);
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 1.1rem;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    text-transform: uppercase;
    letter-spacing: 1px;
    position: relative;
    overflow: hidden;
}

.contact-button::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
    transition: left 0.5s;
}

.contact-button:hover::before {
    left: 100%;
}

.contact-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(102, 126, 234, 0.3);
}

.contact-button:active {
    transform: translateY(0);
}

/* Responsive Design */
@media (max-width: 768px) {
    .contact-container {
        grid-template-columns: 1fr;
        gap: 40px;
        padding: 0 15px;
    }
    
    .contact-info,
    .contact-container1 {
        padding: 30px 25px;
    }
    
    .contact-info h2 {
        font-size: 2rem;
    }
    
    .contact-info p {
        font-size: 1rem;
    }
    
    .contact-info li {
        flex-direction: column;
        text-align: center;
        padding: 20px 15px;
    }
    
    .contact-info li img {
        margin-right: 0;
        margin-bottom: 10px;
    }
}

@media (max-width: 480px) {
    .contact {
        padding: 30px 0;
    }
    
    .contact-info h2 {
        font-size: 1.8rem;
    }
    
    .form-group input,
    .form-group textarea {
        padding: 12px 15px;
    }
    
    .contact-button {
        padding: 15px;
        font-size: 1rem;
    }
}

/* Animation for page load */
@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.contact-info,
.contact-form {
    animation: fadeInUp 0.8s ease-out;
}

.contact-form {
    animation-delay: 0.2s;
}
 header {
        background-color: #A0BABA;
        padding: 15px 30px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
    }

    .logo img {
        width: 120px;
    }
        
    nav ul {
        list-style: none;
        display: flex;
        gap: 30px;
    }

    nav ul li a {
        font-family: "Lucida Console", "Courier New", monospace;
        text-decoration: none;
        color: #000;
        font-size: 18px;
        padding: 8px 12px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    nav ul li a:hover {
        background-color: #d1e0e0;
    }

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
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            align-items: flex-start;
        }

        nav ul {
            flex-direction: column;
            gap: 10px;
            margin-top: 10px;
        }

        .auth-buttons {
            margin-top: 10px;
        }
    }
    
    .about-us-image{
    		max-width:400px
    }
    
    footer {
            background-color: #222;
            color: #fff;
            padding: 40px 20px;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
        }

        .footer-logo {
            width: 100%;
            text-align: center;
            margin-bottom: 30px;
        }

        .footer-logo img {
            max-width: 160px;
            height: auto;
        }

        .footer-section {
            flex: 1;
            min-width: 280px;
            margin: 10px 0;
            padding: 0 15px;
        }
        
        .contact-section {
        	padding-left: 200px;
        }

        .footer-section h3 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #f0f0f0;
        }

        .footer-section p {
            font-size: 15px;
            line-height: 1.6;
            color: #ccc;
        }

        .footer-section a {
            color: #4CAF50;
            text-decoration: none;
        }

        .footer-section a:hover {
            text-decoration: underline;
        }

        .social-media {
            margin-top: 20px;
        }

        .social-media img {
            width: 32px;
            height: 32px;
            margin-right: 10px;
            vertical-align: middle;
            transition: transform 0.2s;
        }

        .social-media a:hover img {
            transform: scale(1.1);
        }

        .footer-bottom {
            text-align: center;
            margin-top: 30px;
            padding-top: 20px;
            border-top: 1px solid #444;
        }

        .footer-bottom p {
            font-size: 14px;
            color: #888;
        }

        @media (max-width: 768px) {
            .footer-container {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .footer-section {
                padding: 10px 0;
            }

            .social-media {
                justify-content: center;
            }
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
                <button onclick="showRoleModal()" class="auth-button-input">Sign Up</button>
                <button onclick="showRoleModal()" class="auth-button-input">Log In</button>
            </div>
        </div>
    </header>
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
<div class="wrapper">

<!-- Contact Section -->
<section class="contact">
<div class="contact-container">
<div class="contact-info">
<h2>Contact Us</h2>
<p>We're here to help! Whether you're looking for more
information about our vehicles, need help with a
booking, or have any concerns during your rental period,
feel free to reach out to us.</p>
<ul>
<li>
<img src="images/pic13.jpg" alt="Phone Icon">
<b>Call us</b> : +94 11 754 4801
</li>
<li>
<img src="images/pic14.jpg" alt="Mail Icon">
<b>Mail</b> : info@wheels4U.com
</li>
<li>
<img src="images/pic15.jpg" alt="Address Icon">
<b>Address</b> : 181, New Kandy Road, Malabe, Sri Lanka. </li>
</ul>
</div>

<div class="contact-form">
<div class="contact-container1">
<form id="contactForm" action="${pageContext.request.contextPath}/contact/submitContact" method="post">
<div class="form-group">
<label for="firstname">First Name</label>
<input type="text" id="firstname" name="firstname" placeholder="Enter your first name" required>
</div>
<div class="form-group">
<label for="lastname">Last Name</label>
<input type="text" id="lastname" name="lastname" placeholder="Enter your last name" required>
</div>
<div class="form-group">
<label for="email">Email</label>
<input type="email" id="email" name="email" placeholder="Ex: mandara@email.com" required>
</div>
<div class="form-group">
<label for="phone">Phone</label>
<input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
</div>
<div class="form-group">
<label for="message">Message</label>
<textarea id="message" name="message" rows="5" placeholder="Type your message here..." required></textarea>
</div>
<button type="submit" class="contact-button">Submit</button>
</form>
</div>
</div>
</div>
</section>
</div>

<footer> 
        <div class="footer-container">
            <div class="footer-section">
                <h3>About Us</h3>
                <p>We are a premium vehicle rental service dedicated to providing our customers with the best vehicles and exceptional service. With a wide range of vehicles and flexible rental options, we make your journey comfortable and hassle-free.</p>
            </div>
            <div class="footer-section contact-section">
                <h3>Contact Us</h3>
                <p>
                    <strong>Address:</strong> 123 Kaduwela Road, Malabe, Sri Lanka<br>
                    <strong>Phone:</strong> +94-771230123<br>
                    <strong>Email:</strong> info@wheels4u.lk<br>
                    <strong>Website:</strong> <a href="https://www.rentngo.lk" target="_blank">www.wheels4u.lk</a>
                </p>

                <div class="social-media">
                    <a href="https://www.facebook.com/" target="_blank">
          			<img src="vehiclepics/facebook.png" alt="Facebook">
                    </a>
                    
                    <a href="https://www.instagram.com/" target="_blank">
                    <img src="vehiclepics/instagram.png" alt="Instagram">
                    </a>
                    
                    <a href="https://www.twitter.com/" target="_blank">
                    <img src="vehiclepics/twitter.png" alt="Twitter">
                    </a>
                    
                    <a href="https://www.pinterest.com/" target="_blank">
                    <img src="vehiclepics/pinterest.png" alt="Pinterest">
                    </a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2025 Wheels4u. All rights reserved.</p>
        </div>
    </footer>

</body>


</html>