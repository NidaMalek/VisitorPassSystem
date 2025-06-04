<%@ include file="/components/header.jsp" %>

<!-- Hero Section -->
<section class="hero">
    <div class="container-fluid px-0 ">
        <h1>Welcome to the Visitor Pass System</h1>
        <p class="lead">Register visitors securely, manage records efficiently, and generate digital passes with ease.</p>
        <a href="#features" class="btn btn-primary btn-lg me-3">Explore Features</a>
        <a href="<%= request.getContextPath() %>/registerVisitorServlet" class="btn btn-light btn-lg">Register Visitor</a>
    </div>
</section>

<!-- Features Section -->
<section id="features" class="feature-section">
    <div class="container">
        <h2 class="feature-title text-center mb-4">Why Choose Visitor Pass System?</h2>
        <div class="row">
            <!-- Feature 1 -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-check-circle-fill"></i>
                        </div>
                        <h5 class="card-title">Instant Check-in</h5>
                        <p class="feature-description">Allow visitors to check in instantly with a smooth, fast process that ensures security.</p>
                    </div>
                </div>
            </div>
            <!-- Feature 2 -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-file-earmark-text-fill"></i>
                        </div>
                        <h5 class="card-title">Complete Visitor History</h5>
                        <p class="feature-description">Track and manage a complete history of every visitor that has entered your facility.</p>
                    </div>
                </div>
            </div>
            <!-- Feature 3 -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-person-plus-fill"></i>
                        </div>
                        <h5 class="card-title">Employee Pre-Registration</h5>
                        <p class="feature-description">Enable employees to pre-register their visitors for a smoother check-in experience.</p>
                    </div>
                </div>
            </div>
            <!-- Feature 4 -->
            
             <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-shield-lock-fill"></i>
                        </div>
                        <h5 class="card-title">Quick Visitor Access</h5>
                        <p class="feature-description">Previous visitors can quickly re-enter with their pre-registered details designed for admins.</p>
                    </div>
                </div>
            </div>
            <!-- Feature 5 -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-shield-lock-fill"></i>
                        </div>
                        <h5 class="card-title">Secure Dashboard</h5>
                        <p class="feature-description">Manage visitor data with a secure, easy-to-use web dashboard designed for admins.</p>
                    </div>
                </div>
            </div>
            <!-- Feature 6 -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card border-0 shadow-sm">
                    <div class="card-body text-center">
                        <div class="feature-icon mb-3">
                            <i class="bi bi-person-lines-fill"></i>
                        </div>
                        <h5 class="card-title">Role-Based Logins</h5>
                        <p class="feature-description">Manage access with role-based logins for Admins, Guards, and Employees.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="/components/footer.jsp" %>

<!--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visitor Pass System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
        }

        .hero {
            background: linear-gradient(45deg, #1a73e8, #ff4081);
            color: white;
            padding: 120px 0;
            text-align: center;
            border-bottom-left-radius: 50% 20%;
            border-bottom-right-radius: 50% 20%;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
        }

        .hero p {
            font-size: 1.2rem;
            margin-top: 20px;
        }

        .btn-primary {
            background-color: #ff4081;
            border-color: #ff4081;
        }

        .btn-primary:hover {
            background-color: #ff80ab;
            border-color: #ff80ab;
        }

        .feature-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        .feature-icon {
            font-size: 3rem;
            color: #1a73e8;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 40px 0;
            text-align: center;
        }

        .footer a {
            color: #ff4081;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .feature-section {
            padding: 80px 0;
        }

        .feature-title {
            font-size: 2.5rem;
            font-weight: 600;
            text-align: center;
            margin-bottom: 40px;
        }

        .feature-description {
            font-size: 1.1rem;
            color: #6c757d;
            text-align: center;
        }

        .features .row {
            margin-top: 40px;
        }
    </style>
</head>
<body>

     Hero Section 
    <section class="hero">
        <div class="container">
            <h1>Welcome to the Visitor Pass System</h1>
            <p class="lead">Register visitors securely, manage records efficiently, and generate digital passes with ease.</p>
            <a href="#features" class="btn btn-primary btn-lg me-3">Explore Features</a>
            <a href="<%= request.getContextPath() %>/registerVisitorServlet" class="btn btn-light btn-lg">Register Visitor</a>
        </div>
    </section>

     Features Section 
    <section id="features" class="feature-section">
        <div class="container">
            <h2 class="feature-title">Why Choose Visitor Pass System?</h2>
            <div class="row">
                 Feature 1 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-check-circle-fill"></i>
                            </div>
                            <h5 class="card-title">Instant Check-in</h5>
                            <p class="feature-description">Allow visitors to check in instantly with a smooth, fast process that ensures security.</p>
                        </div>
                    </div>
                </div>
                 Feature 2 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-file-earmark-text-fill"></i>
                            </div>
                            <h5 class="card-title">Complete Visitor History</h5>
                            <p class="feature-description">Track and manage a complete history of every visitor that has entered your facility.</p>
                        </div>
                    </div>
                </div>
                 Feature 3 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-person-plus-fill"></i>
                            </div>
                            <h5 class="card-title">Employee Pre-Registration</h5>
                            <p class="feature-description">Enable employees to pre-register their visitors for a smoother check-in experience.</p>
                        </div>
                    </div>
                </div>
                 Feature 4 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-arrow-repeat"></i>
                            </div>
                            <h5 class="card-title">Quick Visitor Access</h5>
                            <p class="feature-description">Previous visitors can quickly re-enter with their pre-registered details.</p>
                        </div>
                    </div>
                </div>
                 Feature 5 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-shield-lock-fill"></i>
                            </div>
                            <h5 class="card-title">Secure Dashboard</h5>
                            <p class="feature-description">Manage visitor data with a secure, easy-to-use web dashboard designed for admins.</p>
                        </div>
                    </div>
                </div>
                 Feature 6 
                <div class="col-md-4 mb-4">
                    <div class="card feature-card border-0 shadow-sm">
                        <div class="card-body text-center">
                            <div class="feature-icon mb-3">
                                <i class="bi bi-person-lines-fill"></i>
                            </div>
                            <h5 class="card-title">Role-Based Logins</h5>
                            <p class="feature-description">Manage access with role-based logins for Admins, Guards, and Employees.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

     Footer Section 
    <footer class="footer">
        <div class="container">
            <p>&copy; 2025 Visitor Pass System. All rights reserved.</p>
            <p>
                <a href="#features">Features</a> | 
                <a href="<%= request.getContextPath() %>/registerVisitorServlet">Register Visitor</a> | 
                <a href="<%= request.getContextPath() %>/viewAllVisitorsServlet">Admin Login</a>
            </p>
        </div>
    </footer>

     Bootstrap JS and Popper.js (If not already included in footer.jsp or header.jsp) 
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    <script>
        // Initialize all popovers on the page
        var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
        var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
            return new bootstrap.Popover(popoverTriggerEl);
        });
    </script>

</body>
</html>-->
