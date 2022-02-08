<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
    <title>Checkout 3</title>
  </head>
  <body>
          <!--navbar-->
 <jsp:include page="Header.jsp"></jsp:include>

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
                          </svg></span> <span class="d-inline mx-1" style="color: #C0A06F;font-size: 18px;">Jasa Pengiriman</span>
                    </div>
                    <div class="col-12">
                        <hr style="width:100%; border: 1px solid #C0A06F;">
                      </div>
                </div>
                </div>

                <div class="container-fluid py-3">
                <div class="row">
                    <span>
                       Pilih Pengiriman <span style="color: red;">*</span>
                    </span>
                    <span style="border:1.5px solid rgba(192, 160, 111,0.6);border-radius: 2px;">
                        <div class="row">
                        <div class="col-4 my-auto">
                            <span class="d-inline-block">Cek Biaya Pengiriman</span>
                        </div>
                        <div class="col-1 offset-7">
                        <span class="d-inline-block ms-"><div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                              <button class="dropdown-item" type="button">Kilat Khusus</button>
                              <button class="dropdown-item" type="button">Reguler</button>
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
                        <!--Table-->
<table class="table table-hover table-fixed" style="border-left: 1px solid #C0A06F; border-top: 1px solid #C0A06F; border-right: 1px solid #C0A06F; ">

    <!--Table head-->
    <thead style="background-color: rgba(192, 160, 111,0.4);">
      <tr>
        <th>Kurir</th>
        <th>Service</th>
        <th>Biaya Kirim</th>
        <th scope="row"></th>
      </tr>
    </thead>
    <!--Table head-->
  
    <!--Table body-->
    <tbody>
      <tr>
        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>JNE</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Jalur Nugraha Ekakurir
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>OKE</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Ongkos Kirim Ekonomis
            </div>
        </div>
        </td>



        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>Rp 102.000</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                estimasi 4-7 hari
            </div>
        </div>
        </td>

        <td><div class="row">
            <div>
                <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
              </div>
        </div></td>
      </tr>



      <tr>
        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>JNE</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Jalur Nugraha Ekakurir
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>REG</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Layanan Reguler
            </div>
        </div>
        </td>



        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>Rp 112.000</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                estimasi 3-6 hari
            </div>
        </div>
        </td>

        <td><div class="row">
            <div>
                <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
              </div>
        </div></td>
      </tr>


      <tr>
        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>J&T</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                J&T Express
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>REG</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Layanan Reguler
            </div>
        </div>
        </td>



        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>Rp 45.000</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                estimasi 3-6 hari
            </div>
        </div>
        </td>

        <td><div class="row">
            <div>
                <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
              </div>
        </div></td>
      </tr> 
       


      <tr>
        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>SiCepat</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Sicepat Express
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>REG</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Layanan Reguler
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>Rp 35.000</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                estimasi 2-3 hari
            </div>
        </div>
        </td>

        <td><div class="row">
            <div>
                <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
              </div>
        </div></td>
      </tr> 

      


      <tr style="border-bottom: 1px solid #C0A06F; ">
        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>SiCepat</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Sicepat Express
            </div>
        </div>
        </td>

        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>HALU</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                Layanan Khusus
            </div>
        </div>
        </td>



        <td scope="row"><div class="row" style="text-align: left;">
            <div class="col-12">
                <b>Rp 50.000</b>
            </div>
        </div>
        <div class="row" style="text-align: left;">
            <div class="col-12">
                estimasi 1-3 hari
            </div>
        </div>
        </td>

        <td><div class="row">
            <div>
                <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
              </div>
        </div></td>
      </tr> 
      
    </tbody>
    <!--Table body-->
  
  </table>
  <!--Table-->
                    </div>
                </div>          

                <div class="container-fluid py-3">
                    <div class="row">
                        <span style="border:1.5px solid rgba(192, 160, 111,0.6);border-radius: 2px; padding-right: 24px;padding-left: 24px;padding-top: 16px;padding-bottom: 16px;">
                            <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#C0A06F" class="bi bi-exclamation-circle-fill" viewBox="0 0 16 16">
                                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                              </svg> Apabila cek biaya pengiriman otomatis terjadi error/tidak tampil, silakan gunakan ongkir manual yang 
                              nantinya detail biaya kirim akan kami infokan setelah kami lakukan pengecekan secara manual. <button style="padding: 3px 16px;background-color: #C0A06F;border: 1.5px solid #C0A06F;border-radius: 5px;color: white;"> <a style="color: white;" href="";>Ongkir Manual</a></span> </button>
                        </span>
                    </div>
                </div>
                <div class="container-fluid py-3">
                <div class="row">
                    <span>
                      <table style="border-color: #fff; width: 30%;">
                        <tr>
                          <td>Berat Belanja</td>
                          <td scope="row"> : </td>
                          <td>6000 Gram</td>
                        </tr>
                        <tr>
                          <td>Biaya Kirim </td>
                          <td scope="row"> : </td>
                          <td>Rp 102.000</td>
                        </tr>
                        <tr>
                          <td>Kurir </td>
                          <td scope="row"> : </td>
                          <td>JNE OKE</td>
                        </tr>
                      </table>
                        
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
                            <a href="http://localhost:8080/tux_coffee/pages/checkout4.jsp">
                            <button style="padding: 5px 20px;background-color: #C0A06F;border: 1.5px solid #C0A06F;border-radius: 5px;color: white; ">Selanjutnya</button>
                            </a>
                        </div>
                     
                    </div>
                </div>
                </div>
            

                <div class="col-4">
                    <div class="container-fluid";">
                        <div class="row"">
                            <div class="col-1"">
                            <span style=" border-left: 2px solid #C0A06F;height: 878px;position: absolute;">
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

 <jsp:include page="Footer.jsp"></jsp:include>
  
</div>
      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
  </html>