<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Search </title>
</head>
<body>

	 <div class="navbar">
            <div class="logo">
                <h2> Student Details Registration </h2>
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
    
    <h1 style="text-align:center;">Student Details</h1>

    <form action="/student-details/search" method="get" style="text-align:center;">
        <input type="text" name="rollNo" placeholder="Enter Roll No" required>
        <button type="submit" id="button">Search</button>
    </form>

        
        <table border="1" align="center" cellpadding="10">
            <tr><th>Name</th><td>${student.name}</td></tr>
            <tr><th>Roll No</th><td>${student.rollNo}</td></tr>
            <tr><th>Department</th><td>${student.department}</td></tr>
            <tr><th>Phone No</th><td>${student.phoneNo}</td></tr>
            <tr><th>Place</th><td>${student.place}</td></tr>
            <tr><th>Domain</th><td>${student.domainName}</td></tr>
        </table>
</body>
</html>

<style>

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
        margin-bottom:7px;
    padding: 10px 0px;
    background-color: #1f2c3d;
    height: 53px;
    border-radius:10px;
}
.logo{
	color:white;
	position:relative;
	left:10px;
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

body {
    background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
	  background-size: cover;
}

 h1 {
   		 text-align: center;
         color: white;
         margin-top: 30px;
}


form {
    background-color: #dcdaf2; 
    max-width: 900px;
    margin: 50px auto;
    padding: 30px 40px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}


input[type="text"] {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    background-color: #2c3e50; 
    color: white;
    font-size: 16px;
    border-radius: 6px;
}

#button {
    display: block;
    width: 50%;
    margin: 20px auto;
    padding: 12px;
    background-color: #2c3e50;
    color: white;
    border: none;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #1e2a38;
}

table {
    margin: 20px auto;
    border-collapse: collapse;
    width: 70%;
    background-color: #ffffff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
}

th, td {
    padding: 14px 18px;
    text-align: left;
    border-bottom: 1px solid black;
}

th {
    background-color: #dcdaf2;
    color: #2c3e50;
}

td {
    color: #333;
}

	
</style>
