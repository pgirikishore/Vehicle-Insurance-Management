<?php
 

 include('config.php');
 session_start();
 
   if(isset($_POST["submit"])) {
      // username and password sent from form 
      
      $incidate = mysqli_real_escape_string($db,$_POST['incidate']);
      $damtype = mysqli_real_escape_string($db,$_POST['damtype']);
      $firnum = mysqli_real_escape_string($db,$_POST['firnum']);
      $claimamt = mysqli_real_escape_string($db,$_POST['claimamt']);
      $desc = mysqli_real_escape_string($db,$_POST['desc']);


      $SELECT = "SELECT regno FROM vehicle WHERE regno =? Limit 1";
      $INSERT = "INSERT INTO insurance (ClaimAmt,DamageType,FIR_Number,DateOfClaim,DateofIncident,Description) values(?,?,?,?,?,?)";

       $stmt = $db->prepare($INSERT);
       $stmt->bind_param("isssss", $claimamt, $damtype, $firnum, date("Y-m-d"), $incidate, $desc);
       $stmt->execute();
       echo "New record inserted sucessfully";
    
      $stmt->close();
      $db->close();


      ob_start();
      $message = "wrong answer";
      echo "<script type='text/javascript'>alert('$message');</script>";
      header("Location:index.html");
      exit();

    
    }
     ?>








<html>
    <head>
            <link rel="stylesheet" type="text/css" href="mystyle.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Compañía de Seguros</title>
    </head>

    <body>
                <div class="header">
                                <div class="inner-head">
                                    <div class="logo">
                                        <a href="option.html">Compañía de Seguros</a>
                                    </div>
                                     <div class="header-link">
                                        <a href="#">Buy Insurance</a>
                                    </div>
                                     <div class="header-link">
                                        <a href="login.html">Login</a>
                                    </div>
                                </div>
                </div> 
                <br><br><br><br>
        <div class="outer">
         <div class="inner">
            <form action="" method="POST">
                
            Date of Incident<br><br>
            <input name="incidate" type="date" style="width:35%" required/>
            <br><br><br>
           
            Damage Type<br><br>
            <input name="damtype" type="text" style="width:30%" required />
            <br><br><br>
     
            FIR Number<br><br>
            <input name="firnum" type="text" style="width:30%" required/>
            <br><br><br>

            Claim Amount<br><br>
            <input name="claimamt" type="text" style="width:30%" required />
            <br><br><br>

            Description of the Incident<br><br>
            <textarea name="desc" rows="4" cols="50" ></textarea>
            <br><br><br>
                
            <input type="submit" name="submit">
       
            <input type="reset">
                             
            </form>
        </div>
    </div>    


<br><b><br><hr>
        <footer>
                    
                                
                            <p style="text-align: center;">Copyright © Compañía de Seguros. All Rights Reserved | Contact Us: +91 90000 00000</p>
                            <p style="text-align: center;">Insurance Is The Subject Matter Of Solicitation' | © 2017 The New India Assurance Co. Ltd. All Rights Reserved.

                                        Registered Office Address: The New India Assurance Co. Ltd., #87, M.G.Road, Fort, Mumbai 400 001.</p>
                        </div>
                    </footer>
       
    </body>
</html>
