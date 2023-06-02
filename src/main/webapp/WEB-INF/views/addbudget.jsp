<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>	Add Budget Software</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
    
     <link
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
    />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
  
  <link
      href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700"
      rel="stylesheet"
      type="text/css"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
<style>

.forms-inputs {
  position: relative;
}

.forms-inputs span {
  position: absolute;
  top: -18px;
  left: 10px;
  background-color: #fff;
  padding: 5px 10px;
  font-size: 15px;
}

.forms-inputs input {
  height: 50px;
  border: 2px solid #
  
}
.forms-inputs input:focus {
  box-shadow: none;
  outline: none;
  border: 2px solid #000;
}
.btn {
  height: 50px;
}

</style>
    <section class="h-100 h-custom">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-8 col-xl-6">
              <div class="card ">
                <img
                  src="https://penrose.law/wp-content/uploads/Code.jpg"
                  class="w-100"
                  style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;height: 200px;"
                  alt="Sample photo"
                />
                <div class="card-body p-4 p-md-5 border border-1 border-dark">
                <center><h2 class="upbook">Add Software</h2></center>
                <br>
                  <form class="px-md-2" action="addbud" method="POST">
                    
                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1q">
               
                        Software Name
                      </label>
                      <input
                        type="text"
                        name="name"
                        id="form3Example1q"
                        class="form-control"       
                        required
                      />
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1q">
                        Description
                      </label>
                      <input
                        type="text"
                        name="description"
                        id="form3Example1q"
                        class="form-control"
                        required
                      />
                    </div>

                    <div className="form-outline mb-4">
                      <label className="form-label" for="form3Example1q">
                       Price
                      </label>
                      <input
                        type="number"
                        name="price"
                        id="form3Example1q"
                        class="form-control"
                        required
                      />
                    </div>
                    <br>

                    <div className="form-outline mb-4">
                      <label className="form-label" for="form3Example1q">
                       Image
                      </label>
                      <input
                        type="file"
                        name="image" 
                        accept="image/*"
                        id="form3Example1q"
                        class="form-control"
                        required
                      />
                    </div>
                    <br>
                    
                    <center>
                      <button
                        type="submit"
                        class="btn btn-primary"
                        autocomplete="off"
                       
                      >
                        Add Software
                      </button>
                      
                    </center>
                   
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->