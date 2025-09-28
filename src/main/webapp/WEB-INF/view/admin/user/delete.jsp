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
<body class="sb-nav-fixed">
    <jsp:include page="/WEB-INF/view/admin/layout/header.jsp" />
    <div id="layoutSidenav">
        <jsp:include page="/WEB-INF/view/admin/layout/sidebar.jsp" />
        <div id="layoutSidenav_content">
            <main>
                <!-- Main Content -->
                <div class="container-fluid">
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
