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
                <div class="col-md-8">
                    <h1 class="mb-0">
                        View users with ID: ${id}
                    </h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- Users Table -->
                <div class="card-header">
                    User Details
                </div>
                <ul>
                    <li>User ID: ${users1.id}</li>
                    <!-- Add more user details here as needed -->
                    <li>Email: ${users1.email}</li>
                    <li>Full Name: ${users1.fullName}</li>
                    <li>Phone: ${users1.phone}</li>
                    <li>Address: ${users1.address}</li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
