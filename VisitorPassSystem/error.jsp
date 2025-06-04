<%-- 
    Document   : error
    Created on : May 8, 2025, 6:08:34 PM
    Author     : Dell
--%>
<%@ page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/components/header.jsp" %>

<!-- Main Content Start -->
<!--<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card shadow-sm" style="max-width: 500px; width: 100%; padding: 20px;">-->
<div class="container d-flex justify-content-center align-items-center mt-5 mb-5" >
    <div class="card shadow-sm" style="max-width: 500px;  padding: 20px;">
        <div class="card-body">
            <h2 class="text-center mb-4">Something went wrong!</h2>

            <% 
                String errorMessage = (String) request.getAttribute("errorMessage");
                if (errorMessage != null) {
            %>
                <div class="alert alert-danger">
                    <strong>Error: </strong><%= errorMessage %>
                </div>
            <% 
                } else if (exception != null) { 
            %>
                <div class="alert alert-danger">
                    <strong>Exception: </strong><%= exception.getMessage() %>
                </div>
            <% 
                } else {
            %>
                <div class="alert alert-danger">
                    <strong>An unknown error occurred.</strong>
                </div>
            <% 
                } 
            %>

            <div class="text-center mt-4">
                <a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-primary">Back to Home Page</a>
            </div>
        </div>
    </div>
</div>
<!-- Main Content End -->

<%@ include file="/components/footer.jsp" %>


