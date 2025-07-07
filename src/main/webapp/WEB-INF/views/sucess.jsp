<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        
	<div id="container">
		<h1>Student Details Are Sucessfully Stored In The Database !!</h1>	
	</div>

	<p><button id="insert" onclick="location.href='/student-details/insert'">Insert</button></p>
	
</body>
</html>

<style>
	#container {
	background-color: #e6e6fa;
	width:555px;
    position: relative;
    top:100px;
    left:30%;
    padding: 40px;
    margin-top:20px;
    border-radius: 20px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2); 
	}

    body{
        background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        background-size: cover;
    }
    
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

#insert {
    display: block;
    width: 275px;
    margin: 20px auto;
    padding: 12px;
    background-color: #2c3e50;
    color: white;
    border: none;
    position:relative;
    top:115px;
    font-size: 16px;
    border-radius: 6px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
</style>