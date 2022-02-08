<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Peramalan</title>
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
th{
  text-align: center;
}
td{
  text-align: left;
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
                        <div class="col-1">
                          <h4 style="color: #C0A06F;">Peramalan</h4>
                        </div>
                        <div class="col-11">
                          <hr style="width:95%; border: 2px solid #C0A06F;
                          border-radius: 25px; margin-left: 5%;">
                        </div>
                      </div>
                      <br>
                   
                      <div class="row py-2">
                        <div class="col-12">
                          <h5 style="color: #C0A06F; text-align: center;">Produk Terlaris Tahun Ini</h5><br>
                                  <%
ResultSet rs = controllers.ConnectionProvider.getResultFromSqlQuery("select * from keranjang order by total_harga desc ");
%>                  
                                          <!--Table-->
<table class="table table-fixed table-bordered" style="border-color: #C0A06F">

  <!--Table head-->
  <thead style="background-color: rgba(192, 160, 111, 0.4);">
    <tr>
      
      <th>Foto</th>
      <th style="width: 450px;">Nama Barang</th>
      <th style="width: 200px;">Qty</th>
      <th style="width: 200px;">Total</th>
    </tr>
  </thead>
  <!--Table head-->
<%while (rs.next()) {%>
  <!--Table body-->
  <tbody>
    <tr>
        <th> <img src="http://localhost:8080/tux_coffee/pages/getImageKeranjang.jsp?id_keranjang=<%=rs.getInt("id_keranjang")%> " alt="" width="50px"> </th>
      <td> <%=rs.getString("nama_produk")%></td>
      <td> <%=rs.getInt("qty")%></td>
      <td>Rp <%=rs.getInt("total_harga")%></td>
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
