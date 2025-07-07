<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success - Insert Complete</title>
    <style>
        body {
            background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
            background-size: cover;
            margin: 0;
            font-family: Arial, sans-serif;
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

        .logo {
            color: white;
            position: relative;
            left: 10px;
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
            color: white;
            cursor: pointer;
        }

        .nav-items button:hover {
            background-color: #606b7b;
        }

        #container {
            background-color: #e6e6fa;
            max-width: 600px;
            margin: 100px auto 0;
            padding: 40px;
            border-radius: 20px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        #container h1 {
            font-size: 24px;
            color: #1f2c3d;
            margin-bottom: 30px;
        }

        #insert {
            padding: 12px 20px;
            font-size: 16px;
            background-color: #2c3e50;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #insert:hover {
            background-color: #1e2a38;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <h2>Student Details Registration</h2>
        </div>
        <div class="nav-items">
            <p><button onclick="location.href='/student-details/home'">Home</button></p>
            <p><button onclick="location.href='/student-details/alldetails'">Details</button></p>
            <p><button onclick="location.href='/student-details/search-form'">Search</button></p>
            <p><button onclick="location.href='/student-details/insert'">Insert</button></p>
            <p><button onclick="location.href='/student-details/delete-student'">Delete</button></p>
            <p><button onclick="location.href='/student-details/update'">Update</button></p>
        </div>
    </div>

    <div id="container">
        <h1>Student Details Are Successfully Stored in the Database!</h1>
        <button id="insert" onclick="location.href='/student-details/insert'">Insert More Data</button>
    </div>

</body>
</html>