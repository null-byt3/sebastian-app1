<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Registration Form</title>
</head>
<body>
<h1>Guru Register Form</h1>

<style>
	#customers {
	  font-family: Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	
	#customers td, #customers th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#customers tr:nth-child(even){background-color: #f2f2f2;}
	
	#customers tr:hover {background-color: #ddd;}
	
	#customers th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color: #4CAF50;
	  color: white;
	}

	input[type=text], select {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 4px;
		box-sizing: border-box;
	}

	input[type=submit] {
		width: 100%;
		background-color: #4CAF50;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		border-radius: 4px;
		cursor: pointer;
	}

	input[type=submit]:hover {
	background-color: #45a049;
	}

	div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
	}

</style>


<div id="form">
	<form onsubmit="addToTable();return false">
	  <label for="fname">First Name</label>
	  <input type="text" id="fname" name="firstname" placeholder="Your first name..">
  
	  <label for="lname">Last Name</label>
	  <input type="text" id="lname" name="lastname" placeholder="Your last name..">
  
	  <label for="country">Email</label>
	  <input type="text" id="email" name="email" placeholder="yosi@example.com..">

	  <label for="country">Phone Number</label>
	  <input type="text" id="phonenum" name="phonenum" placeholder="054-1111111">

	
	  <input type="submit" value="Submit">
	</form>
  </div>


  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>


<table id="customers">
	<tr>
	  <th>First Name</th>
	  <th>Last Name</th>
	  <th>Email</th>
	  <th>Phone Number</th>
	  <th>Remove Item</th>
	</tr>
	<tr>
		<td>Moti</td>
		<td>Barabak</td>
		<td>moti.b@gmail.com</td>
		<td>054-555555</td>
		<td><button onclick="removeRow(this)">Remove</button></td>
	</tr>
	<tr>
		<td>Sebastian</td>
		<td>Altheim</td>
		<td>sebastianaltheim@gmail.com</td>
		<td>054-4366143</td>
	</tr>
  </table>


<script>
    function addToTable(fname, lname, email, phone) {
		var table = document.getElementById("customers");
		console.log(table);
		var row = table.insertRow(1);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		var cell3 = row.insertCell(2);
		var cell4 = row.insertCell(3);


		cell1.appendChild(document.createTextNode(fname));
		cell2.appendChild(document.createTextNode(lname));
		cell3.appendChild(document.createTextNode(email));
		cell4.appendChild(document.createTextNode(phone));

	}
	
	function checkValues() {
		let fname = document.getElementById("fname").value;
		let lname = document.getElementById("lname").value;
		let email = document.getElementById("email").value;
		let phonenum = document.getElementById("phonenum").value;


	}
	
</script>
                
</body>
</html>