<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Pass System</title>

    <!-- Bootstrap & Google Fonts -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
</head>
<body>

<div class="wrapper"> <!-- ✅ Properly wrap everything -->

<nav class="navbar navbar-expand-lg navbar-dark shadow-sm">
    <a class="navbar-brand d-flex align-items-center" href="<%= request.getContextPath() %>/index.jsp">
        <img src="<%= request.getContextPath() %>/assets/VPSlogo.png" alt="Logo" height="40" class="mr-2">
        Visitor Pass System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/registerVisitorServlet">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/views/admin/adminLogin.jsp">Login</a>
            </li>
        </ul>
    </div>
</nav>

<div class="main-content flex-grow-1"> <!-- Start of content -->

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Pass System</title>

     Bootstrap & Google Fonts 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

     External Stylesheet 
    <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">  Link to external CSS 

    
</head>
<body>
<div class="wrapper"> Start wrapper 

<nav class="navbar navbar-expand-lg navbar-dark shadow-sm">
    <a class="navbar-brand d-flex align-items-center" href="<%= request.getContextPath() %>/index.jsp">
        <img src="<%= request.getContextPath() %>/assets/VPSlogo.png" alt="Logo" height="40" class="mr-2">
        Visitor Pass System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/registerVisitorServlet">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/views/admin/adminLogin.jsp">Admin</a>
            </li>
        </ul>
    </div>
</nav>

<div class="main-content mb-5"> Start main content -->

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Pass System</title>

     Bootstrap & Google Fonts 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

     External Stylesheet 
    <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">  Link to external CSS 

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark shadow-sm">
    <a class="navbar-brand d-flex align-items-center" href="<%= request.getContextPath() %>/index.jsp">
        <img src="<%= request.getContextPath() %>/assets/VPSlogo.png" alt="Logo" height="40" class="mr-2">
        Visitor Pass System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/registerVisitorServlet">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/views/admin/adminLogin.jsp">Admin</a>
            </li>
        </ul>
    </div>
</nav>

<div class=" m-0 main-content">-->

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!--<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Pass System</title>
    
     Bootstrap & Google Fonts 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .main-content {
            flex: 1;
        }
        .navbar-brand img {
            border-radius: 4px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
    <a class="navbar-brand d-flex align-items-center" href="<%= request.getContextPath() %>/index.jsp">
        <img src="<%= request.getContextPath() %>/assets/VPSlogo.png" alt="Logo" height="40" class="mr-2">
        Visitor Pass System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/registerVisitorServlet">Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=request.getContextPath()%>/views/admin/adminLogin.jsp">Admin</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-4 main-content">-->
