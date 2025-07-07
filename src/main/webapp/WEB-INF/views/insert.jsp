<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert </title>
</head>
<body>
	
	 <div class="navbar">
            <div class="logo">
                <h2>Student Details Registration </h2>
            </div>
        
            <div class="nav-items">
            	<p><button onclick="location.href='/student-details/home'">Home</button></p>
            	<p><button onclick="location.href='/student-details/alldetails'">Details</button></p>
                <p><button onclick="location.href='/student-details/search-form'">Search</button></p>
                <p><button onclick="location.href='/student-details/insert'">Insert</button></p>
                <p><button onclick="location.href='/student-details/delete-student'">Delete</button></p>
                <p><button onclick="location.href='/student-details/update'">Update</button></p><br></br>
            </div>
        </div>
        
        <h2 id="head"style="text-align:center;">Insert Student Details</h2>
        
<form action="/student-details/submit" method="post" >
    <div class="form-columns">
        <div class="left-column">
            <label>Name</label>
            <input type="text" name="name" required>

            <label>Roll No</label>
            <input type="text" name="rollNo" required>

            <label>Department</label>
            <input type="text" name="department" required>
        </div>

        <div class="right-column">
            <label>Phone No</label>
            <input type="text" name="phone" required>

            <label>Place</label>
            <input type="text" name="place" required>

            <label>Domain Name</label>
            <input type="text" name="domain">
        </div>
    </div>

    <div class="submit-center">
        <input type="submit" value="Submit">
    </div>
</form>

  
</body>
</html>

<style>
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    margin-bottom:7px;
    background-color: #1f2c3d;
    height: 53px;
    border-radius:15px;
}
.logo{
	color:white;
}

.nav-items {
    display: flex;
    align-items: center;
    gap: 10px;
}

.nav-items button {
    padding: 8px 16px;
    border: none;
    border-radius: 8px;
    background-color: #2e3b4e;
    color:white;
    cursor: pointer;
}

.nav-items button:hover{
    background-color: #606b7b;
}

.form-columns {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}
.left-column, .right-column {
    flex: 1;
    min-width: 140px;

}

.left-column {
	position: relative;
	left:70px;	
}
.right-column {
	position: relative;
	left:165px;
}

label {
    display: block;
    margin-top: 15px;
    font-weight: bold;
    color: 	#2c3e50;
}

.submit-center {
    text-align: center;
    margin-top: 30px;
}

.submit-center input[type="submit"] {
    width: 50%;
    background-color: #5d6d7e;
    padding: 10px;
    margin-top:30px;
    border: none;
    color: white;
    border-radius: 8px;
    cursor: pointer;
}

.submit-center input[type="submit"]:hover {
    background-color: #606b7b;
}
form {
    background-color: #e6e6fa;
    padding: 40px;
    margin-top:35px;
    border-radius: 20px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); 
    
}


form h2 {
    margin: 0;
    font-size: 28px;
    color: #333;
}

input[type]{
    width: 450px;
    background-color:#34495e;
    color:white;
    padding: 10px;
    margin-top: 20px;
    font-size: 15px;
    border-radius: 8px;
    border: 1px solid #aaa;
    outline: none;
}

body{
        background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        background-size: cover;
    }

#head{
   		 text-align: center;
         color: white;
         margin-top: 30px;
    }

    


</style>

