<%-- 
    Document   : adminLogin
    Created on : May 9, 2025, 1:58:17 PM
    Author     : Dell
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--<%@ include file="/components/header.jsp" %>--%>
<div class="wrapper">
<%@ include file="/components/header.jsp" %>
<div class="container mt-5 mb-5 col-md-5">
    <div class="card shadow">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">Admin Login</h3>
            <form action="<%=request.getContextPath()%>/adminLoginServlet" method="post">
                <div class="mb-3">
                    <label class="form-label">Username:</label>
                    <input type="text" name="username" class="form-control" required />
                </div>
                <div class="mb-3">
                    <label class="form-label">Password:</label>
                    <input type="password" name="password" class="form-control" required />
                </div>
                <button type="submit" class="btn btn-primary w-100">Login</button>

            </form>
        </div>
    </div>
</div>

<%@ include file="/components/footer.jsp" %>
</div>
<!--
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
    </head>
    <body>

</c:if>
        <form action="<%=request.getContextPath()%>/adminLoginServlet" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" required><br> <br>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" required><br> <br>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>

    </body>
</html>-->
