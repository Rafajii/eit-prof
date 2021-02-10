<?php
include('connect.php');
session_start();
if(!(isset($_SESSION["username"])))
header("Location: login.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard</title>
  <link rel="icon" href="img/eit.png" type="image" size="20x20">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/3517b8ead8.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container-fluid  con">
<div class="container-fluid ">
  <div class="row">
    <div class="container-fluid head  col-2">
     <div class="date"><h6>Professional Student Portal</h6></div>
    </div>
    <div class="container-fluid head col-10">
      
  
  <div class="header_right">
    <p "> <?php echo "WELCOME ".($_SESSION['username']);?> </p>
    </div>
    </div>

  </div>
  <div class="row ">
    <div class="col-2 side">
      <div class="header_left text-center">
        <img src="img/eit.png" height="100" width="100"><br>
        <span style="font-weight: bold;">EIT PORTAL</span>
     <hr>
      </div> 
      
                 <ul class="navbar-nav"> 
           
                  <li class="nav-item nav_item"> <a href="index.php" class="nav-link ">
                       <i class="fa fa-th text-light">
                       <span class="text-light" >Dashboard</span></i>
                   </a> </li>

                   <li class="nav-item nav_item"> <a href="professional-students.php" class="nav-link">
                       <i class="fa fa-user text-light">
                       <span class="text-light">Professional Students</span></i>
                   </a></li>

                   <li class="nav-item nav_item"><a href="add-prof.php" class="nav-link">
                       <i class="fa fa-user-plus text-light">
                       <span class="text-light">Add Student</span> </i>
                   </a></li>

                   <li class="nav-item nav_item"> <a href="lead-contact.php" class="nav-link">
                       <i class="fa fa-info text-light">
                       <span class="text-light">Lead Contact</span></i>
                   </a></li>

                   <li class="nav-item nav_item"> <a href="update-info.php" class="nav-link">
                       <i class="fa fa-pencil-square text-light">
                       <span class="text-light">Update Info</span></i>
                   </a></li>

                   <li class="nav-item nav_item"><a href="logout.php" class="nav-link">
                       <i class="fa fa-sign-out nav-link text-light">
                       <span class="text-light">Log Out</span></i>
                   </a></li>
                   </div>
                  </ul>
      
    <div class="col-10 content">

      <div class="container-fluid ">
        <div class="row">
        <div class="total"> <h3><i class="fa fa-user-o icon-total"></i><div class="txt">TOTAL APPLICANTS</div></h3>
        <div class="round">

                                    
                    <?php  

                  $result = $conn->query("SELECT * FROM prospective_prof");
                        $couner =0;
                  if (mysqli_num_rows($result)>0) {

                    while ($row = $result->fetch_assoc()) {
                        $couner = $couner + 1;

                    }
                   echo $couner;

                    $result->free();
                }
                    ?>

                </div>
              </div>
    
      <div class="active-student"> <h3><i class="fa fa-user icon-active"></i><div class="txt">ACTIVE STUDENTS</div></h3>
    
      <div class="round">
                                    
                                    <?php  
                  $query = "SELECT * FROM prospective_prof";
                  $result = $conn->query("SELECT * FROM prospective_prof");

                  if ($result = $conn->query($query)) {
                        $couner=0;
                    while ($row = $result->fetch_assoc()) {
                        $application_status = $row["application_status"];

                        if($application_status==1){
                          $couner = $couner + 1;
                     
                    }
                }
                echo $couner;
                $result->free();

            }
                ?>

                   
</div>
    </div>
    </div>
    </div>
          </div>
          </div>
  <div class="row">
    <div class="container-fluid foot text-center">
      <h6>&copy; <?php echo date('Y') ?></h6>
    </div>
  </div>
</div>
</div>
</body>
</html> 