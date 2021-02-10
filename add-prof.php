<?php
include('connect.php');
session_start();
if(!(isset($_SESSION["username"])))
header("Location: login.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add New Student</title>
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

    <center>
<div class="form">
 <u> <h5 class="text-center">New Professional Studens Form</h5></u>
      <form action="add-prof.php" method="post">
        <div class="form-group data input-container">
        <i class="fa fa-user  icon"></i>
        <input type="text" placeholder="Surname" required class="input-field form-control text-capitalize" name="surname">
        </div>
        
        <div class="form-group data input-container">
        <i class="fa fa-user  icon"></i>
            <input type="text" placeholder="Firstname" required class="input-field form-control text-capitalize" name="firstname">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-user  icon"></i>
            <input type="text"placeholder="Middlename" required class="input-field form-control text-capitalize" name="middlename">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-envelope  icon"></i>
            <input type="email" placeholder="Email" required class="input-field form-control text-lowercase" name="email">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-phone  icon"></i>
            <input type="number" placeholder="Phone Number" required class="input-field form-control text-capitalize" name="phone_number">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-user-o icon"></i>
          <select name="gender" class="custom-select-sm form-group gender" required>
            <option selected> Select a Gender</option>
            <option value="male">Male</option>
            <option value="female">Femle</option>
          </select>
             </div> 

          <div class="form-group data input-container">
          <i class="fa fa-address-book  icon"></i>
            <input type="text" placeholder="State" required class="input-field form-control text-capitalize" name="state">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-address-book-o icon"></i>
            <input type="text" placeholder="Local Government" required class="input-field form-control text-capitalize" name="local_govt">
          </div>

          <div class="form-group data input-container">
          <i class="fa fa-book icon"></i>
            <input type="text" placeholder="Course Enrolled" required class="input-field form-control text-capitalize" name="course">
          </div>

          <div class="form-group data input-container">
            <i class="fa fa-credit-card-alt  icon"></i>
            <input type="text" placeholder="Amount Paid" required class="input-field form-control text-capitalize" name="amount_pid">
          </div>
          <div class="form-group data"> 
        <button type="submit" class="btn btn-primary " name="submit">Submit</button>
          </div>
 </form>
    </center>

    <?php
if (isset($_POST["submit"])){
$surname=$_POST['surname'];
$firstname=$_POST['firstname'];
$middlename=$_POST['middlename'];
$state=$_POST['state'];
$local_govt=$_POST['local_govt'];
$gender=$_POST['gender'];
$phone_number=$_POST['phone_number'];
$email=$_POST['email'];
$course=$_POST['course'];
$amount_paid=$_POST['amount_paid'];
$application_status= 1;
$password = password_hash($_POST['surname'], PASSWORD_DEFAULT);


$chk=$conn->query("SELECT * from prospective_prof where surname='$surname' and firstname='$firstname' and middlename = '$middlename'") ;
if (mysqli_num_rows($chk)>0) {

    echo " <script type='text/javascript' >
	alert('DATA ALREDY EXIST')
    </script>";
   echo "<meta http-equiv='refresh' content='0'>";

 
}
else{
    

$sql = "INSERT INTO prospective_prof (surname, firstname, middlename, state ,local_govt,gender, phone_no ,email,course, application_status, password)
            VALUES ('$surname','$firstname','$middlename','$state','$local_govt','$gender', '$phone_number','$email', '$course', '$application_status','$password')";
                         $result = $conn->query($sql) ;

    
        $sql1= "INSERT INTO payment_history (surname, firstname, middlename ,amount)
            VALUES ('$surname','$firstname','$middlename', '$amount_paid')";

                $result = $conn->query($sql1) ;
                if($result){
               
                echo " <script type='text/javascript' >
	alert('INFORMATION SAVED SUCCESFULLY')
    </script>";
    echo "<meta http-equiv='refresh' content='0'>";

    
                } else {

                    echo " <script type='text/javascript' >
                    alert('INFORMATION  NOT SAVED')
                    </script>";
                    echo "<meta http-equiv='refresh' content='0'>";


                }
            }
        
        $conn->close();

       
    }

?>

</div>
</div>
<div class="row">
    <div class="container-fluid foot text-center">
      <h5>&copy; <?php echo date('Y') ?></h5>
    </div>
  </div>
</div>
</div>
</body>
</html> 