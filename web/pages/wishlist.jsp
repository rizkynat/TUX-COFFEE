<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <%! int qty,berat,total_harga=0;%>
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
    <title>Wishlist</title>
  </head>
  <body>
      <%
            //Checking whether admin in session or not
            if (session.getAttribute("email_pel") != null && session.getAttribute("email_pel") != "") {
        %>
          <!--navbar-->
    <jsp:include page="Header.jsp"></jsp:include>

      <!--konten progress bar-->
      <div class="container py-3">
          <div class="row">
            <div class="col-3">
                <div class="row text-center" >
                    <div class="col-1 offset-1 my-auto">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-cart3" viewBox="0 0 16 16">
          <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z"/>
        </svg>
                    </div>
                    <div class="col-6 ms-2 my-auto">
                        <h3 style="color: #C0A06F;">Wishlist</h3>
                    </div>
                </div>
            </div>
          </div>
          
      </div>

      <!--konten left-->
      <div class="container py-3" s>
        <div class="row" >
            <!--kolom tabel-->
            <div class="col-12" >
                <!--Table-->
             
                <%
                    ResultSet rs=null;
                    try{
    rs = controllers.ConnectionProvider.getResultFromSqlQuery("select * from keranjang");
%>

<table class="table table-hover table-fixed" style="border-left: 1px solid #C0A06F; border-top: 1px solid #C0A06F; border-right: 1px solid #C0A06F; ">

    <!--Table head-->
    <thead style="background-color: rgba(192, 160, 111, 0.4);">
      <tr>
        <th scope="row"></th>
        <th></th>
        <th></th>
        <th>Name Produk</th>
        <th>Qty</th>
        <th>Berat(gram)</th>
        <th>Total</th>
      </tr>
    </thead>
    <!--Table head-->
  
    <!--Table body-->
    <tbody>
      <style>
          td input{
            width: 50px;
            height: 30px;
            padding: 5px;
            background-color: rgba(192, 160, 111, 0.2);
            border-color: #fff;
          }
          input#flexCheckDefault{
            background-color: #C0A06F;
            color: #fff;
          }
        </style>
          <%
              while (rs.next()) 
                {
          %>
      <tr>
        <th scope="row"></th>
        <td><div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
            </div>
        </td>
        <td><img src="http://localhost:8080/tux_coffee/pages/getImageKeranjang.jsp?id_keranjang=<%=rs.getInt("id_keranjang")%>" alt="" width="50px"></td>
        <td><%=rs.getString("nama_produk")%></td>
        <td>
            <input  type="search" value="<%=rs.getString("qty")%>" placeholder="" aria-label="Search" aria-describedby="search-addon" />
            
        </td>
        <td><%=rs.getString("berat")%></td>
        <td>Rp <%=controllers.QurencyMoney.dotThree(rs.getInt("total_harga"))%></td>
      </tr>
      <%  
          qty+=rs.getInt("qty");
          berat+=rs.getInt("berat");
          total_harga+=rs.getInt("total_harga");
        }
}finally{
 try { rs.close(); } catch (Exception ignore) { }
}
      %>
      <tr style="background-color: rgba(192, 160, 111, 0.4); border-bottom: 1px solid #C0A06F;">
        <th scope="row"></th>
        <th scope="row"></th>
        <td scope="row"></td>
        <td scope="row"></td>
        <th><%=qty%></th>
        <th><%=controllers.QurencyMoney.dotThree(berat)%></th>
        <th>Rp <%=controllers.QurencyMoney.dotThree(total_harga)%></th>
      </tr>
    </tbody>
    <!--Table body-->
  <%
     qty=0;
     berat=0;
     total_harga=0;
  %>
  </table>
  <!--Table-->
              <div class="container-fluid py-3" > 

                <div class="row" >   
                  <div class="col-3">
                      <a href="http://localhost:8080/tux_coffee/pages/Home.jsp">
                    <button style="padding: 5px 20px;background-color: white;border: 1.5px solid #C0A06F;border-radius: 5px;color: #C0A06F;">Lanjut Belanja
                    </button></a>
                  </div>      
                  <div class="col-4 offset-5">
                      <a href="http://localhost:8080/tux_coffee/pages/checkout1.jsp">
                    <button style="padding: 5px 20px;background-color: #C0A06F;border: 1.5px solid #C0A06F;border-radius: 5px;color: white;">Selanjutnya
                    </button>
                      </a>
                  </div>
                  
                </div>
              </div>
            </div>


                              </div>
                              
                         </div>
                    </div>
                    </div>
                </div>
            </div>
      </div>

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