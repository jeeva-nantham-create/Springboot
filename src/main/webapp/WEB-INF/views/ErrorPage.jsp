<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="navbar">
            <div class="logo">
                <h2> Student Details Registration </h2>
            </div>
        
            <div class="nav-items">
            	<p><button onclick="location.href='/login/signup'">Sign Up</button></p>
            	<p><button onclick="location.href='/login'">Login</button></p><br></br>
            </div>
        </div>
        
	<div id="container">
		<h1>Email Id Or Password Wrong Try Again !!</h1>	
	</div>

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
    
</style>