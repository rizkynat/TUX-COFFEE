<%@ page import="java.sql.*"%>
<%@ page import="controllers.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="asset/style.css">
    
    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Detail barang</title>
  </head>
  <body>
       <%
            //Checking whether admin in session or not
            if (session.getAttribute("email_pel") != null && session.getAttribute("email_pel") != "") {
        %>
          <!--navbar-->
          <jsp:include page="Header.jsp"></jsp:include>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ResultSet rs = controllers.ConnectionProvider.getResultIdFromResult("select * from produk where id_produk=?",id);
    
%>
      <!--konten-->
      <div class="container-fluid py-5">
            <div class="row">
                <div class="col-6 text-center">
                     <%while (rs.next()) {%>
                <img class="img-fluid" src="http://localhost:8080/tux_coffee/pages/getImageProduk.jsp?id=<%=rs.getInt("id_produk")%>" alt="" width="500px">
                <div class="row py-3">
                  <div class="col-4 offset-1">
                    <img src="asset/b12 1.png" alt="" width="150px">
                  </div>
                  <div class="col-1">
                    <img src="asset/b13 1.png" alt="" width="150px">
                  </div>
                </div>
                </div>
                <div class="row col-6 py-5">                   
                    <div class="row" style="height: 90%;">
                    <div class="row">
                    <div class="col-5 my-auto">
                    <button class="btn" style="background-color: #C0A06F; color: #ffff; width: 100%;" type="button">Ada Stok: <%=rs.getInt("stok")%></button>
                    </div>
                    <div class="col-7 my-auto">
                    <button class="btn" style="background-color: #C0A06F; color: #ffff; width: 100%;" type="button">Diskon: <%=rs.getInt("diskon")%>%</button>
                    </div>
                    </div>
                    <div class="row col-12   py-2">
                        <h4> <%=rs.getString("nama_produk")%></h4>
                           </div>
                    <div class="row">
                        <div class="col-7 my-auto text-center" style="background-color: #C0A06F;opacity: 0.6;">
                            <div class="row">
                            <div class="col-6" style="color: black;font-weight: 400;"><del> Rp. <%=rs.getString("harga_produk")%></del></div>
                            <div class="col-6" style="color: white;font-weight: 1000;">Rp.<%=rs.getInt("harga_produk")-(rs.getInt("harga_produk")*rs.getInt("diskon")/100)%></div>
                            </div>
                        </div>
                        <div class="col-4"></div>
                        
                           </div>
                    <div class="row text-center py-3">
                        <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                            Pengiriman
                        </div>
                        <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
                            <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                          </svg> Pengiriman Ke
                        </div>
                        <div class="col-4">
                          <div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                              KAB.ROKAN HILIR
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="#">Action</a>
                              <a class="dropdown-item" href="#">Another action</a>
                              <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="row text-center">
                      <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                       
                    </div>
                      <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                        Pengiriman
                    </div>
                    <div class="col-4">
                      <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false">
                          Rp70.000 - Rp90.000 
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Action</a>
                          <a class="dropdown-item" href="#">Another action</a>
                          <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                      </div>
                    </div>
                    </div>
                    <div class="row text-center">
                      <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                        Kuantitas
                    </div>
                    <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                      <form class="input-group w-auto my-auto d-none d-sm-flex">
                        <button class="input-group-text border-0" style="background-color: #C0A06F;" id="search-addon">
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-dash-lg" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z"/>
                          </svg>
                        </button>
                        <input  type="search" class="form-control"  
                        placeholder="" aria-label="Search" aria-describedby="search-addon"/>
                        <button class="input-group-text border-0" style="background-color: #C0A06F;" id="search-addon">
                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-plus-lg" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
                          </svg>
                        </button>
                      </form>
                  </div>
                  <div class="col-4 fw-bold" style="color: black;opacity: 0.5;font-weight: 300;">
                    
                </div>
                    </div>
                    <div class="row py-5">
                      <div class="col-5 my-auto">
                      <button class="btn" style="background-color: #C0A06F; color: #ffff; height: 40px; width: 100%;" type="button">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-plus" viewBox="0 0 16 16">
                          <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                          <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>  Masukkan Keranjang</button>
                      </div>
                      <div class="col-5 my-auto">
                      <button class="btn" style="background-color: #C0A06F; color: #ffff;height: 40px; width: 100%;" type="button">Beli Sekarang</button>
                      </div>
                      </div>
                     </div>                 
                    
                   </div>
                  </div>
            </div>
            <div class="container py-5">
              <nav class="navbar navbar-expand-lg rounded" style="background-color: #C0A06F;opacity: 0.6;">
                <div class="container">
                  <a class="navbar-brand" href="#" style="font-weight: 500;color: black;">Deskripsi Produk</a>
                </div>
              </nav>
              
            </div>
            <div class="container">
              <%=rs.getString("deskripsi")%>
            </div>
                  <%
         }
        %>
            <!--footer-->
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="fluid-container py-5">

 <jsp:include page="Footer.jsp"></jsp:include>
  
</div>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <%
            } else {
                response.sendRedirect("error.jsp");
            }
        %>
  </body>
  </html>