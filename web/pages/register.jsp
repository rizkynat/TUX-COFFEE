<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="asset/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  
    <section class="h-100 gradient-form" style="background-color: #C0A06F;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-xl-10">
            <div class="card rounded-3 text-black">
              <div class="row g-0">
                <div class="col-lg-6">
                  <div class="card-body p-md-5 mx-md-4">
    
                    <div class="text-center">
                      <img src="asset/logo tuf.png" style="width: 185px;" alt="logo">
                      <h4 class="mt-1 mb-5 pb-1 " style="color: #C0A06F;">TUX.COFFEE</h4>
                    </div>

                    
    
                      <form method="post" action="registerProcess.jsp">
                      <div class="form-outline mb-4" style="color:#C0A06F;">
                        <label class="form-label" for="form2Example11">Nama Lengkap Pengguna</label>
                        <input type="text" id="form2Example11" class="form-control" name="namaLengkap" />
                      </div>                
                      <div class="form-outline mb-4" style="color:#C0A06F;">
                        <label class="form-label" for="form2Example22">Email</label>
                        <input type="email" id="form2Example22" class="form-control" name="email" />
                    </div>
                    <div class="row" style="color:#C0A06F;">
                        <label class="form-label" for="form2Example11">No.HP</label>
                    <div class="form-outline col-md-3 mb-4" style="color:#C0A06F;">
                        <input type="text" id="form2Example11" class="form-control" placeholder="+62" name="code"/>
                      </div>
                    <div class="form-outline col-md-9 mb-4" style="color:#C0A06F;">
                        <input type="text" id="form2Example11" class="form-control"  name="nohp"/>
                      </div>
                    </div>
                    <div class="form-outline mb-4" style="color:#C0A06F;">
                        <label class="form-label" for="form2Example11">Kata Sandi</label>
                        <input type="text" id="form2Example11" class="form-control" name="password" />
                      </div>
                    <div class="form-outline mb-5" style="color:#C0A06F;">
                        <label class="form-label" for="form2Example11">Ulang Kata Sandi</label>
                        <input type="text" id="form2Example11" class="form-control" name="repassword" />
                      </div>   
        
                    
    
                      <div class="d-grid gap-2 mb-5">
                        <button class="btn" style="background-color: #C0A06F; color: #ffff;" type="submit">Daftar</button>                      
                      </div>
    
                      <div class="d-flex align-items-center justify-content-center pb-4">
                        <p class="mb-0 me-2">Sudah memiliki akun?</p>
                        <a href="login.jsp" style="color: #C0A06F; text-decoration: none;">Masuk sekarang</a></p>
                      </div>
    
                    </form>
    
                  </div>
                </div>
                <div class="col-lg-6 d-flex align-items-center gradient-custom-2" style="background-color: #B79065;">
                  <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                    <img src="asset/logo_tuf-removebg-preview 2.png" width="400">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  </body>
</html>