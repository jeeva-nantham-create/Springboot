<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Student</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url('https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
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

        #head {
            text-align: center;
            margin: 40px 0 20px;
            font-size: 30px;
            color: #ffffff;
            text-shadow: 1px 1px 4px #000;
        }

        form {
            background-color: rgba(255, 255, 255, 0.95);
            max-width: 900px;
            margin: auto;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
        }

        .form-columns {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            justify-content: space-between;
        }

        .form-columns > div {
            flex: 1;
            min-width: 250px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            font-size: 15px;
            border-radius: 8px;
            border: 1px solid #ccc;
            background-color: #ecf0f1;
            transition: border 0.3s;
        }

        input[type="text"]:focus {
            border-color: #4a90e2;
            outline: none;
        }

        .submit-center {
            text-align: center;
            margin-top: 30px;
        }

        .submit-center input[type="submit"] {
            background-color: #2c3e50;
            color: white;
            padding: 12px 40px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-center input[type="submit"]:hover {
            background-color: #1e2a38;
        }

        @media (max-width: 768px) {
            .form-columns {
                flex-direction: column;
            }

            form {
                margin: 20px;
                padding: 30px;
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

    <h2 id="head">Insert Student Details</h2>

    <form action="/student-details/submit" method="post">
        <div class="form-columns">
            <div class="left-column">
                <label>Name</label>
                <input type="text" name="name" required>

                <label>Roll No</label>
                <input type="text" name="rollNo" required>

                <label>Department</label>
                <input type="text" name="department" required>
            </div>

            <div class="right-column">
                <label>Phone No</label>
                <input type="text" name="phone" required>

                <label>Place</label>
                <input type="text" name="place" required>

                <label>Domain Name</label>
                <input type="text" name="domain">
            </div>
        </div>

        <div class="submit-center">
            <input type="submit" value="Submit">
        </div>
    </form>

</body>
</html>