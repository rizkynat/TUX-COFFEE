<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tambah Produk</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />


        <style>
          body{
            background-color: #E8EBEE;
          }
         .sidenav a, .dropdown-btn {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: black;
  display: block;
  border: none;
  background: none;
  width: 100%;
  text-align: left;
  cursor: pointer;
  outline: none;
}
.dropdown-container {
  display: none;
  background-color: white;
  padding-left: 8px;
}
th{
  text-align: center;
}
td{
  text-align: center;
}
textarea{
  border-color: #C0A06F;
  border-radius: 5px;

}
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap');


.container{
  max-width: 500px;
  width: 85%;
  padding: 10px;
  background: #fff;
  border-radius: 5px;
  box-shadow: rgba(192, 160, 111, 0.2) 0px 2px 6px;
}

.drag-area{
  height: 200px;
  border: 3px dashed rgba(192, 160, 111, 0.4);
  border-radius: 5px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;

}

h3{
  margin-bottom: 20px;
  font-weight: 500;

} 

.drag-area .icon{
  font-size: 50px;
  color: #1683ff;
}

.drag-area .header{
  font-size: 20px;
  font-weight: 500;
  color: grey;
}

.drag-area .support{
  font-size: 12px;
  color: gray;
  margin: 10px 0 15px 0;
}

.drag-area .button{
  font-size: 20px;
  font-weight: 500;
  color: #C0A06F;
  cursor: pointer;
}

.drag-area.active{
  border: 2px solid #C0A06F;
}

.drag-area img{
  width: 100%;
  height: 100%;
  object-fit: cover;
}


        </style>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <jsp:include page="sidebarAdmin.jsp"></jsp:include>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" style="box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.2), 0 10px 20px 0 rgba(0, 0, 0, 0.19)">
                    <div class="container-fluid">
                        <button class="btn" id="sidebarToggle">
                          <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                              </svg>
                        </span>
                        </button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="#!"></a></li>
                                <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                                <li class="nav-item dropdown">
                                  <span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="#C0A06F" class="bi bi-person-circle" viewBox="0 0 16 16">
                                      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                      <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg>
                                </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid py-2">
                    <form action="http://localhost:8080/tux_coffee/tambahProdukProcess" method="post" enctype="multipart/form-data">
                  <div class="main" style="margin: 10px 10px;background-color: white;">
                    <div class="container-fluid">
                      <div class="row py-2 text-center">
                        <div class="col-3">
                          <h4 style="color: #C0A06F; text-align: left;">Tambah Produk</h4>
                        </div>
                        <div class="col-9">
                          <hr style="width:100%; border: 2px solid #C0A06F;
                          border-radius: 25px; ">
                        </div>
                      </div>
                      <br>

                      <!--Isi Konten Kiri-->
                      <div class="row py-2">
                        <div class="col-6">
                          <div class="row">
                            <h6 style="margin-left: 5%; color: #000; text-align: left;">Tambah Gambar</h6>
                            <div class="container">
                            
                              <div class="drag-area">
                                <div class="icon">
                                  <i class="fas fa-images"></i>
                                </div>

                                <span class="header">Drag & Drop</span>
                                <span class="header">or <span class="button">Browse</span></span>
                                <input type="file" name="foto_produk" hidden />
                                <span class="support">Supports: JPEG, JPG, PNG</span>
                              </div>  
                            </div>
                          </div><br>

                          <div class="row">
                            <div class="col-6">
                              <h6 style="margin-left: 12%; color: #000; text-align: left;">Harga Produk (Rupiah)</h6>
                              <div class="mb-3">
                                <input type="text" class="form-control" id="harga_produk" aria-describedby="harga" style="margin-left: 12%; width: 80%; border-color: #C0A06F">
                              </div>

                              <h6 style="margin-left: 12%; color: #000; text-align: left;">Diskon Produk (%)</h6>
                              <div class="mb-3">
                                <input type="text" class="form-control" id="diskon" aria-describedby="diskon" style="margin-left: 12%; width: 80%; border-color: #C0A06F">
                              </div>

                              <h6 style="margin-left: 12%; color: #000; text-align: left;">Stok</h6>
                              <div class="mb-3">
                                <input type="text" class="form-control" id="stok" aria-describedby="diskon" style="margin-left: 12%; width: 80%; border-color: #C0A06F">
                              </div>
                            </div>

                            <div class="col-6">
                              <div class="container-fluid";>
                                <div class="row">
                                  <div class="col-1">
                                    <span style=" border-left: 2px solid #C0A06F; margin-left: 0%; border-radius: 25px; height: 244px;position: absolute; border-color: rgba(192, 160, 111, 0.4);"></span>
                                  </div>
                                    <!--
                                  <div class="col-11">
                                    <h6 style="margin-left: 22%; color: #000; text-align: left;">Kategori Produk</h6>
                                    <input class="form-control" list="datalistOptions" id="kategori" placeholder="Kategori Produk" style="margin-left: 22%; width: 192px; border-color: #C0A06F; color: rgba(192, 160, 111, 0.4); ">
                                    <datalist id="datalistOptions">
                                      <option value="Terbaru">
                                      <option value="Terpopuler">
                                      <option value="Termurah">
                                      <option value="Nama Produk (A-Z)">
                                      <option value="Chicago">
                                    </datalist>
                                  </div>
                                    -->
                                </div>
                              </div>
                            </div>
                          </div>

                        </div>

                        <!--Isi Konten kanan-->
                        <div class="col-6">
                          <div class="container-fluid";">
                        <div class="row">
                            <div class="col-1">
                            <span style=" border-left: 2px solid #C0A06F;border-radius: 25px; height: 616px;position: absolute;">
                            </span>
                            </div>
                            <div class="col-11">
                            <div class="row">
                              <h6 style="color: #000; text-align: left;">Nama Produk</h6><br>
                              <div class="mb-3">
                                <textarea name="nama_produk" cols="50" rows="2"></textarea>
                              </div>
                            </div>
                            <div class="row">
                              <h6 style="color: #000; text-align: left;">Deskripsi Produk</h6><br>
                              <div class="mb-3">
                                <textarea name="deskripsi" cols="50" rows="18"></textarea>
                              </div>
                            </div><br>
                            <div class="row">
                              <div class="col-6" >
                                 <button style="margin-left: 60%; padding: 2px 40px;background-color: white;border: 1.5px solid #C0A06F;border-radius: 5px;color: #C0A06F;">Batal
                                </button>
                              </div>
                              <div class="col-6">
                                  <button type="submit" style="margin-left: 26%; padding: 2px 30px;background-color: #C0A06F;border: 1.5px solid #C0A06F;border-radius: 5px;color: white;">Simpan
                                  </button>
                              </div>
                            </div><br><br>
                          </div>
                        </div>
                      </div>
                    </div>
                   
                    
                </div>
                </div>
            </div>
                    </form>
        </div>
        <!-- Bootstrap core JS-->
        <script>
          /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
          var dropdown = document.getElementsByClassName("dropdown-btn");
          var i;
          
          for (i = 0; i < dropdown.length; i++) {
            dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
            } else {
            dropdownContent.style.display = "block";
            }
            });
          }
          </script>
        <script src="https://code.iconify.design/2/2.1.1/iconify.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Drag & Drop JS-->
        <script type="text/javascript">
          const dragArea = document.querySelector('.drag-area');
