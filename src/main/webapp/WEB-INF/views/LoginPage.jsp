<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <div id="main">
        <div id="form">
            <h2>Login</h2><br>
            <form action="/login/get-login-details" method="get" >
                <label class="file" >Email Id </label>
                <input type="email" name="useremail" required><br>
                <label class="file" >Password </label>
                <input type="password" name="password" required><br>
                
                <p id="login">If don't have Account? <a href='/login/signup'>Sign-Up</a></p>
                
                <div id="button">
                    <button type="submit">Submit</button>
                    <button>Rest</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

<style>
body {
		background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        background-size: cover;
}

#main {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

#form {
    background-color: #dcd8f2;
    padding: 40px;
    border-radius: 16px;
    width: 360px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
}

#form h2 {
    text-align: center;
    color: #1f2c3d;
    margin-bottom: 20px;
}

label.file {
    font-size: 15px;
    font-weight: bold;
    color: #1f2c3d;
    display: block;
    margin-top: 15px;
}

input[type="text"],
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-top: 15px;
    font-size: 15px;
    border-radius: 8px;
    border: none;
    background-color: #37475a;
    color: white;
    outline: none;
}

input[type="text"]::placeholder,
input[type="email"]::placeholder,
input[type="password"]::placeholder {
    color: #b0b8c1;
}

#button {
    display: flex;
    justify-content: center;
    gap: 12px;
    margin-top: 20px;
}

#button button {
    padding: 10px 20px;
    font-size: 15px;
    border: none;
    border-radius: 8px;
    background-color: #2e3b4e;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s;
}

#button button:hover {
    background-color: #606b7b;
}

#login {
    font-size: 14px;
    margin-top: 15px;
    text-align: center;
    color: #1f2c3d;
}

#login a {
    color: #2e3b4e;
    text-decoration: underline;
}
</style>