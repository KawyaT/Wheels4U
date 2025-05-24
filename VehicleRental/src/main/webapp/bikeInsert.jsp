<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src = "js/vehiclescript.js"> </script>
<link rel ="stylesheet" type="text/css" href = "css/style.css">

</head>

<jsp:include page="vehicleHeader.jsp"/>
<body>


<!--Add car form-->
<div class="vehicleContainer">

    <form class="addvehicleForm" action="bikeInsertServlet" method="POST" enctype = "multipart/form-data">

    <h1 class="topic1"> Add New Bike </h1>


		Bike Image:
        <input type="file" name="bikeimg" placeholder="Upload bike image..." required>
        
        <br>

		Bike Name: 
        <input type="text" name="bikeName" placeholder="Enter bike name..." required maxlength = "100">

        <br>


 		Bike Brand:
        <input type="text" name="brand" placeholder="Enter bike brand..." required maxlength = "50">

        <br>

        Bike Type: 
        <input type="text" name="type" placeholder="Enter bike type..." required maxlength = "50">

        <br>

        Bike Model: 
        <input type="text" name="model" placeholder="Enter bike model..." required maxlength = "50">

        <br>

        Color:
        <input type="text" name="color" placeholder="Enter bike color" required maxlength = "50">

        <br>

        License Plate Number: 
        <input type="text" name="plateNumber" placeholder="e.g., ABC-1234" required maxlength = "50" pattern = "[A-Z0-9-]+" title = "Only capital letters, numbers, and dashes allowed (e.g., ABC-1234)" oninput = "this.value = this.value.toUpperCase();">

        <br>
        <br>

        Manufactured Year:
        <input type="number" name="year" placeholder="e.g., 2020" required pattern = "^\d{4}$" maxlength = "4" min ="1900" max = "2025" title = "Enter a 4-digit year (e.g., 2020). No letters or decimals allowed.">

        <br>
        <br>

        Mileage:
        <input type="text" name="mileage" placeholder="e.g., 4500.75" required pattern = "^\d{1,6}(\.\d{1,2})?$" maxlength = "9" title = "Enter the mileage with up to 6 digits before the decimal and up to 2 after. (e.g., 123456.78)." >

        <br>

        
        Price per Day (LKR):
        <input type="text" name="price" placeholder="e.g., 12500.00." required pattern = "^\d{1,10}(\.\d{1,2})?$" maxlength = "13" title ="Enter the rental price with up to 10 digits before the decimal and up to 2 after. (e.g., 12500.00)">

        <br>

        Status:
            <select name="status" required>
                <option value="Available" selected> Available </option>
                <option value = "Booked"> Booked </option>
            </select>

        <br>

        <input type="submit" value="ADD VEHICLE">
        <input type="reset" value="RESET">

    </form>

</div>

<jsp:include page="vehicleFooter.jsp"/>

</body>
</html>