const dragText = document.querySelector('.header');

let button = document.querySelector('.button');
let input = document.querySelector('input');

let file;

button.onclick = () => {
  input.click();
};

//when browse
input.addEventListener('change', function(){
  file = this.files[0];
    dragArea.classList.add('active');
  displayFile();
});

//when file is inside the drag area
dragArea.addEventListener('dragover',(event) =>{
  event.preventDefault();
  dragText.textContent = 'Release to upload';
  dragArea.classList.add('active');
  
  //console.log('File is inside the drag area');
});

//when file leaves the drag area
dragArea.addEventListener('dragleave', () =>{
  dragText.textContent = 'Drag & Drop';
  dragArea.classList.remove('active');
  //console.log('File left the drag area');
});

//when the file is dropped in the drag area
dragArea.addEventListener('drop', (event) =>{
  event.preventDefault();

  file = event.dataTransfer.files[0];
  //console.log(file);
  displayFile();
});

function displayFile(){
  let fileType = file.type;
  //console.log(fileType);

  let validExtentions = ['image/jpeg', 'image/jpg', 'image/png'];

  if(validExtentions.includes(fileType)){
    let fileReader = new fileReader();

    fileReader.onload = () => {
      let fileURL = fileReader.result;
      //console.log(fileURL);
      let imgTag = '<img src="${fileURL}" alt="">';
      dragArea.innerHTML = imgTag;
    };
    fileReader.readAsDataURL(file);
  }else{
    alert('This file is not an image');
    dragArea.classList.remove('active');
  }
  //console.log('The file is dropped in drag area');
}
        </script>


        <!-- Core theme JS-->
        <script src="scripts.js"></script>
    </body>
</html>
