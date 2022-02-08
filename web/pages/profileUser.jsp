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
    <title>Profile User</title>
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
        <th style="font-size: 22px; color: #C0A06F; height: 60px;"><div class="judul">Profil Saya</div></th>
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
          a {
    text-decoration: none;
}
label {
    font-family: "Raleway", Roboto;
    font-size: 12pt;
}

.form {
    align-items: left;
    display: flex;
    flex-direction: column;
}
.form-border {
    background: -webkit-linear-gradient(right, #C0A06F, #C0A06F);
    height: 1px;
    width: 100%;
}
.form-content {
    background: #fbfbfb;
    border: none;
    outline: none;
    padding-top: 14px;
}


        </style>
      <tr>
        <td>
        <div class="row">
          <div class="col-4">
            <center>
            <div class="logoorg" style="margin-top: 5%;">
              <span>
                <svg xmlns="http://www.w3.org/2000/svg" width="130" height="123"  fill="#C0A06F" class="bi bi-person-circle" viewBox="0 0 16 16">
                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
              </span><br><br>
              <a href="#" style="color: #C0A06F;">Ubah Foto Profil</a>
            </div>
            </center>
                              
          </div>



          <div class="col-8">
            <form method="post" class="form">
              <label for="namaPengguna" style="padding-top:13px">&nbsp;Nama Pengguna</label>
              <input style="width: 100%; " 
                id="namaPengguna"
                class="form-content"
                type="text"
                name="namaPengguna"
                autocomplete="on"
                required />
              <div class="form-border"></div>

              <label for="namaLengkap" style="padding-top:22px">&nbsp;Nama Lengkap</label>
              <input style="width: 100%;"
                id="namaLengkap"
                class="form-content"
                type="text"
                name="namaLengkap"
                required />
              <div class="form-border"></div>

              <label for="jenisKelamin" style="padding-top:22px">&nbsp;Jenis Kelamin</label>
              <input style="width: 100%;"
                id="jenisKelamin"
                class="form-content"
                type="text"
                name="jenisKelamin"
                required />
                <div class="form-border"></div>

              <label for="kontak" style="padding-top:22px">&nbsp;Email/No Handphone</label>
              <input style="width: 100%;"
                id="kontak"
                class="form-content"
                type="text"
                name="kontak"
                required />
              <div class="form-border"></div>

              <label for="password" style="padding-top:22px">&nbsp;Password</label>
              <input style="width: 100%;"
                id="password"
                class="form-content"
                type="password"
                name="password"
                required />
              <div class="form-border"></div>
            </form><br>
          </div>

          
        </div>
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