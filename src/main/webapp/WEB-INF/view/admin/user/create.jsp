<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký User</title>
    <!-- Bootstrap 5 CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Bootstrap Icons -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css"
      rel="stylesheet"
    />
    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet" />
    <script
      src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
      crossorigin="anonymous"
    ></script>
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
              <div class="col-lg-6 col-md-8 col-sm-12 mt-5">
                <div class="card shadow">
                  <div class="card-header bg-primary text-white text-center">
                    <h4>Create a user</h4>
                  </div>
                  <div class="card-body">
                    <form:form
                      method="POST"
                      action="/admin/user/create"
                      enctype="multipart/form-data"
                      modelAttribute="userForm"
                    >
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="fullName" class="form-label"
                              >Họ và tên</label
                            >
                            <form:input
                              path="fullName"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <form:input
                              path="email"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="password" class="form-label"
                              >Mật khẩu</label
                            >
                            <form:password
                              path="password"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="phone" class="form-label"
                              >Số điện thoại</label
                            >
                            <form:input
                              path="phone"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                      </div>

                      <div class="mb-3">
                        <label for="address" class="form-label">Địa chỉ</label>
                        <form:input
                          cssClass="form-control"
                          path="address"
                        />
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label class="form-label">Role</label>
                            <form:select
                              class="form-select"
                              aria-label="Default select example"
                              path="role.name"
                            >
                              <form:option value="ADMIN">ADMIN</form:option>
                              <form:option value="USER">USER</form:option>
                            </form:select>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="formFile" class="form-label"
                              >Avatar</label
                            >
                            <input
                              class="form-control"
                              type="file"
                              id="formFile"
                              name="hoidanitFile"
                              accept=".jpg, .png, .jpeg"
                            />
                          </div>
                        </div>
                        <div class="col-12 mb-3">
                          <img
                            style="max-height: 250px; display: none"
                            src=""
                            alt="avatar preview"
                            id="avatarPreview"
                          />
                        </div>
                      </div>
                      <div class="d-grid">
                        <button type="submit" class="btn btn-primary">
                          Create
                        </button>
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

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"
    ></script>
    <script src="/js/script.js"></script>
    <script>
      document
        .getElementById("formFile")
        .addEventListener("change", function (event) {
          const input = event.target;
          const preview = document.getElementById("avatarPreview");
          if (input.files && input.files[0]) {
            const reader = new FileReader();
            reader.onload = function (e) {
              preview.src = e.target.result;
              preview.style.display = "block";
            };
            reader.readAsDataURL(input.files[0]);
          } else {
            preview.src = "";
            preview.style.display = "none";
          }
        });
    </script>
  </body>
</html>
