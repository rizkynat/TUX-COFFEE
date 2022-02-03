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
<div class="container py5">
  <div class="row" >
    <div class="col-2 offset-3 text-center" >
    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
      <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
    </svg>
    <div class="container py-2">
    <div class="row">
    <div class="col-4 offset-2">
      Rating
    </div>
    <div class="col-4">
      4
    </div>
    </div>
  </div>
    </div>
    <div class="col-2 text-center" >
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-shop" viewBox="0 0 16 16">
        <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
      </svg>
      <div class="container py-2">
      <div class="row">
        <div class="col-12">
          Info Toko
        </div>
      </div>
      </div>
      </div>
      <div class="col-2 text-center">
        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-basket" viewBox="0 0 16 16">
          <path d="M5.757 1.071a.5.5 0 0 1 .172.686L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1v4.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 13.5V9a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1.217L5.07 1.243a.5.5 0 0 1 .686-.172zM2 9v4.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V9H2zM1 7v1h14V7H1zm3 3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 4 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 6 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3A.5.5 0 0 1 8 10zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5zm2 0a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-1 0v-3a.5.5 0 0 1 .5-.5z"/>
        </svg>
        <div class="container py-2">
        <div class="row">
          <div class="col-12">
            Whislist
          </div>
        </div>
        </div>
        </div>
  </div>
</div>
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
      <hr style="width:100%", size="5", color="black">
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
        <img src="http://localhost:8080/tux_coffee/pages/getImageProduk.jsp?id=<%=rs.getInt("id_produk")%>" class="card-img-top" alt="Fissure in Sandstone"/>
        <div class="card-body">        
          <p class="card-text"><%=rs.getString("nama_produk")%></p>
            <h6 class="card-title" style="opacity: 50%;">Rp.<%=rs.getInt("harga_produk")-(rs.getInt("harga_produk")*rs.getInt("diskon")/100)%></h6>
          <div class="col-12 text-center">
          <a href="http://localhost:8080/tux_coffee/pages/detailBarang.jsp?id=<%=rs.getInt("id_produk")%>" class="btn" style="color: #995330;"><b>Beli</b></a>
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