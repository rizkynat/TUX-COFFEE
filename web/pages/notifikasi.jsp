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
    <title>Notifikasi</title>
  </head>
  <body>
          <!--navbar-->
  <jsp:include page="Header.jsp"></jsp:include>

      <!--konten progress bar-->
      

      <!--konten left-->
      <div class="container py-3" s>
        
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
        <th style="font-size: 22px; color: #C0A06F; height: 60px;"><div class="judul">Notifikasi</div></th>
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
        <td>
        <table class="table table-hover table-fixed" style="width: 100%;">
           <tr>
            <td><img src="asset/cone.jpeg" alt="" width="70px"></td>
            <td><b style="color: #C0A06F;">Konfirmasi Pembayaran Berhasil</b><br>Pembayaran pesanan melalui Transfer bank BNI telah berhasil dikonfirmasi. Silakan tunggu status pesanan anda dikirim.<br><div class="tulisan" style="font-weight: lighter;">12 - 12 - 2021, 12:00</div></td>
            <td><br><a style="color: #C0A06F;">Rincian</a></td>
          </tr>

          <tr>
            <td><img src="asset/cone.jpeg" alt="" width="70px"></td>
            <td><b style="color: #C0A06F;">Konfirmasi Pembayaran Gagal</b><br>Pembayaran pesanan melalui Transfer bank BNI belum berhasil dikonfirmasi. Silakan konfirmasi segera untuk proses lebih lanjut.<br><div class="tulisan" style="font-weight: lighter;">12 - 12 - 2021, 11:00</div></td>
            <td><br><a style="color: #C0A06F;">Rincian</a></td>
          </tr>

          <tr>
            <td><img src="asset/cone.jpeg" alt="" width="70px"></td>
            <td><b style="color: #C0A06F;">Menunggu Proses Pembayaran</b><br>Proses pembayaran dapat dilakukan maksimal 1 x 24 jam. Apabila tidak ada pembayaran, maka pesanan dibatalkan.<br><div class="tulisan" style="font-weight: lighter;">12 - 12 - 2021, 10:00</div></td>
            <td><br><a style="color: #C0A06F;">Rincian</a></td>
          </tr>
        </table>
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