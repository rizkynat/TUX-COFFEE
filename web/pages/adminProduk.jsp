<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simple Sidebar - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <style>
          body{
            background-color: #E8EBEE;
          }
         .sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: black;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}
.dropdown-container {
  display: none;
  background-color: white;
  padding-left: 8px;
}



        </style>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <jsp:include page="sidebarAdmin.jsp"></jsp:include>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 20px 0 rgba(0, 0, 0, 0.19)">
                    <div class="container-fluid">
                        <button class="btn" id="sidebarToggle">
                          <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                              </svg>
                        </span>
                        </button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!"></a></li>
                                <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                                <li class="nav-item dropdown">
                                  <span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-person-circle" viewBox="0 0 16 16">
                                      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                      <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid py-2">
                  <div class="main" style="margin: 10px 10px;background-color: white;">
                    <div class="container-fluid">
                      <div class="row py-2 text-center">
                        <div class="col-3">
                          <h4 style="color: #C0A06F;">Daftar Produk</h4>
                        </div>
                        <div class="col-9">
                          <hr style="width:100%; border: 2px solid #C0A06F;
                          border-radius: 25px;">
                        </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-4">
                          <form class="input-group w-auto my-auto d-none d-sm-flex">
                            <input  type="search" class="form-control"  
                            placeholder="Masukkan kata kunci" aria-label="Search" aria-describedby="search-addon"/>
                            <button class="input-group-text border-0" style="background-color: #C0A06F;" id="search-addon">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-search" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                              </svg>
                            </button>
                          </form>
                          </div>
                          <div class="col-8">
                              <a href="http://localhost:8080/tux_coffee/pages/tambahProduk.jsp">
                            <button style="padding: 5px 25px;background-color: #23A1E9;border: 1.5px solid #23A1E9;border-radius: 5px;color: white;">
                              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                              </svg> Tambah Data</button>
                              </a>
                          </div>
                      </div>
                      <div class="row py-2">
                        <div class="col-12">
 <%
    ResultSet rs = controllers.ConnectionProvider.getResultFromSqlQuery("select * from produk");
%>                                         <!--Table-->
<table class="table table-hover table-fixed table-bordered">

  <!--Table head-->
  <thead style="background-color: rgba(192, 160, 111, 0.4);">
    <tr>
      
      <th>Foto</th>
      <th>Nama Produk</th>
      <th>Harga Produk</th>
      <th>Tanggal Produk</th>
      <th>Diskon</th>
      <th>Stok</th>
      <th>Deskripsi</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <!--Table head-->

  <!--Table body-->
  <tbody>
      
         <%while (rs.next()) {%>
    <tr>
      <td><img src="http://localhost:8080/tux_coffee/pages/getImageProduk.jsp?id_produk=<%=rs.getInt("id_produk")%>" alt="" width="50px"></td>
      <td><%=rs.getString("nama_produk")%></td>
      <td><%=rs.getInt("harga_produk")%></td>
      <td><%=rs.getDate("tgl_produk")%></td>
      <td><%=rs.getInt("diskon")%>%</td>
      <td><%=rs.getInt("stok")%></td>
      <td><%=rs.getString("deskripsi")%></td>
      <td>
        <div class="row text-center"><div class="col-6">
          <a href="http://localhost:8080/tux_coffee/pages/adminHapusProcess.jsp?id_produk=<%=rs.getInt("id_produk")%>">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#FF2D2D" class="bi bi-x-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
          </svg></a>
        </div>
      <div class="col-6">
        <a href="http://localhost:8080/tux_coffee/pages/adminEditProduk.jsp?id_produk=<%=rs.getInt("id_produk")%>">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#23A1E9" class="bi bi-pencil-square" viewBox="0 0 16 16">
          <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
          <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
        </svg></a>
      </div>
    </div>
      </td>
    </tr>
     <%
      }
      %>
  </tbody>
  <!--Table body-->

</table>
                        </div>
                      </div>
                    </div>
                   
                    
                </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script>
          /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
          var dropdown = document.getElementsByClassName("dropdown-btn");
          var i;
          
          for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
            } else {
            dropdownContent.style.display = "block";
            }
            });
          }
          </script>
        <script src="https://code.iconify.design/2/2.1.1/iconify.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="scripts.js"></script>
    </body>
</html>
