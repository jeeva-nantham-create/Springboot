<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	 <div class="navbar">
            <div class="logo">
                <h2> Student Details Registration </h2>
            </div>
        
            <div class="nav-items">
            	<p><button onclick="location.href='/login/signup'">Sign Up</button></p>
            	<p><button onclick="location.href='/login'">Logout</button></p><br></br>
            </div>
        </div> 
        
         <div class="button-card">
        <div class="card-buttons">
            <button onclick="location.href='/student-details/home'">Home</button>
            <button onclick="location.href='/student-details/alldetails'">Details</button>
            <button onclick="location.href='/student-details/search-form'">Search</button>
            <button onclick="location.href='/student-details/insert'">Insert</button>
            <button onclick="location.href='/student-details/delete-student'">Delete</button>
            <button onclick="location.href='/student-details/update'">Update</button>
        </div>
        
</body>
</html>
<style>
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
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
    gap: 20px;
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

.button-card {
    background-color: rgba(255, 255, 255, 0.88);
    max-width: 1000px;
    height: 400px;
    margin: 80px auto;
    padding: 50px 30px;
    border-radius: 20px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
    text-align: center;
}

.button-card h3 {
    font-size: 28px;
    margin-bottom: 30px;
    color: #1f2c3d;
}

.card-buttons {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px 30px;
    padding: 0 40px;
    justify-items: center;
}

.card-buttons button {
    padding: 15px 30px;
    width: 100%;
    height:120px;
    background-color: #2e3b4e;
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 17px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
.card-buttons button:hover {
    background-color: #606b7b;
}

body{
        background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        background-size: cover;
    }

</style>