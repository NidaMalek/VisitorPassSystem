<%-- 
    Document   : adminDashboard
    Created on : May 9, 2025, 1:58:37 PM
    Author     : Dell
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/components/header.jsp" %>

<%
    if (session == null || session.getAttribute("admin") == null) {
        response.sendRedirect(request.getContextPath() + "/views/admin/adminLogin.jsp?error=Please login first");
        return;
    }
%>
<div class="container mt-5">
    <h2>Welcome Admin</h2>
    <p class="lead">You are logged in as: ${sessionScope.admin.username}</p>

    <a href="${pageContext.request.contextPath}/viewAllVisitorsServlet" class="btn btn-info mt-3">View All Visitors</a>
    <form action="${pageContext.request.contextPath}/logoutServlet" method="post" style="display: inline;">
        <button type="submit" class="btn btn-danger mt-3 ms-2">Logout</button>
    </form>
</div>

<%@ include file="/components/footer.jsp" %>

<%--<%@ page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<div class="wrapper mb-0 ">
<%--<%@ include file="/components/header.jsp" %>--%>

<div class="container mt-5">
    <h2>Welcome Admin</h2>
    <p class="lead">You are logged in as: ${sessionScope.admin.username}</p>

    <a href="${pageContext.request.contextPath}/viewAllVisitorsServlet" class="btn btn-info mt-3">View All Visitors</a>
<form action="${pageContext.request.contextPath}/logoutServlet" method="post" style="display: inline;">
    <button type="submit" class="btn btn-danger mt-3 ms-2">Logout</button>
</form>
</div>

<%--<%@ include file="/components/footer.jsp" %>--%>
</div>-->
