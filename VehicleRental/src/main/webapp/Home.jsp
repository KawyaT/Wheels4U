<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
  /* Hero Section */
		.hero {
		    position: relative;
		    height: 100vh; /* Full height */
		    overflow: hidden;
		    display: flex;
		    color: white;
		    padding-left: 25px;
		}
		
		/* Hero Video */
		.hero-video {
		    position: absolute;
		    top: 0;
		    left: 0;
		    width: 100%;
		    height: 100%;
		    object-fit: cover; /* Ensures the video covers the entire section */
		    z-index: -1; /* Places the video behind the content */
		}
		
		/* Hero Content */
		.hero-content {
		    position: relative;
		    z-index: 1; /* Ensures content stays on top of the video */
		    text-align: left;
		    max-width: 50%;
		    align-content: center;
		    padding-left: 25px;
		
		}
		
		.hero-content h1 {
		    font-size: 85px;
		    margin-bottom: 20px;
		    color: white;
		    font-family:'Times New Roman';
		    
		}
		
		.hero-content p {
		    margin-bottom: 30px;
		    font-size: 18px;
		    color: #f0f0f0;
		    font-family:'Calibri';
		}
		
		.cta-buttons button {
		    padding: 10px 20px;
		    margin-right: 10px;
		    border: none;
		    background-color: #064e96;
		    color: white;
		    cursor: pointer;
		    transition: background-color 0.3s;
		}
		
		.cta-buttons button:hover {
		    background-color: #0056b3;
		}
		
		
		/* How It Works Section */
		.how-it-works {
		    padding: 40px 20px;
		    background-color: #ffffff;
		    text-align: center;
		}
		
		.how-it-works h2 {
		    font-size: 40px;
		    margin-bottom: 20px;
		    font-family: 'Arial';
		}
		
		.steps {
		    display: flex;
		    justify-content: space-around;
		}
		
		.step {
		    width: 30%;
		    text-align: center;
		}
		
		.step img {
		    width: 100px;
		    height: auto;
		    margin-bottom: 15px;
		}
		
		.step h3 {
		    font-size: 18px;
		    margin-bottom: 10px;
		}
		
		.step p {
		    color: #2e2c2c;
		}
		
		/* Features Section */
		.features {
		    padding: 20px 20px;
		    padding-top: 10px;
		    background-color: #ffffff;
		    text-align: center;
		}
		
		.features h2 {
		    font-size: 40px;
		    margin-bottom: 20px;
		    font-family: 'Arial';
		}
		
		.feature-list {
		    display: flex;
		    justify-content: space-around;
		}
		
		.feature {
		    width: 30%;
		}
		
		.feature h3 {
		    font-size: 18px;
		    margin-bottom: 10px;
		}
		
		.feature p {
		    color: #2e2c2c;
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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Vehicle Rental System</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <jsp:include page="header.jsp"/>
  <body>
    <div class="wrapper">
   
    <!-- Hero Section with Video Background -->
    <section class="hero">
      <video autoplay loop muted playsinline class="hero-video">
        <source src="img/video1.mp4" type="video/mp4" />
      </video>
      <div class="hero-content">
        <h1>Looking to rent <br />a vehicle.</h1>
        <p>
            Welcome to <font color="red"><b><i>Wheels4U</i></b></font>, 
            your trusted vehicle rental partner. <br> 
            We offer a wide range of vehicles for any 
            occasion, <br>  with an easy booking process. <br>
            Enjoy reliable, well-maintained vehicles for your next trip!
        </p>
        <div class="cta-buttons">
          <button class="get-started" onclick="showRoleModal()">Get Started</button>
          <a href="about.jsp"><button class="learn-more">Learn More</button></a>
        </div>
      </div>
    </section>

    <!-- How It Works Section -->
    <section class="how-it-works">
      <h2>How It Works?</h2> <br>
      <div class="steps">
        <div class="step">
          <img src="img/pic1.jpg" alt="Choose a vehicle" />
          <h3>Choose a vehicle</h3>
          <p>Select the best vehicle that fits your needs.</p>
        </div>
        <div class="step">
          <img src="img/pic2.jpg" alt="Set up payment & dates" />
          <h3>Set up payment & dates</h3>
          <p>Choose the payment method and book your date.</p>
        </div>
        <div class="step">
          <img src="img/pic3.jpg" alt="Book your car" />
          <h3>Book your car</h3>
          <p>Confirm your booking and enjoy your trip.</p>
        </div>
      </div>
      <br> <hr>
    </section>

    <!-- Features Section -->
    <section class="features">
      <h2>Why Choose Us?</h2> 
      <div class="feature-list">
        <div class="feature">
          <img src="img/pic9.jpg" alt="Perfect Rental Car" width="80px" >
          <h3>Perfect Rental Car</h3>
          <p>Find the ideal car for your trip, suited to your needs.</p>
        </div>
        <div class="feature">
          <img src="img/pic7.jpg" alt="Trusted Service" width="80px" >
          <h3>Trusted Service</h3>
          <p>
            We offer reliable customer service and a seamless rental experience.
          </p>
        </div>
        <div class="feature">
          <img src="img/pic8.jpg" alt="Affordable Prices" width="80px" >
          <h3>Affordable Prices</h3>
          <p>Get the best deals and affordable rates for every rental.</p>
        </div>
      </div>
    </section>

    <!-- Role Selection Modal -->
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

</div>
<jsp:include page="vehicleFooter.jsp"/>
  </body>
</html>