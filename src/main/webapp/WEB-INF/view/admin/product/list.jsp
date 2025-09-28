<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<style>
    .table-responsive {
        border-radius: 0.375rem;
        box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    }
    
    .btn-action {
        padding: 0.25rem 0.5rem;
        font-size: 0.875rem;
        margin: 0 0.125rem;
    }
    
    .table th {
        background-color: #f8f9fa;
        border-top: none;
        font-weight: 600;
    }
    
    .page-header {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 2rem 0;
        margin-bottom: 2rem;
    }
    .btn-create {
        background: linear-gradient(45deg, #28a745, #20c997);
        border: none;
        padding: 0.75rem 1.5rem;
        font-weight: 600;
        transition: all 0.3s ease;
    }
    .btn-create:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        
    .action-buttons {
        white-space: nowrap;
    }
</style>
<body class="sb-nav-fixed">
    <jsp:include page="/WEB-INF/view/admin/layout/header.jsp" />
    <div id="layoutSidenav">
        <jsp:include page="/WEB-INF/view/admin/layout/sidebar.jsp" />
        <div id="layoutSidenav_content">
            <main>
                <!-- Main content starts here -->
                 <!-- Page Header -->
                <div class="p-3">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-md-8">
                                <h1 class="mb-0">
                                    <i class="bi bi-people-fill me-2"></i>
                                    Manage Products
                                </h1>
                                 <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin/dashboard">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Products</li>
                                </ol>
                            </div>
                            <div class="col-md-4 text-md-end">
                                <a href="/admin/product/create" class="btn btn-create">
                                    <i class="bi bi-plus-circle me-1"></i>
                                    Create a product
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Main Content -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <!-- Users Table -->
                            <div class="table-responsive">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Factory</th>
                                        <th scope="col" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Sample data - replace with actual data from controller -->
                                        <c:forEach var="product" items="${products}">
                                            <tr>
                                                <td class="text-center fw-bold">${product.id}</td>
                                                <td>
                                                    ${product.name}
                                                </td>
                                                <td>${product.price}</td>
                                                <td>${product.factory}</td>
                                                <td class="text-center action-buttons">
                                                    <a href="/admin/user/${user.id}" class="btn btn-success btn-action" title="View">
                                                        <i class="bi bi-eye"></i>
                                                        <span class="d-none d-sm-inline ms-1">View</span>
                                                    </a>
                                                    <a href="/admin/user/update/${user.id}" class="btn btn-warning btn-action" title="Update" >
                                                        <i class="bi bi-pencil"></i>
                                                        <span class="d-none d-sm-inline ms-1">Update</span>
                                                    </a>
                                                    <a href="/admin/user/delete/${user.id}" class="btn btn-danger btn-action" title="Delete">
                                                        <i class="bi bi-trash"></i>
                                                        <span class="d-none d-sm-inline ms-1">Delete</span>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
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
