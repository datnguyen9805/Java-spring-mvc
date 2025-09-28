<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng ký User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8 col-sm-12">
            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Create a user</h4>
                </div>
                <div class="card-body">
                    <form:form method="POST" action="/admin/user/create" modelAttribute="userForm">
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Họ và tên</label>
                            <form:input path="fullName" cssClass="form-control" required="required" />
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <form:input path="email" cssClass="form-control" required="required" />
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Mật khẩu</label>
                            <form:password path="password" cssClass="form-control" required="required" />
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Số điện thoại</label>
                            <form:input path="phone" cssClass="form-control" required="required" />
                        </div>
                        <div class="mb-3">
                            <label for="address" class="form-label">Địa chỉ</label>
                            <form:input cssClass="form-control" path="address" required="required" />
                        </div>
                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary">Create</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap JS (optional, for interactivity) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>