<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script> 
</head>
<body class="sb-nav-fixed">
    <jsp:include page="/WEB-INF/view/admin/layout/header.jsp" />
    <div id="layoutSidenav">
        <jsp:include page="/WEB-INF/view/admin/layout/sidebar.jsp" />
        <div id="layoutSidenav_content">
            <main>
                <!-- Main Content -->
                <div class="container-fluid">
                   <div class="row justify-content-center">
                        <div class="col-lg-6 col-md-8 col-sm-12">
                            <div class="card shadow">
                                <div class="card-header bg-primary text-white text-center">
                                    <h4>Update a user</h4>
                                </div>
                                <div class="card-body">
                                    <form:form method="POST" action="/admin/user/update" modelAttribute="newUser">
                                        <div class="mb-3" style="display: none;">
                                            <label for="id" class="form-label">ID</label>
                                            <form:input type="text" path="id" class="form-control" />
                                        </div>
                                        <div class="mb-3">
                                            <label for="fullName" class="form-label">Full Name</label>
                                            <form:input type="text" path="fullName" class="form-control" />
                                        </div>
                                        <div class="mb-3">
                                            <label for="email" class="form-label">Email</label>
                                            <form:input type="email" path="email" class="form-control" disabled="true"/>
                                        </div>
                                        <div class="mb-3">
                                            <label for="phone" class="form-label">Phone</label>
                                            <form:input type="number" path="phone" class="form-control"/>
                                        </div>
                                        <div class="mb-3">
                                            <label for="address" class="form-label">Address</label>
                                            <form:input type="text" class="form-control" path="address"/>
                                        </div>
                                        <div class="d-grid">
                                            <button type="submit" class="btn btn-warning">Update</button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main content ends here --> 
            </main>
            <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp" />
        </div>
    </div>
    
    <!-- Custom JavaScript -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="/js/script.js"></script>
</body>
</html>
