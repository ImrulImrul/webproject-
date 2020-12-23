
<?php
  include 'server.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin Dashboard</title>
  <!-- base:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <link rel = "stylesheet" href = "fontawesome-free-5.13.0-web/css/all.min.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
  <div class="container-scroller d-flex">
    <!-- partial:./partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
       
        <li class="nav-item">
          <a class="nav-link" href="adminpanle.php">
            <i class="mdi mdi-view-quilt menu-icon"></i>
            <span class="menu-title" style="font-family: Times New Roman; font-size:20px">Dashboard</span>           
          </a>
        </li>
        </br>
        <li class="nav-item">
          <a class="nav-link"  href="courses_admin.php">
            <i class="fas fa-book-open menu-icon" style="color: yellow"></i>
            <span class="menu-title">Courses</span>
          </a>  
        </li>
        <li class="nav-item">
          <a class="nav-link" href="courses_admin.php">
            <i class="mdi mdi-view-headline menu-icon"></i>
            <span class="menu-title">Form elements</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="active_users.php">
            <i class="mdi mdi-chart-pie menu-icon"></i>
            <span class="menu-title">User List</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="post.php">
            <i class="mdi mdi-grid-large menu-icon"></i>
            <span class="menu-title">Post</span>
          </a>
        </li>


        <li class="nav-item">
          <a class="nav-link" href="subscriberlist.php">
           <i class="fas fa-users menu-icon" style="color: yellow"></i>
            <span class="menu-title">Subsriber</span>
          </a>
        </li>







   <li class="nav-item">
          <a class="nav-link" href="projectquiz/dash.php?=0">
           <i class="fas fa-users menu-icon" style="color: yellow"></i>
            <span class="menu-title">Quiz</span>
          </a>
        </li>


 <li class="nav-item">
          <a class="nav-link" href="../book/admin/">
           <i class="fas fa-users menu-icon" style="color: yellow"></i>
            <span class="menu-title">Order</span>
          </a>
        </li>











        
      </ul>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper" style="background-color:#d7f5e6">
      <!-- partial:./partials/_navbar.html -->
      <nav class="navbar col-lg-12 col-12 px-0 py-0 py-lg-4 d-flex flex-row">
        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="navbar-brand-wrapper">
            <a class="navbar-brand brand-logo" href="adminpanel.php"><img src="images/logo.svg" alt="logo"/></a>
            <a class="navbar-brand brand-logo-mini" href="adminpanel.php"><img src="images/logo-mini.svg" alt="logo"/></a>
          </div>
          <h4 class="font-weight-bold mb-0 d-none d-md-block mt-1">Welcome back, Imrul Quias</h4>
          <ul class="navbar-nav navbar-nav-right">
            

			
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
        <div class="navbar-menu-wrapper navbar-search-wrapper d-none d-lg-flex align-items-center">
          <ul class="navbar-nav mr-lg-2">
            <li class="nav-item nav-search d-none d-lg-block">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search Here..." aria-label="search" aria-describedby="search">
              </div>
            </li>
          </ul>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                <img src="images/image.png" alt="profile"/>
                <span class="nav-profile-name">Imrul Quais</span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item">
                  <i class="mdi mdi-settings text-primary"></i>
                  Settings
                </a>
                <a class="dropdown-item"  href="adminlogout.php">
                  <i class="mdi mdi-logout text-primary"></i>
                  Logout
                </a>
              </div>
            </li>
            
            <li class="nav-item">
              <a href="#" class="nav-link icon-link">
                <i class="mdi mdi-web"></i>
              </a>
            </li>
            
          </ul>
        </div>
      </nav>
      
    
         <div class ="in1" >Welcome To</div>
	     <div class="in">PORALEKHA</div>
     
    
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- base:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>