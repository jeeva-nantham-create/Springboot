<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.SBDemoPrg.Entity.StudentDetailsEntity" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: url('https://images.unsplash.com/photo-1524995997946-a1c2e315a42f') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        .navbar {
            position: sticky;
            top: 0;
            background: rgba(18, 18, 18, 0.95);
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 30px;
            z-index: 1000;
        }

        .logo h2 {
            margin: 0;
            font-size: 22px;
            color: #ffffff;
            letter-spacing: 1px;
        }

        .nav-items {
            display: flex;
            gap: 12px;
        }

        .nav-items button {
            padding: 8px 15px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s ease;
            font-weight: 500;
        }

        .nav-items button:hover {
            background-color: #357abd;
        }

        h1 {
            text-align: center;
            margin: 40px 0 20px;
            font-size: 36px;
            color: #fff;
            text-shadow: 1px 1px 6px #000;
        }

        .outdiv {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px 40px;
        }

        .student-card {
            background: rgba(255, 255, 255, 0.95);
            color: #333;
            border-radius: 12px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
            padding: 20px;
            width: 280px;
            transition: transform 0.3s ease;
        }

        .student-card:hover {
            transform: scale(1.03);
        }

        .student-card h3 {
            margin-top: 0;
            font-size: 20px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 8px;
            color: #2c3e50;
        }

        .student-info {
            margin-top: 10px;
            font-size: 14px;
            line-height: 1.6;
        }

        .no-data {
            background-color: rgba(255, 255, 255, 0.9);
            color: #444;
            padding: 20px;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 500;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <h2>Student Details Portal</h2>
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

<h1>Student Details</h1>

<div class="outdiv">
    <%
        List<StudentDetailsEntity> students = (List<StudentDetailsEntity>) request.getAttribute("students");
        if (students != null && !students.isEmpty()) {
            for (StudentDetailsEntity student : students) {
    %>
        <div class="student-card">
            <h3><%= student.getName() %> (Roll No: <%= student.getRollNo() %>)</h3>
            <div class="student-info">
                <p><strong>Department:</strong> <%= student.getDepartment() %></p>
                <p><strong>Phone:</strong> <%= student.getPhoneNo() %></p>
                <p><strong>Place:</strong> <%= student.getPlace() %></p>
                <p><strong>Domain:</strong> <%= student.getDomainName() %></p>
            </div>
        </div>
    <%
            }
        } else {
    %>
        <div class="no-data">No students found</div>
    <%
        }
    %>
</div>

</body>
</html>