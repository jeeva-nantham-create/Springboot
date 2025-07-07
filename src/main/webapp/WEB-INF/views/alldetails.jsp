<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.SBDemoPrg.Entity.StudentDetailsEntity" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Details</title>
   
</head>
<body>

	 <div class="navbar">
            <div class="logo">
                <h2> Student Details Registration </h2>
            </div>
        
            <div class="nav-items">
            	<p><button onclick="location.href='/student-details/home'">Home</button></p>
            	<p><button onclick="location.href='/student-details/alldetails'">Details</button></p>
                <p><button onclick="location.href='/student-details/search-form'">Search</button></p>
                <p><button onclick="location.href='/student-details/insert'">Insert</button></p>
                <p><button onclick="location.href='/student-details/delete-student'">Delete</button></p>
                <p><button onclick="location.href='/student-details/update'">Update</button></p><br></br>
            </div>
        </div> 
        
    <h1>Student Details</h1>

    <div class="outdiv">
       <table>
            <tr>
            	<th>Roll No</th>
        		<th>Name</th>
        		<th>Department</th>
        		<th>Phone No</th>
        		<th>Place</th>
        		<th>Domain</th>
            </tr>

            <%
            List<StudentDetailsEntity> students = (List<StudentDetailsEntity>) request.getAttribute("students");
            if (students != null && !students.isEmpty()) {
                for (StudentDetailsEntity student : students) {
            %>    	
                        <tr>
                            <td><%= student.getRollNo() %></td>
                            <td><%= student.getName() %></td>
                            <td><%= student.getDepartment() %></td>
                            <td><%= student.getPhoneNo() %></td>
                            <td><%= student.getPlace() %></td>
                            <td><%= student.getDomainName() %></td>
                            
                        </tr>
            <%
                    }
                } else {
            %>
                    <tr><td colspan="4">No students found</td></tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>

<style>
    body {
        margin: 0;
        padding: 0;
        background-image: url("https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80");
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        background-size: cover;
    }

    h1 {
   		 text-align: center;
         color: white;
         margin-top: 30px;
    }

    .outdiv {
        background-color: #e5e0f2;
        border-radius: 10px;
        padding: 30px;
        margin: 40px auto;
        width: 100%;
        max-width: 1200px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: white;
        border-radius: 8px;
        overflow: hidden;
    }

    th {
        background-color: #2d3e50;
        color: white;
        padding: 12px;
        text-align: left;
        font-weight: 600;
    }

    td {
        padding: 10px;
        color: #333;
    }

    tr:nth-child(even) {
        background-color: #f0f4fa;
    }

    tr:hover {
        background-color: #dde6f2;
    }
    
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    margin-top:8px;
    margin-bottom:7px;
    padding: 10px 0px;
    background-color: #1f2c3d;
    height: 53px;
    border-radius:10px;
}
.logo{
	color:white;
	position:relative;
	left:10px;
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
    color:white;
    cursor: pointer;
}

.nav-items button:hover{
    background-color: #606b7b;
}
    

</style>
