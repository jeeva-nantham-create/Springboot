<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update</title>
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

    <h1>Update Student Details</h1>
    
    <div class="form-container">
        <form action="/student-details/update-form" method="get">
            <input type="text" name="rollNo" placeholder="Enter Roll No to Update" required />
            <button type="submit">Fetch & Update</button>
        </form>
    </div>

    <div class="form-container">
        <form action="/student-details/update-student" method="post">
            <input type="hidden" name="id" value="${student.id}" />
            <input type="text" name="name" value="${student.name}" placeholder="Name" required />
            <input type="text" name="rollNo" value="${student.rollNo}" placeholder="Roll No" required />
            <input type="text" name="department" value="${student.department}" placeholder="Department" required />
            <input type="text" name="phone" value="${student.phoneNo}" placeholder="Phone Number" required />
            <input type="text" name="place" value="${student.place}" placeholder="Place" required />
            <input type="text" name="domain" value="${student.domainName}" placeholder="Domain Name" required />
            <button type="submit">Update</button>
        </form>
    </div>


</body>
</html>

    <style>
        body {
            background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80");
            background-size: cover;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            margin-top:8px;
            padding: 10px 0px;
            background-color: #1f2c3d;
            height: 53px;
            border-radius: 10px;
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

        h1 {
            text-align: center;
            color: white;
            margin-top: 30px;
        }

        .form-container {
            max-width: 500px;
            margin: 30px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.92);
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-container button {
            width: 100%;
            padding: 12px;
            background-color: #1f2c3d;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #37475a;
        }
    </style>
