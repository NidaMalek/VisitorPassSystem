<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    if (session == null || session.getAttribute("admin") == null) {
        response.sendRedirect(request.getContextPath() + "/views/admin/adminLogin.jsp?error=Please login first");
        return;
    }
%>
<style>
    .pagination .page-item .page-link {
        padding: 6px 16px;
        margin: 0 4px;
        border-radius: 6px;
        color: #0d6efd;
        border: 1px solid #dee2e6;
        background-color: white;
        transition: background-color 0.2s;
    }

    .pagination .page-item.disabled .page-link {
        color: #aaa;
        pointer-events: none;
        background-color: #f1f1f1;
    }

    .pagination .page-item:not(.disabled) .page-link:hover {
        background-color: #e9f0ff;
        color: #0d6efd;
    }
    #pageIndicator {
        font-size: 14px;
        color: #555;
    }
</style>

<div class="wrapper" style="body{ background-color: #ffffff;}">
<%@ include file="/components/header.jsp" %>

<div class="container mt-5 my-4" >
    <h2 class="text-center fw-bold mb-4">All Visitors</h2>

    <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
        <input type="text" id="searchInput" class="form-control w-50" placeholder="Search by name, contact, or purpose...">
        <div>
            <a href="${pageContext.request.contextPath}/exportVisitorsPdfServlet" class="btn btn-success ms-3">Download PDF</a>
            <a href="${pageContext.request.contextPath}/exportVisitorsCsvServlet" class="btn btn-success ms-2">Export CSV</a>
        </div>
    </div>

    <table class="table table-bordered table-striped" id="visitorTable">
        <thead>
            <tr>
                <th>Name</th>
                <th>Contact</th>
                <th>Purpose</th>
                <th>Date</th>
                <th>Time</th>
                <th>Unique ID</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="visitor" items="${visitors}">
                <tr>
                    <td>${visitor.name}</td>
                    <td>${visitor.contactNumber}</td>
                    <td>${visitor.purpose}</td>
                    <td>${visitor.visitDate}</td>
                    <td>${visitor.visitTime}</td>
                    <td>${visitor.uniqueId}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/editVisitorServlet?uniqueId=${visitor.uniqueId}" class="btn btn-light  btn-sm">Edit</a>
                        <a href="${pageContext.request.contextPath}/deleteVisitorServlet?uniqueId=${visitor.uniqueId}" class="btn btn-light btn-sm" onclick="return confirmDelete();">Delete</a>
                        <a href="${pageContext.request.contextPath}/generatePassServlet?uniqueId=${visitor.uniqueId}" class="btn btn-light btn-sm">Download Pass</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Pagination -->
<!--    <nav class="d-flex justify-content-center align-items-center mt-4" aria-label="Page navigation">
        <ul class="pagination mb-0" id="pagination"></ul>
        <span class="ms-3 fw-semibold" id="pageIndicator"></span>
    </nav>-->
<nav class="d-flex flex-column align-items-center mt-4" aria-label="Page navigation">
    <ul class="pagination mb-2" id="pagination"></ul>
    <span class="fw-semibold" id="pageIndicator"></span>
