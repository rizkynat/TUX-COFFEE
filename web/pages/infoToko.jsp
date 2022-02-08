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
    <title>Info Toko</title>
  </head>
  <body>
          <!--navbar-->
    <jsp:include page="Header.jsp"></jsp:include>

      <!--konten progress bar-->
      

      <!--konten left-->
      <div class="container py-3" s>
        <div class="row">
          <div class="col-12">
            <center>
            <img src="asset/TUXlogo.png" alt="" width="180px"><br><br><br>
            </center>
          </div>
        </div>
        <div class="row" >
            <!--kolom tabel-->
            <div class="col-12" >
                <!--Table-->
<table class="table table-bordered" style="border-color: #C0A06F; ">
  <style type="text/css">
    .judul{
      margin-left: 1%;
      margin-top: 1%;
    }
    p{
      margin-left: 1%;
      margin-right: 1%;
      margin-top: 1%;
    }
  </style>

    <!--Table head-->
    <thead>
      <tr> 
        <th style="font-size: 22px; color: #C0A06F; height: 60px;"><div class="judul">Info Toko</div></th>
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
      <tr>
        <td><p>Tux Coffee adalah toko online yang menjual dan menyediakan alat-alat pengolahan kopi, mulai dari ukuran kecil hingga besar untuk kebutuhan konsumen dalam menyajikan kopi yang lebih nikmat. Selain itu, tersedia pula kopi berbagai varian  dengan harga promosi dan tentunya terdapat berbagai pilihan biji kopi Nusantara. Tux Coffee juga melayani pembelian dalam skala besar bagi konsumen yang ingin memulai usaha di bidang bisnis kopi.</p>

        <p>Tux Coffee berdedikasi untuk melayani anda sepenuh hati, siapapun, kapanpun, dan  dimanapun anda  berada. Kami tidak menjamin produk kami yang termurah, tetapi kami menjamin produk sampai ke tangan anda dengan kualitas terbaik.</p>

        <p>Temukan berbagai kebutuhan kopi dan alat kopi anda di Tux Coffee!</p>

        <p>“KUALITAS PEJABAT, HARGA MERAKYAT”</p>

        <p>Produk kami juga tersedia di:</p>
        <a><img src="asset/lazada.png" alt="" width="160px" style="margin-left: 1%;"></a> 
        <a><img src="asset/tokopedia1.png" alt="" width="160px" style="margin-left: 3%;"></a>
        <a><img src="asset/ShopeeLogo.svg" alt="" width="156px" style="margin-left: 3%;"></a>
      </td>
      </tr>
      
    </tbody>
    <!--Table body-->
  
  </table>
  <!--Table-->
              
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
  </body>
  </html>