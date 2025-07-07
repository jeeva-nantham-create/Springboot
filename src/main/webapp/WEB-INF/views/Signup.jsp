<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-up</title>
    <style>
        body {
            background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
            background-size: cover;
            background-position: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
        }

        #main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 16px;
            width: 400px;
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
            padding: 12px;
            margin-top: 8px;
            font-size: 15px;
            border-radius: 8px;
            border: 1px solid #ccc;
            background-color: #f4f6fa;
            color: #333;
            outline: none;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            background-color: #eef3f8;
            border-color: #2e3b4e;
        }

        #button {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin-top: 25px;
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

        @media (max-width: 480px) {
            #form {
                width: 90%;
                padding: 25px;
            }
        }
    </style>
</head>
<body>
    <div id="main">
        <div id="form">
            <h2>Sign-Up</h2>
            <form action="/login/save-signup-details" method="post">
                <label class="file">Full Name</label>
                <input type="text" name="username" placeholder="Enter your full name" required>

                <label class="file">Email Id</label>
                <input type="email" name="useremail" placeholder="Enter your email address" required>

                <label class="file">Password</label>
                <input type="password" name="password" placeholder="Create a password" required>

                <label class="file">Phone No</label>
                <input type="text" name="phoneno" placeholder="Enter your phone number" required>

                <p id="login">Already have an account? <a href='/login'>Login</a></p>

                <div id="button">
                    <button type="submit">Submit</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>