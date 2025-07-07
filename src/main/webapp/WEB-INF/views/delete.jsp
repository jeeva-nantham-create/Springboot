<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
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
        
        
        <h1 id="head"style="text-align:center;">Delete Student by Roll No</h1>

    <form action="/student-details/delete" method="get" style="text-align:center;">
        <input type="text" name="rollNo" placeholder="Enter Roll No" required>
        <button type="submit" id="search">Delete</button>
    </form>
    


    
        
        
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

body{
        background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        background-size: cover;
    }
    
#head{
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
#search {
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

</style>