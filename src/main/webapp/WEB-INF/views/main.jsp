<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80") no-repeat center center fixed;
            background-size: cover;
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

        .button-card {
            background-color: rgba(255, 255, 255, 0.92);
            max-width: 1000px;
            margin: 60px auto;
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
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
            padding: 0 20px;
        }

        .card-buttons button {
            padding: 20px;
            height: 100px;
            background-color: #2e3b4e;
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .card-buttons button:hover {
            background-color: #606b7b;
        }

        @media (max-width: 480px) {
            .button-card {
                padding: 30px 20px;
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
            <button onclick="location.href='/login'">Logout</button>
        </div>
    </div>

    <div class="button-card">
        <h3>Welcome to the Student Management Dashboard</h3>
        <div class="card-buttons">
            <button onclick="location.href='/student-details/home'">Home</button>
            <button onclick="location.href='/student-details/alldetails'">Details</button>
            <button onclick="location.href='/student-details/search-form'">Search</button>
            <button onclick="location.href='/student-details/insert'">Insert</button>
            <button onclick="location.href='/student-details/delete-student'">Delete</button>
            <button onclick="location.href='/student-details/update'">Update</button>
        </div>
    </div>

</body>
</html>