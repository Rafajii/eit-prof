<?php
include('connect.php');
session_start();
if(!(isset($_SESSION["username"]))) 
  header("Location: login.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Lead Contact</title>
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
    <table class="table table-striped table-bordered" border="1" cellpadding="5" cellspacing="1" >
                
                
                        <tr style='color: white; background-color: rgb(41, 51, 57);' class='text-center'>
                            <th>Sn</th>
                            <th>Full Name</th>
                            <th>Date Applied</th>
                            <th>Course Enrolled</th>
                             <th>Phone Number</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>State</th>
                            <th>LGA</th>
                            
                        </tr>
             <?php  
                  $query = "SELECT * FROM prospective_prof where application_status='0'";
                  $result = $conn->query("SELECT * FROM prospective_prof where application_status='0'");
                    $counter=0;
                  if ($result = $conn->query($query)) {
                                while ($row = $result->fetch_assoc()) {
                                    $id = $row["id"];
                                    $surname = $row["surname"];
                                    $course = $row["course"];
                                    $firstname = $row["firstname"];
                                    $middlename = $row["middlename"];
                                    $phone_no = $row["phone_no"];
                                    $email = $row["email"];
                                    $timestamp = $row["timestamp"];
                                    $gender = $row["gender"];
                                    $state = $row["state"];
                                    $local_govt = $row["local_govt"];
                                    $apply=strtotime("$timestamp");
                                    $apply_date= date(" d-M-Y h:i A", $apply) ;
                                    $counter +=1;
                                   
            
                                    echo 
                                    
                                    "<tr style='color: black;' class='row_hover'> 
                                    <td>$counter</td> 
                                    <td>$surname $firstname $middlename</td> 
                                    <td>$apply_date </td> 
                                    <td>$course</td> 
                                    <td>$phone_no</td> 
                                    <td>$email</td> 
                                    <td>$gender</td> 
                                    <td>$state</td> 
                                    <td>$local_govt</td> 
                            
                                        </tr>";
                                }
                               
                                            
                                }
                                    echo " </table> ";
                                    $result->free();
                                
                            
                            
                            
                        

                    ?>

    

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