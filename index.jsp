<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sebas Register Form</title>
</head>
<body>
<h1>Sebas Register Form</h1>

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
	<form action="#" onsubmit="checkValues();return false">
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


<table id="customers">
	<tr>
	  <th>First Name</th>
	  <th>Last Name</th>
	  <th>Email</th>
	  <th>Phone Number</th>
	  <th>Remove Item</th>
	</tr>
  </table>


<script>

	addToTable("Moti","Barabak","moti.b@gmail.com","054-5555555")
	addToTable("Sebastian","Altheim","sebastianaltheim@gmail.com","054-4366143")



    function addToTable(...args) {

		var table = document.getElementById("customers");
		var row = table.insertRow(table.length);
		var btn = document.createElement("BUTTON"); 
		btn.innerHTML = "Remove";
		btn.onclick = function func() { removeRow(this) };

		for (let i = 0 ; i < args.length ; i++) {
			var cell = row.insertCell(i);
			cell.appendChild(document.createTextNode(args[i]));
			cell.id = 'cell_'+i
		}
		
		var cell = row.insertCell(args.length);
		cell.appendChild(btn);

	}

	function removeRow(element) {
		var table = document.getElementById("customers");
		table.deleteRow(element.parentNode.parentNode.rowIndex)
	}
	
	function checkValues() {
		let fname = document.getElementById("fname").value;
		let lname = document.getElementById("lname").value;
		let email = document.getElementById("email").value;
		let phonenum = document.getElementById("phonenum").value;

		if (!fname || !lname || !email || !phonenum) {
			alert("Missing Parameters!");
			return;
		}

		if (!validateEmail(email)) {
			alert("Invalid Email")
			return;
		}

		if (!validatePhone(phonenum)) {
			alert("Invalid Phone")
			return;
		}

		addToTable(fname, lname, email, phonenum);
	}



	function validateEmail(email) {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
	}

	function validatePhone(phone) {
		if (phone.length < 9 || phone.length > 11) {
			return false;
		}

		var regExp = /[a-zA-Z]/g;
		if (regExp.test(phone)) {
			return false;
		}
		return true;
	}
	
</script>
                
</body>
</html>