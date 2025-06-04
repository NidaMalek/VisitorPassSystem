<%-- 
    Document   : editVisitorForm
    Created on : May 12, 2025, 7:42:58 PM
    Author     : Dell
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="wrapper">
<%@ include file="/components/header.jsp" %>

<div class="container mt-5 mb-5">
    <c:if test="${empty visitor}">
        <div class="alert alert-danger text-center" role="alert">
            Visitor not found. Invalid Unique ID.
        </div>
    </c:if>

    <c:if test="${not empty visitor}">
        <h2 class="text-center mb-4">Edit Visitor</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-body">
                        <form action="${pageContext.request.contextPath}/editVisitorServlet" method="post">
                            <input type="hidden" name="uniqueId" value="${visitor.uniqueId}" />

                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="name" value="${visitor.name}" required>
                            </div>

                            <div class="form-group">
                                <label for="contactNumber">Contact Number</label>
                                <input type="text" class="form-control" id="contactNumber" name="contactNumber" value="${visitor.contactNumber}" required>
                            </div>

                            <div class="form-group">
                                <label for="purpose">Purpose</label>
                                <input type="text" class="form-control" id="purpose" name="purpose" value="${visitor.purpose}" required>
                            </div>

                            <div class="form-group">
                                <label for="visitDate">Visit Date</label>
                                <input type="date" class="form-control" id="visitDate" name="visitDate" value="${visitor.visitDate}" required>
                            </div>

                            <div class="form-group">
                                <label for="visitTime">Visit Time</label>
                                <input type="time" class="form-control" id="visitTime" name="visitTime" value="${visitor.visitTime}" required>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary mt-3">Update Visitor</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
</div>

<%@ include file="/components/footer.jsp" %>
</div>