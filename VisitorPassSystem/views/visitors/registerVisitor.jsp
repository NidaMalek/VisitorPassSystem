<%-- 
    Document   : registerVisitor
    Created on : May 8, 2025, 6:07:37 PM
    Author     : Dell
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<div class="wrapper">
<%@ include file="/components/header.jsp" %>

<h2 class="text-center mt-5 mb-4">Visitor Registration Form</h2>

<div class="row justify-content-center mb-5">
    <div class="col-md-6">
        <div class="card shadow">
            <div class="card-body">
                <form action="<%= request.getContextPath() %>/registerVisitorServlet" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>

                    <div class="form-group">
                        <label for="contactNumber">Contact Number</label>
                        <input type="text" class="form-control" name="contactNumber" id="contactNumber" required>
                    </div>

                    <div class="form-group">
                        <label for="purpose">Purpose</label>
                        <input type="text" class="form-control" name="purpose" id="purpose" required>
                    </div>

                    <div class="form-group">
                        <label for="visitDate">Visit Date</label>
                        <input type="date" class="form-control" name="visitDate" id="visitDate" required>
                    </div>

                    <div class="form-group">
                        <label for="visitTime">Visit Time</label>
                        <input type="time" class="form-control" name="visitTime" id="visitTime" required>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-success mt-3">Register Visitor</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%@ include file="/components/footer.jsp" %>

<script>
    // Get current date and time
    const currentDate = new Date();
    
    // Format current date to YYYY-MM-DD
    const formattedDate = currentDate.toISOString().split('T')[0];
    
    // Format current time to HH:MM (24-hour format)
    const formattedTime = currentDate.toTimeString().split(' ')[0].slice(0, 5);

    // Set the default values for the visitDate and visitTime fields
    document.getElementById("visitDate").value = formattedDate;
    document.getElementById("visitTime").value = formattedTime;
</script>

</div>

<%--<%@ page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<div class="wrapper">
<%--<%@ include file="/components/header.jsp" %>--%>

<h2 class="text-center mt-5 mb-4">Visitor Registration Form</h2>

<div class="row justify-content-center mb-5">
    <div class="col-md-6">
        <div class="card shadow">
            <div class="card-body">
                <form action="<%= request.getContextPath() %>/registerVisitorServlet" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>

                    <div class="form-group">
                        <label for="contactNumber">Contact Number</label>
                        <input type="text" class="form-control" name="contactNumber" id="contactNumber" required>
                    </div>

                    <div class="form-group">
                        <label for="purpose">Purpose</label>
                        <input type="text" class="form-control" name="purpose" id="purpose" required>
                    </div>

                    <div class="form-group">
                        <label for="visitDate">Visit Date</label>
                        <input type="date" class="form-control" name="visitDate" id="visitDate" required>
                    </div>

                    <div class="form-group">
                        <label for="visitTime">Visit Time</label>
                        <input type="time" class="form-control" name="visitTime" id="visitTime" required>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-success mt-3">Register Visitor</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%--<%@ include file="/components/footer.jsp" %>--%>
</div>-->
<!--
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Visitor</title>
    </head>
    <body>
    <h2>Visitor Registration Form</h2>
    <form action="<%=request.getContextPath()%>/registerVisitorServlet" method="post">
        Name: <input type="text" name="name" required><br><br>
        Contact Number: <input type="text" name="contactNumber" required><br><br>
        Purpose: <input type="text" name="purpose" required><br><br>
        Visit Date: <input type="date" name="visitDate" required><br><br>
        Visit Time: <input type="time" name="visitTime" required /><br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>-->
