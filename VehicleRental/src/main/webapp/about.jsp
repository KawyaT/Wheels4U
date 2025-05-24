<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Vehicle Rental System - about us</title>
    <style>
    	
    	.body{
    		background-color: white;
    	}
    	.about {
    padding: 50px 20px;
    text-align: left;
    margin-bottom: 10px
}

.about h1 {
    font-size: 45px;
    margin-bottom: 40px;
    text-align: center;
}

.about-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 40px;
}

.about-item {
    width: 50%;
    padding: 0 20px;
}

.about-item h2 {
    font-size: 24px;
    margin-bottom: 20px;
}

.about-item p {
    margin-bottom: 20px;
    font-size: 16px;
    color: #000000;
}

.about-item .learn-more {
    padding: 10px 20px;
    border: 1px solid #000;
    color: #f0f0f0;
    background-color: #000000;;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.about-image {
    width: 50%;
    text-align: center;
}

.about-image img {
    width: 100%;
    height: auto;
}

 /* Header Section */
        * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
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

    .auth-buttons {
        display: flex;
        gap: 10px;
    }

    .auth-buttons a {
        text-decoration: none;
        background-color: #000;
        color: #fff;
        font-size: 16px;
        padding: 8px 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .auth-buttons a:hover {
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
    <div class="wrapper">
    
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
                    <li><a href="insert.jsp">Reserve</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>

            <!-- Auth Buttons -->
            <div class="auth-buttons">
                <a href="signup.html">Sign Up</a>
                <a href="login.html">Log In</a>
            </div>
        </div>
    </header>

     <!-- About Section -->
     <section class="about">
        <u><h1>About Us</h1></u>
        <div class="about-container">
            <div class="about-item">
                <h2>About Our Service</h2>
                <p>At <b>Wheels4U</b>, we are committed to providing
                   exceptional vehicle rental services tailored
                   to meet your individual needs. Whether you're 
                   planning a weekend getaway or need a reliable 
                   vehicle for your daily commute, our fleet of 
                   well-maintained cars ensures a smooth and 
                   hassle-free experience. Our team is dedicated
                   to offering customer-centric services that 
                   make vehicle rentals convenient and affordable.
                </p>
            </div>
            <div class="about-image">
                <img src="vehiclepics/pic12.png" alt="About Image 1" class="about-us-image">
            </div>
        </div>
        <hr>
        <div class="about-container">
            <div class="about-image">
                <img src="vehiclepics/pic11.png" alt="About Image 2" class="about-us-image">
            </div>
            <div class="about-item">
                <h2>Our Commitment to Excellence</h2>
                <p>We believe that renting a vehicle should be 
                   simple, transparent, and stress-free. That's 
                   why at <b>Wheels4U</b>, we offer a wide range of 
                   vehicles, from economy to luxury options, 
                   backed by flexible rental terms and 
                   affordable pricing. Our easy-to-navigate 
                   online booking system allows you to reserve 
                   your vehicle in just a few clicks, ensuring 
                   that you're on the road in no time. With 
                   24/7 customer support and roadside 
                   assistance, your peace of mind is 
                   our top priority.
                </p>
                <br /><br>
                <p><a href="terms&conditions.html">Terms & Conditions</a></p>
            </div>
        </div>
    </section>

      <!-- Footer -->
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
    </div>
  </body>
</html>