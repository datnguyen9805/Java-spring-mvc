<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Đăng ký sản phẩm</title>
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
                    <h4>Create a product</h4>
                  </div>
                  <div class="card-body">
                    <form:form
                      method="POST"
                      action="/admin/product/create"
                      enctype="multipart/form-data"
                      modelAttribute="productForm"
                    >
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="name" class="form-label"
                              >Name:</label
                            >
                            <form:input
                              path="name"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="price" class="form-label">Price:</label>
                            <form:input
                              path="price"
                              cssClass="form-control"
                              type="number"
                            />
                          </div>
                        </div>
                      </div>
                      
                      <div class="mb-3">
                        <label for="detailDesc" class="form-label"
                          >Detail Description:</label
                        >
                        <form:textarea
                          path="detailDesc"
                          cssClass="form-control"
                        />
                      </div>
                        
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="shortDesc" class="form-label"
                              >Short description:</label
                            >
                            <form:input
                              path="shortDesc"
                              cssClass="form-control"
                            />
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label for="quantity" class="form-label"
                              >Quantity:</label
                            >
                            <form:input
                              path="quantity"
                              cssClass="form-control"
                              type="number"
                            />
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <div class="mb-3">
                            <label class="form-label">Factory:</label>
                            <form:select
                              class="form-select"
                              aria-label="Default select example"
                              path="factory"
                            >
                              <form:option value="apple">Apple (MacBook)</form:option>
                              <form:option value="samsung">Samsung (Galaxy)</form:option>
                            </form:select>
                          </div>
                        </div>
                        <div class="col-6">
                          <div class="mb-3">
                            <label class="form-label">Target:</label>
                            <form:select
                              class="form-select"
                              aria-label="Default select example"
                              path="target"
                            >
                              <form:option value="gaming">Gaming</form:option>
                              <form:option value="graphic">Graphic</form:option>
                              <form:option value="office">Office</form:option>

                            </form:select>
                          </div>
                        </div>
                        <div class="mb-3">
                          <label for="formFile" class="form-label"
                            >Image Product</label
                          >
                          <input
                            class="form-control"
                            type="file"
                            id="formFile"
                            name="hoidanitFile"
                            accept=".jpg, .png, .jpeg"
                          />
                        </div>
                        <div class="mb-3">
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
