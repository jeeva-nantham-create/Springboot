<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Error</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
            background-size: cover;
            background-position: center;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 30px;
            background-color: rgba(17, 24, 39, 0.95);
            border-radius: 0 0 10px 10px;
        }

        .logo h2 {
            margin: 0;
            color: #ffffff;
            font-size: 22px;
        }

        .nav-items {
            display: flex;
            gap: 12px;
        }

        .nav-items button {
            padding: 8px 16px;
            border: none;
            border-radius: 6px;
            background-color: #4a90e2;
            color: white;
            font-weight: 500;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .nav-items button:hover {
            background-color: #357abd;
        }

        #container {
            background-color: rgba(255, 255, 255, 0.95);
            margin: auto;
            margin-top: 60px;
            padding: 40px;
            max-width: 500px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
            text-align: center;
        }

        #container h1 {
            color: #b00020;
            font-size: 22px;
            margin-bottom: 0;
        }

        #container::before {
            content: "⚠️";
            font-size: 36px;
            display: block;
            margin-bottom: 10px;
        }

        @media (max-width: 600px) {
            #container {
                margin: 30px 20px;
                padding: 30px 20px;
            }

            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            .nav-items {
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <h2>Student Details Registration</h2>
        </div>
        <div class="nav-items">
            <button onclick="location.href='/login/signup'">Sign Up</button>
            <button onclick="location.href='/login'">Login</button>
        </div>
    </div>

    <div id="container">
        <h1>Email ID or Password is incorrect. Please try again!</h1>
    </div>

</body>
</html>