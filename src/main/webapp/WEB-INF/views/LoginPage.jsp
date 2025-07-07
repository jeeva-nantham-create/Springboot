<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80") no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #form {
            background-color: rgba(255, 255, 255, 0.95);
            padding: 40px 30px;
            border-radius: 16px;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
        }

        #form h2 {
            text-align: center;
            color: #1f2c3d;
            margin-bottom: 25px;
            font-weight: 600;
        }

        label.file {
            font-size: 15px;
            font-weight: 600;
            color: #1f2c3d;
            display: block;
            margin-top: 16px;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            border-radius: 8px;
            border: 1px solid #ccc;
            background-color: #ecf0f1;
            color: #333;
            font-size: 15px;
            outline: none;
            transition: border 0.3s;
        }

        input:focus {
            border-color: #4a90e2;
        }

        #login {
            font-size: 14px;
            margin-top: 15px;
            text-align: center;
            color: #333;
        }

        #login a {
            color: #2e3b4e;
            text-decoration: underline;
            font-weight: 500;
        }

        #button {
            display: flex;
            justify-content: space-between;
            margin-top: 25px;
        }

        #button button {
            flex: 1;
            margin: 0 5px;
            padding: 12px;
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

        @media (max-width: 480px) {
            #form {
                margin: 20px;
                padding: 30px 20px;
            }

            #button {
                flex-direction: column;
                gap: 10px;
            }

            #button button {
                margin: 0;
            }
        }
    </style>
</head>
<body>

    <div id="form">
        <h2>Login</h2>
        <form action="/login/get-login-details" method="get">
            <label class="file">Email ID</label>
            <input type="email" name="useremail" required>

            <label class="file">Password</label>
            <input type="password" name="password" required>

            <p id="login">Don't have an account? <a href='/login/signup'>Sign Up</a></p>

            <div id="button">
                <button type="submit">Submit</button>
                <button type="reset">Reset</button>
            </div>
        </form>
    </div>

</body>
</html>