</nav>

    
</div>
<!--<script>
    const searchInput = document.getElementById("searchInput");
    const table = document.getElementById("visitorTable");
    const pagination = document.getElementById("pagination");
    const pageIndicator = document.getElementById("pageIndicator");
    const rowsPerPage = 5;
    let currentPage = 1;
    let rows = [];

    function displayRows() {
        const query = searchInput.value.toLowerCase();
        const filteredRows = rows.filter(row =>
            row.innerText.toLowerCase().includes(query)
        );

        const totalPages = Math.max(1, Math.ceil(filteredRows.length / rowsPerPage));
        if (currentPage > totalPages) currentPage = 1;

        // Hide all rows
        rows.forEach(row => row.style.display = "none");

        // Show current page rows
        const start = (currentPage - 1) * rowsPerPage;
        const end = start + rowsPerPage;
        filteredRows.slice(start, end).forEach(row => row.style.display = "");

        renderPagination(totalPages);
        pageIndicator.innerText = 'Page '+ currentPage + ' of ' + totalPages;
        console.log("Rows found:", rows.length, " | Filtered:", filteredRows.length);
    }

    function renderPagination(totalPages) {
        pagination.innerHTML = "";

        for (let i = 1; i <= totalPages; i++) {
            const li = document.createElement("li");
            li.className = "page-item" + (i === currentPage ? " active" : "");
            li.innerHTML = '<a class="page-link" href="#">' + i + '</a>';
            li.addEventListener("click", (e) => {
                e.preventDefault();
                currentPage = i;
                displayRows();
            });
            pagination.appendChild(li);
        }
    }

    window.addEventListener("DOMContentLoaded", () => {
        // This is critical: wait for full DOM
        rows = Array.from(table.querySelectorAll("tbody tr"));
        console.log("DOM fully loaded. Visitor rows:", rows.length);
        displayRows();
    });

    searchInput.addEventListener("input", () => {
        currentPage = 1;
        displayRows();
    });

    function confirmDelete() {
        return confirm("Are you sure you want to delete this visitor?");
    }
</script>-->
<script>
    const searchInput = document.getElementById("searchInput");
    const table = document.getElementById("visitorTable");
    const pagination = document.getElementById("pagination");
    const pageIndicator = document.getElementById("pageIndicator");
    const rowsPerPage = 5;
    let currentPage = 1;
    let rows = [];

    function displayRows() {
        const query = searchInput.value.toLowerCase();
        const filteredRows = rows.filter(row =>
            row.innerText.toLowerCase().includes(query)
        );

        const totalPages = Math.max(1, Math.ceil(filteredRows.length / rowsPerPage));
        if (currentPage > totalPages) currentPage = totalPages;

        rows.forEach(row => row.style.display = "none");

        const start = (currentPage - 1) * rowsPerPage;
        const end = start + rowsPerPage;
        filteredRows.slice(start, end).forEach(row => row.style.display = "");

        renderPagination(totalPages);
        pageIndicator.innerText = 'Page ' + currentPage + ' of ' + totalPages;
    }

    function renderPagination(totalPages) {
        pagination.innerHTML = "";

        // Prev Button
        const prevLi = document.createElement("li");
        prevLi.className = "page-item" + (currentPage === 1 ? " disabled" : "");
        prevLi.innerHTML = '<a class="page-link" href="#">« Prev</a>';
        if (currentPage > 1) {
            prevLi.addEventListener("click", (e) => {
                e.preventDefault();
                currentPage--;
                displayRows();
            });
        }
        pagination.appendChild(prevLi);

        // Next Button
        const nextLi = document.createElement("li");
        nextLi.className = "page-item" + (currentPage === totalPages ? " disabled" : "");
        nextLi.innerHTML = '<a class="page-link" href="#">Next »</a>';
        if (currentPage < totalPages) {
            nextLi.addEventListener("click", (e) => {
                e.preventDefault();
                currentPage++;
                displayRows();
            });
        }
        pagination.appendChild(nextLi);
    }

    // Run on DOM load
    window.addEventListener("DOMContentLoaded", () => {
        rows = Array.from(table.querySelectorAll("tbody tr"));
        displayRows();
    });

    // Filter on search
    searchInput.addEventListener("input", () => {
        currentPage = 1;
        displayRows();
    });

    // Arrow key support
    document.addEventListener("keydown", (e) => {
        const filteredRows = rows.filter(row =>
            row.innerText.toLowerCase().includes(searchInput.value.toLowerCase())
        );
        const totalPages = Math.max(1, Math.ceil(filteredRows.length / rowsPerPage));

        if (e.key === "ArrowLeft" && currentPage > 1) {
            currentPage--;
            displayRows();
        } else if (e.key === "ArrowRight" && currentPage < totalPages) {
            currentPage++;
            displayRows();
        }
    });

    function confirmDelete() {
        return confirm("Are you sure you want to delete this visitor?");
    }
</script>


<%@ include file="/components/footer.jsp" %>
</div>