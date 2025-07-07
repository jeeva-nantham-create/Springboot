<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Student</title>
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
            background-color: #1f2c3d;
            padding: 12px 20px;
            border-radius: 0 0 10px 10px;
        }

        .logo h2 {
            margin: 0;
            color: white;
        }

        .nav-items {
            display: flex;
            gap: 10px;
        }

        .nav-items button {
            padding: 8px 14px;
            border: none;
            border-radius: 6px;
            background-color: #2e3b4e;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .nav-items button:hover {
            background-color: #606b7b;
        }

        h1 {
            text-align: center;
            color: white;
            margin-top: 40px;
            font-size: 28px;
        }

        form {
            background-color: rgba(255, 255, 255, 0.95);
            max-width: 600px;
            margin: 30px auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        input[type="text"] {
            width: 90%;
            padding: 12px;
            font-size: 16px;
            margin-bottom: 20px;
            border-radius: 6px;
            border: 1px solid #ccc;
            outline: none;
            background-color: #ecf0f1;
        }

        #button {
            padding: 12px 30px;
            background-color: #2c3e50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #button:hover {
            background-color: #1e2a38;
        }

        table {
            margin: 30px auto;
            width: 75%;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
            overflow: hidden;
        }

        th, td {
            padding: 14px 20px;
            border-bottom: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #dcdaf2;
            color: #2c3e50;
        }

        td {
            color: #333;
        }

        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
                gap: 10px;
                text-align: center;
            }

            form {
                width: 90%;
                padding: 20px;
            }

            table {
                width: 90%;
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
            <button onclick="location.href='/student-details/home'">Home</button>
            <button onclick="location.href='/student-details/alldetails'">Details</button>
            <button onclick="location.href='/student-details/search-form'">Search</button>
            <button onclick="location.href='/student-details/insert'">Insert</button>
            <button onclick="location.href='/student-details/delete-student'">Delete</button>
            <button onclick="location.href='/student-details/update'">Update</button>
        </div>
    </div>

    <h1>Search Student</h1>

    <form action="/student-details/search" method="get">
        <input type="text" name="rollNo" placeholder="Enter Roll No" required>
        <button type="submit" id="button">Search</button>
    </form>

    <table>
        <tr><th>Name</th><td>${student.name}</td></tr>
        <tr><th>Roll No</th><td>${student.rollNo}</td></tr>
        <tr><th>Department</th><td>${student.department}</td></tr>
        <tr><th>Phone No</th><td>${student.phoneNo}</td></tr>
        <tr><th>Place</th><td>${student.place}</td></tr>
        <tr><th>Domain</th><td>${student.domainName}</td></tr>
    </table>

</body>
</html>