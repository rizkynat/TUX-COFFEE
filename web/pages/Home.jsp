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
    <title>TUX_COFFEE</title>
  </head>
  <body>
      <%
            //Checking whether admin in session or not
            if (session.getAttribute("email_pel") != null && session.getAttribute("email_pel") != "") {
        %>
    <!--navbar-->
    <jsp:include page="Header.jsp"></jsp:include>
    <!--Slider image-->
    <div class="container-fluid py-1">
    <div class="slideshow-container">

      <div class="mySlides fade">
        <img src="http://localhost:8080/tux_coffee/pages/getImage.jsp?id=8" alt="" style="width: 100%;">
      </div>

      <div class="mySlides fade">
        <img src="http://localhost:8080/tux_coffee/pages/getImage.jsp?id=9" alt="" style="width: 100%;">
      </div>

      <div class="mySlides fade">
        <img src="http://localhost:8080/tux_coffee/pages/getImage.jsp?id=10" alt="" style="width: 100%;">
      </div>
    </div>

    <br>
    <div style="text-align: center;">
      <span class="dot"></span>
      <span class="dot"></span>
      <span class="dot"></span>
    </div>
    </div>  

    <!--logo tux-->
    <div class="container py-5" >
      <div class="row" >
        <div class="col-12">
          <div class="text-center">
      <img src="asset/logo tuf.png">
      </div>
      </div>
      </div>
    </div>
<!--logo tux-->
  <jsp:include page="ikoni.jsp"></jsp:include>
<!--line-->
<div class="container py-5">
<div class="row">
  <div class="col-4 offset-2 text-center">
    Kategori
  </div>
  <div class="col-4 text-center">
    Semua Produk
  </div>
  <div class="container">
    <div class="row">
      <div class="col-12">
      <hr style="width:100%;color:black ;size:5" >
    </div>
    </div>
    </div>
</div>

</div>
<%
    ResultSet rs = controllers.ConnectionProvider.getResultFromSqlQuery("select * from produk");
%>
<!--produk list-->
<div class="container py-5">
  <div class="row">
      <%while (rs.next()) {%>
    <div class="col-4">
      <div class="card">
        <img src="http://localhost:8080/tux_coffee/pages/getImageProduk.jsp?id_produk=<%=rs.getInt("id_produk")%>" class="card-img-top" alt="Fissure in Sandstone"/>
        <div class="card-body">        
          <p class="card-text"><%=rs.getString("nama_produk")%></p>
            <h6 class="card-title" style="opacity: 50%;">Rp.<%=rs.getInt("harga_produk")-(rs.getInt("harga_produk")*rs.getInt("diskon")/100)%></h6>
          <div class="col-12 text-center">
          <a href="http://localhost:8080/tux_coffee/pages/detailBarang.jsp?id_produk=<%=rs.getInt("id_produk")%>" class="btn" style="color: #995330;"><b>Beli</b></a>
          </div>
        </div>
      </div>
    </div>
             <%
         }
        %>
     
  </div>
</div>


<!--footer-->
<div class="fluid-container py-5">
 <jsp:include page="Footer.jsp"></jsp:include>
  
</div>
<!-- End of .container -->
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
      var slideIndex = 0;
      showSlides();

      function showSlides(){
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");

        for(i=0;i<slides.length;i++){
          slides[i].style.display="none";
        }
        slideIndex++;
        if(slideIndex>slides.length){
          slideIndex=1;
        }
        for(i=0;i<dots.length;i++){
          dots[i].className = dots[i].className.replace(" active","");
        }
        slides[slideIndex-1].style.display="block";
        dots[slideIndex-1].className +=" active";
        setTimeout(showSlides,2000);
      }
      </script>
 <%
            } else {
                response.sendRedirect("error.jsp");
            }
        %>
  
  </body>
</html>