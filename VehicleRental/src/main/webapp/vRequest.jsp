<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.topic1 {
    font-size: 35px;
    padding-bottom: 20px;
}

.vehiclerequestContainer{
    margin-top: 20px;
    margin-bottom: 20px;
    margin-left: 25%;
    width: 50%;
    border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.addrequestForm{
    padding-top: 30px;
    padding-bottom: 30px;
    padding-left: 90px;
}



input[type=text], select{
    width: 60%;
    padding: 12px 20px;
    margin: 15px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit]{
    width: 50%;
    background-color: #086d0b;
    color: white;
    padding: 14px 20px;
    margin: 25px 0px 15px 80px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #08c211;
}

input[type=reset]{
    width: 50%;
    background-color: orangered;
    color: white;
    padding: 14px 20px;
    margin: 10px 0px 15px 80px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=reset]:hover {
    background-color: #f36730;
}


.vehicle-container {
  display: flex;
  flex-wrap: nowrap;
  overflow-x: auto;
  margin-top: 20px;
  gap: 15px;
}

.vehicle-card {
  border: 1px solid #ccc;
  border-radius: 10px;
  padding: 10px;
  width: 200px;
  text-align: center;
  flex-shrink: 0;
}

.vehicle-card img {
  width: 100%;
  height: 120px;
  object-fit: cover;
  border-radius: 8px;
}

</style>



</head>
<body>

<jsp:include page="header.jsp"/>

<!--Make a request form-->
<div class="vehiclerequestContainer">

    <form class="addrequestForm" action="SubmitVehicleRequest" method="POST" enctype = "multipart/form-data" onsubmit="return validateForm()">

    <h1 class="topic1"> Make A Request </h1>


		First Name:
        <input type="text" name="firstName" placeholder="Enter first name..." required maxlength = "100">
        
        <br>

		Last Name: 
        <input type="text" name="lastName" placeholder="Enter last name..." required maxlength = "100">

        <br><br>
        


 		Phone Number:
         <input type="tel" name="phone" id="phone" required pattern="0[0-9]{9}" title="Enter a valid 10-digit Sri Lankan phone number starting with 0">

        <br>
		<br>

       
         <label for="vehicleType">Select Vehicle Type:</label>
  		<select id="vehicleType" name="vehicleType" onchange="fetchVehicles()" required>
    		<option value="">-- Select Type --</option>
    		<option value="car">Car</option>
    		<option value="bus">Bus</option>
    		<option value="van">Van</option>
    		<option value="motorbike">Motor Bike</option>
  		</select>

  		<div id="vehicleContainer" class="vehicle-container">
   		 <!-- Vehicle cards will appear here dynamically -->
  		</div>

 
       
       <script>
    function fetchVehicles() {
      const type = document.getElementById("vehicleType").value;
      fetch(GetVehiclesByType?type=${type})
        .then(response => response.json())
        .then(data => {
          const container = document.getElementById("vehicleContainer");
          container.innerHTML = "";

          if (data.length === 0) {
            container.innerHTML = "<p>No vehicles available.</p>";
            return;
          }

          data.forEach(vehicle => {
            const card = document.createElement("div");
            card.className = "vehicle-card";
            card.innerHTML = 
              <img src="${vehicle.imageUrl}" alt="${vehicle.name}">
              <p><strong>ID:</strong> ${vehicle.vehicleId}</p>
              <p><strong>Name:</strong> ${vehicle.name}</p>
              <p><strong>Model:</strong> ${vehicle.model}</p>
              <p><strong>Price/Day:</strong> $${vehicle.pricePerDay}</p>
              <label>
                <input type="radio" name="selectedVehicleId" value="${vehicle.vehicleId}" required>
                Select
              </label>
            ;
            container.appendChild(card);
          });
        })
        .catch(error => {
          console.error("Error fetching vehicles:", error);
        });
    }
    
    
    function validateForm() {
        const pickupDate = new Date(document.getElementById("pickupDate").value);
        const today = new Date();
        today.setHours(0,0,0,0);

        if (pickupDate < today) {
          alert("Pickup date cannot be in the past.");
          return false;
        }
        return true;
    }
    
    </script>
       
    
       
         Pick-Up Date:
         <input type="date" name="pickupDate" id="pickupDate" required>
        <br><br><br>
		<br>
        

        Pick-Up Time:
        <input type="time" name="pickupTime" id="pickupTime" required>

        <br>
		<br><br>
		<br>
		
        
        For how many days do you need?:
        <input type="number" name="numDays" id="days" min="1" max="30" required>

        <br><br>

        
        <br>

        <input type="submit" value="SUBMIT REQUEST">
        <input type="reset" value="RESET">

    </form>

</div>

<jsp:include page="vehicleFooter.jsp"/>

</body>
</html>