<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        
        
        .btn-action {
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
            margin: 0 0.125rem;
        }
        
        
        .action-buttons {
            white-space: nowrap;
        }
        
        @media (max-width: 768px) {
            .table-responsive {
                font-size: 0.875rem;
            }
            
            .btn-action {
                padding: 0.2rem 0.4rem;
                font-size: 0.75rem;
                margin: 0 0.05rem;
            }
            
            .page-header h1 {
                font-size: 1.5rem;
            }
            
            .btn-create {
                padding: 0.5rem 1rem;
                font-size: 0.875rem;
            }
        }
        
        @media (max-width: 576px) {
            .table th, .table td {
                padding: 0.5rem 0.25rem;
            }
            
            .action-buttons {
                display: flex;
                flex-direction: column;
                gap: 0.25rem;
            }
            
            .btn-action {
                width: 100%;
                margin: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Page Header -->
    <div class="page-header">
        <div class="container">
            <div class="row align-items-center">
                
                <h1 class="mb-0">
                    Delete users with ID: ${id}
                </h1>
                <div class="alert alert-danger">Are you sure to delete this user?</div>
                <form method="POST" action="/admin/user/delete/${id}">
                    <button type="submit" class="btn btn-danger">Confirm</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Users Table -->
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
