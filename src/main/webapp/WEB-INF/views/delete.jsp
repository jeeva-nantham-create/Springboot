<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Student</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url('https://images.unsplash.com/photo-1532619675605-1f3c5ed4b8db?auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        .navbar {
            position: sticky;
            top: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 30px;
            background-color: rgba(17, 24, 39, 0.95);
            border-radius: 0 0 10px 10px;
            z-index: 100;
        }

        .logo h2 {
            margin: 0;
            color: #ffffff;
            font-size: 22px;
            letter-spacing: 0.5px;
        }

        .nav-items {
            display: flex;
            gap: 12px;
        }

        .nav-items button {
            padding: 8px 16px;
            background-color: #4a90e2;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            transition: 0.3s ease;
            font-weight: 500;
        }

        .nav-items button:hover {
            background-color: #2c6cbf;
        }

        h1 {
            text-align: center;
            margin: 40px 0 20px;
            font-size: 32px;
            color: #ffffff;
            text-shadow: 1px 1px 4px #000;
        }

        form {
            background-color: rgba(255, 255, 255, 0.95);
            color: #333;
            max-width: 500px;
            margin: 40px auto;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="text"] {
            width: 90%;
            padding: 12px;
            margin: 15px 0;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4a90e2;
        }

        #search {
            padding: 12px 25px;
            background-color: #4a90e2;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #search:hover {
            background-color: #2c6cbf;
        }
    </style>
</head>
<body>

    <div class="navbar">
        <div class="logo">
            <h2>Student Details Registration</h2>
        </div>
        <div class="nav-items">
            <button onclick="location.href='/student-details/home'">Home</button>
            <button onclick="location.href='/student-details/alldetails'">Details</button>
            <button onclick="location.href='/student-details/search-form'">Search</button>
            <button onclick="location.href='/student-details/insert'">Insert</button>
            <button onclick="location.href='/student-details/delete-student'">Delete</button>
            <button onclick="location.href='/student-details/update'">Update</button>
        </div>
    </div>

    <h1>Delete Student by Roll No</h1>

    <form action="/student-details/delete" method="get">
        <input type="text" name="rollNo" placeholder="Enter Roll Number" required />
        <button type="submit" id="search">Delete</button>
    </form>

</body>
</html>