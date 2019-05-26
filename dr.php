<?php
 

 include('config.php');
 session_start();
 
   if(isset($_POST["submit"])) {
      // username and password sent from form 
      
      $fname = mysqli_real_escape_string($db,$_POST['fname']);
      $mname = mysqli_real_escape_string($db,$_POST['mname']);
      $lname = mysqli_real_escape_string($db,$_POST['lname']);
      $dob = mysqli_real_escape_string($db,$_POST['dob']);
      $email = mysqli_real_escape_string($db,$_POST['email']);
      $mob = mysqli_real_escape_string($db,$_POST['mob']);
      $gender = mysqli_real_escape_string($db,$_POST['gender']);
      $lidate = mysqli_real_escape_string($db,$_POST['lidate']);
      $lstate = mysqli_real_escape_string($db,$_POST['lstate']);
      $lnum = mysqli_real_escape_string($db,$_POST['lnum']);
      $hnum = mysqli_real_escape_string($db,$_POST['hnum']);
      $snum = mysqli_real_escape_string($db,$_POST['snum']);
      $city = mysqli_real_escape_string($db,$_POST['city']);
      $state = mysqli_real_escape_string($db,$_POST['state']);
      $pin = mysqli_real_escape_string($db,$_POST['pin']);




      $INSERT = "INSERT INTO customer(Fname,Mname,Lname,Gender,DOB,Email,Phone,LincenseIssueDate,LincenseIssueState,LincenseNumber,Hno,Street,City,State,Pin)  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
      $query1 = "SELECT Cust_ID FROM customer WHERE Fname= $fname AND Phone= $mob";
       $stmt = $db->prepare($INSERT);
       $stmt->bind_param("ssssssssssissss", $fname, $mname, $lname, $gender, $dob, $email, $mob, $lidate, $lstate, $lnum, $hnum, $snum, $city, $state, $pin);
       $stmt->execute();
       $custid = mysqli_query($con,$query1);?>
<form method="post" action="newinsurance.php">
 <input type="text" name="text" value="<?php echo $custid; ?>">
 <button type="submit">Submit</button><?php
       echo "New record inserted sucessfully";
    
      $stmt->close();
      $db->close();


      ob_start();
      header("Location:newinsurance.php");
      exit();

    
    }
     ?>

