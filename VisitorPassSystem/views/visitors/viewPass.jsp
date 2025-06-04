<%-- 
    Document   : viewPass
    Created on : May 8, 2025, 6:08:16 PM
    Author     : Dell
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.visitorpasssystem.model.VisitorModel" %>
<%@ page import="com.visitorpasssystem.dao.VisitorDAO" %>

<%
    String uniqueId = request.getParameter("uniqueId");
    VisitorModel visitor = null;
    if (uniqueId != null && !uniqueId.trim().isEmpty()) {
        visitor = VisitorDAO.getVisitorByUniqueId(uniqueId);
    }
%>

<%@ include file="/components/header.jsp" %>

<div class="container mt-5 mb-5">
    <h2 class="mb-4 text-primary text-center">Welcome <%= visitor.getName() %>, your pass info:</h2>

    <%
        if (visitor != null) {
    %>
        <div class="card shadow-sm">
            <div class="card-body">
                <form action="<%= request.getContextPath() %>/generatePassServlet" method="post">
                    <input type="hidden" name="uniqueId" value="<%= visitor.getUniqueId() %>">

                    <p><strong>Name:</strong> <%= visitor.getName() %></p>
                    <p><strong>Contact Number:</strong> <%= visitor.getContactNumber() %></p>
                    <p><strong>Purpose:</strong> <%= visitor.getPurpose() %></p>
                    <p><strong>Date of Visit:</strong> <%= visitor.getVisitDate() %></p>

                    <button type="submit" class="btn btn-info">Download Pass</button>
                </form>
                <a href="<%= request.getContextPath() %>/registerVisitorServlet" class="btn btn-link mt-3">Register Another Visitor</a>
            </div>
        </div>
    <%
        } else {
    %>
        <div class="alert alert-danger" role="alert">
            Visitor not found or invalid link.
        </div>
        <a href="<%= request.getContextPath() %>/registerVisitorServlet" class="btn btn-primary">Register a Visitor</a>
    <%
        }
    %>
</div>

<%@ include file="/components/footer.jsp" %>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.visitorpasssystem.model.VisitorModel" %>
<%@ page import="com.visitorpasssystem.dao.VisitorDAO" %>

<%
    String uniqueId = request.getParameter("uniqueId");
    VisitorModel visitor = null;
    if (uniqueId != null && !uniqueId.trim().isEmpty()) {
        visitor = VisitorDAO.getVisitorByUniqueId(uniqueId);
    }
%>--%>
<!--
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Pass</title>
</head>
<body>
    <h2>Visitor Pass</h2>

    <%
        if (visitor != null) {
    %>
        <form action="<%=request.getContextPath()%>/generatePassServlet" method="post">
            <input type="hidden" name="uniqueId" value="<%= visitor.getUniqueId() %>">
            <p><strong>Name:</strong> <%= visitor.getName() %></p>
            <p><strong>Contact Number:</strong> <%= visitor.getContactNumber() %></p>
            <p><strong>Purpose:</strong> <%= visitor.getPurpose() %></p>
            <p><strong>Date of Visit:</strong> <%= visitor.getVisitDate() %></p>
            <button type="submit" class="btn btn-info">Download Pass</button>
        </form>
        <br>
        <a href="<%=request.getContextPath()%>/registerVisitorServlet">Register Another Visitor</a>
    <%
        } else {
    %>
        <p style="color:red;">Visitor not found or invalid link.</p>
        <a href="<%=request.getContextPath()%>/registerVisitorServlet">Register a Visitor</a>
    <%
        }
    %>
</body>
</html>-->
