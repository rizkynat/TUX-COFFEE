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
    <title>checkout</title>
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

      <!--konten progress bar-->
      <div class="container py-3">
          <div class="row">
            <div class="col-3">
                <div class="row text-center" >
                    <div class="col-1 offset-1 my-auto">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-cart3" viewBox="0 0 16 16">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                          </svg>
                    </div>
                    <div class="col-6 ms-2 my-auto">
                        <h3 style="color: #C0A06F;">Checkout</h3>
                    </div>
                </div>
            </div>
          </div>
          <div class="row py-5">
              <div class="col-12">
            <div class="progress">
                <div class="progress-bar" role="progressbar" style="width: 100%;background-color: #C0A06F;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">100%</div>
              </div>
          </div>
          </div>
      </div>

      <!--konten left-->
      <div class="container py-3">
        <div class="row" >
            <div class="col-8" >

                <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                       <span class="d-inline"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-wallet2" viewBox="0 0 16 16">
                            <path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
                          </svg></span> <span class="d-inline mx-1" style="color: #C0A06F;font-size: 18px;">Informasi Pembayaran</span>
                    </div>
                    <div class="col-12">
                        <hr style="width:100%; border: 1px solid #C0A06F;">
                      </div>
                </div>
                </div>

                <div class="container-fluid py-3">
                <div class="row">
                    <span>
                        Metode Pembayaran <span style="color: red;">*</span>
                    </span>
                    <span style="border:1.5px solid rgba(192, 160, 111,0.6);border-radius: 2px;">
                        <div class="row">
                        <div class="col-4 my-auto">
                            <span class="d-inline-block">Transfer Bank</span>
                        </div>
                        <div class="col-1 offset-7">
                        <span class="d-inline-block ms-"><div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                              <button class="dropdown-item" type="button">Transfer Bank</button>
                              <button class="dropdown-item" type="button">Kredit</button>
                              <button class="dropdown-item" type="button">Lainnya</button>
                            </div>
                          </div></span>
                          </div>
                          </div>
                    </span>
                </div>
                </div>

                <div class="container-fluid">
                    <div class="row text-center" >
                        <div class="col-3">
                            <button class="btn btn-default">
                                <img src="asset/BRI Logo.png" width="70" />
                           </button>
                        </div>
                        <div class="col-3 offset-1">
                            <button class="btn btn-default">
                                <img src="asset/BNI.png" width="70" />
                           </button>
                        </div>
                        <div class="col-3 offset-1">
                            <button class="btn btn-default">
                                <img src="asset/BCA.png" width="70" />
                           </button>
                        </div>
                    </div>
                </div>

                <div class="container-fluid py-3">
                    <div class="row" >
                        <span style="border:1.5px solid rgba(192, 160, 111,0.6);border-radius: 2px;box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0 rgba(0, 0, 0, 0.19)">
                            <div class="container-fluid">
                                <div class="row py-3">
                                <span id="norek" style="font-size: 12px;">Nomor Rekening</span>
                                </div>
                                <div class="row">
                                    <div class="col-5">
                                    <span>112 2344 4566 3211</span>
                                    </div>
                                    <div class="col-2 offset-5">
                                        <span style="color: #23A1E9;font-size: 12px;">SALIN</span>
                                    </div>
                                </div>
                                <div class="row">
                                    <span style="font-size: 12px;">A.n. Mardhiyah hayaty</span>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <hr style="width:100%; border: 1px solid #C0A06F;">
                                      </div>
                                </div>
                                <div class="row">
                                    <span style="color: #C0A06F; font-size: 12px;">*Dicek maksimal 60 menit setelah pembayaran berhasil</span>
                                </div><br/>
                            </div>
                        </span>
                    </div>
                </div>

                <div class="container-fluid py-3">
                    <div class="row">
                        <span style="border:1.5px solid rgba(192, 160, 111,0.6);border-radius: 2px; padding-right: 24px;padding-left: 24px;padding-top: 16px;padding-bottom: 16px;">
                            <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-exclamation-circle-fill" viewBox="0 0 16 16">
                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                              </svg> bayar via ATM, SMS Banking, atau Internet Banking. dilanjutkan dengan <a style="color: #C0A06F;" href="">submit pemesanan</a>, lalu konfirmasi pembayaran,
                              dan setelah pembayaran valid, pesanan Anda akan segera kami proses.  </span>
                        </span>
                    </div>
                </div>

                <div class="container-fluid py-3">
                    <div class="row">
                        <div class="col-12">
                            <hr style="width:100%; border: 1px solid #C0A06F;">
                          </div>
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <button style="padding: 5px 20px;background-color: white;border: 1.5px solid #C0A06F;border-radius: 5px;color: #C0A06F;"><span>Kembali</span></button>
                        </div>
                        <div class="col-4 offset-5">
                            <a href="http://localhost:8080/tux_coffee/pages/Home.jsp">
                            <button style="padding: 5px 25px;background-color: #C0A06F;border: 1.5px solid #C0A06F;border-radius: 5px;color: white;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-check" viewBox="0 0 16 16">
                                <path d="M11.354 6.354a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                                <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                              </svg> Submit Pemesanan</button>
                            </a>
                        </div>
                    </div>
                </div>
                </div>

                <div class="col-4">
                    <div class="container-fluid";">
                        <div class="row"">
                            <div class="col-1"">
                            <span style=" border-left: 2px solid #C0A06F;height: 633px;position: absolute;">
                            </span>
                            </div>
                            <div class="col-11">
                            <div class="row">
                                <div class="col-1">
                            <span class="d-inline ms-3"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-clipboard-check" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                                <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
                                <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
                              </svg></span></div>
                               <div class="col-10 ms-2"><span class="d-inline mx-1" style="color: #C0A06F;font-size: 18px;">RINCIAN PEMESANAN </span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
                                  </div>
                              </div>

                              <div class="row">
                                <div class="col-5">
                                    <span style="font-size: 14px;">Jumlah Item</span>
                                </div>
                                <div class="col-3 offset-4">
                                    <span style="font-size: 14px;">4 pcs</span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
                                  </div>
                            </div>

                            <div class="row">
                                <div class="col-5">
                                    <span style="font-size: 14px;">Berat Total</span>
                                </div>
                                <div class="col-5 offset-2">
                                    <span class="text-center" style="font-size: 14px;padding-left: 18px;">6.000 gram</span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
                                  </div>
                            </div>

                            <div class="row">
                                <div class="col-5">
                                    <span style="font-size: 14px;">Subtotal</span>
                                </div>
                                <div class="col-5 offset-2">
                                    <span class="text-center" style="font-size: 14px;padding-left: 18px;">Rp 344.999</span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
                                  </div>
                            </div>

                            <div class="row">
                                <div class="col-5">
                                    <span style="font-size: 14px;">Biaya Kirim</span>
                                </div>
                                <div class="col-5 offset-2">
                                    <span class="text-center" style="font-size: 14px;padding-left: 18px;">Rp 102.000</span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
                                  </div>
                            </div>

                            <div class="row">
                                <div class="col-5">
                                    <span style="font-size: 14px;">Total Bayar</span>
                                </div>
                                <div class="col-5 offset-2 ms-4">
                                    <span class="text-center" style="font-size: 20px;color: #C0A06F;">Rp 446.999</span>
                                </div>
                                <div class="col-12">
                                    <hr style="width:100%; border: 1px solid #C0A06F;">
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
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
  </html>