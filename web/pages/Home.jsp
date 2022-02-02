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
    <title>Hello, world!</title>
  </head>
  <body>
    <!--navbar-->
    <div class="container-fluid py-5">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid justify-content-between" >
         
          <div class="col-7" >
          <a href="" class="navbar-brand" hreflang="#">
            <img src="asset/logo tuf.png" alt="Logo tux" height="50">
          </a>
          </div>
          <div class="container-fluid col-4 offset-1 d-flex" >
          
            <div class="col-1 offset-3">
              <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-sort-down-alt" viewBox="0 0 16 16">
                  <path d="M3.5 3.5a.5.5 0 0 0-1 0v8.793l-1.146-1.147a.5.5 0 0 0-.708.708l2 1.999.007.007a.497.497 0 0 0 .7-.006l2-2a.5.5 0 0 0-.707-.708L3.5 12.293V3.5zm4 .5a.5.5 0 0 1 0-1h1a.5.5 0 0 1 0 1h-1zm0 3a.5.5 0 0 1 0-1h3a.5.5 0 0 1 0 1h-3zm0 3a.5.5 0 0 1 0-1h5a.5.5 0 0 1 0 1h-5zM7 12.5a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 0-1h-7a.5.5 0 0 0-.5.5z"/>
                </svg>
            </span>
            </div>

          <div class="col-5">
          <form class="input-group w-auto my-auto d-none d-sm-flex">
            <input  type="search" class="form-control"  
            placeholder="" aria-label="Search" aria-describedby="search-addon"/>
            <button class="input-group-text border-0" style="background-color: #C0A06F;" id="search-addon">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-search" viewBox="0 0 16 16">
                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
              </svg>
            </button>
          </form>
          </div>
          <div class="col-1 offset-1">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-bell" viewBox="0 0 16 16">
                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
              </svg>
          </span>
          </div>
          <div class="col-1 ">
            <span>
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-person-circle" viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
              </svg>
          </span>
          </div>
          
          </div>
        
          
        </div>
      </nav>
    </div>
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
          <a href="#!" class="btn" style="color: #995330;"><b>Beli</b></a>
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
<!-- Remove the container if you want to extend the Footer to full width. -->
<div class="fluid-container py-5">

  <footer class="text-center text-lg-start" style="background-color: #C0A06F;">
    <div class="row">
      <div class="col-3 offset-1">
        <div class="row py-4 offset" >
          <img src="asset/logo tuf.png" alt="" style="width: 150px;">
          </div>
          <div class="row" style="color: white;">
          <span><p>Jln. Jendral sudirman, Pekanbaru</p> <p>tuxcoffee@gmail.com</p><p>+121746778823</p></span>
        </div>
      </div>
    <div class="col-4 text-center my-auto ">
      <a><img src="asset/fb.png" alt=""></a>
      <a><img src="asset/ig.png" alt=""></a>
      <a><img src="asset/gmail.png" alt=""></a>
      <a><img src="asset/shopee.png" alt=""></a>
      <a><img src="asset/tokped.png" alt=""></a>
    </div>

  
      <div class="col-3">
        <img src="asset/Learning-pana 1.png">
      </div>
    <!-- Copyright -->
    </div>
  </footer>
  
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

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>