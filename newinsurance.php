<?php
 

 include('config.php');
 session_start();
 
 
   if(isset($_POST["submit"])) {
      // username and password sent from form 
      
      $year = mysqli_real_escape_string($db,$_POST['year']);
      $make = mysqli_real_escape_string($db,$_POST['make']);
      $model = mysqli_real_escape_string($db,$_POST['model']);
      $city = mysqli_real_escape_string($db,$_POST['city']);
      $date = mysqli_real_escape_string($db,$_POST['date']);
      $color = mysqli_real_escape_string($db,$_POST['color']);
      $regno = mysqli_real_escape_string($db,$_POST['regno']);
      $fuel = mysqli_real_escape_string($db,$_POST['fuel']);
      $engnum = mysqli_real_escape_string($db,$_POST['engnum']);
      $chassis = mysqli_real_escape_string($db,$_POST['chassis']);
      $custid =  $_POST['text'];

      
      $SELECT = "SELECT regno FROM vehicle WHERE regno =? Limit 1";
      $INSERT = "INSERT INTO vehicle (CustID,Years,Make,Model,CityOfPurchase,DateOfPurchase,Colour,RegNum,FuelType,EngineNumber,ChassisNum) values(?,?,?,?,?,?,?,?,?,?,?)";
    

       $stmt = $db->prepare($INSERT);
       $stmt->bind_param("iisssssssis", $custid, $year, $make, $model, $city, $date, $color,$regno,$fuel,$engnum,$chassis);
       $stmt->execute();
    
       echo "New record inserted sucessfully";
    
      $stmt->close();
      $db->close();


      ob_start();
      header("Location:hi1.php");
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
                                        <a href="index.html">Compañía de Seguros</a>
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
            Year Of Manufactured
            <br><br>
            <select name="year" style="width:20%">
            <option value="2018">2018</option>
            <option value="2017">2017</option>
            <option value="2016">2016</option>
            <option value="2015">2015</option>
            </select>
            <br><br><br>
                
            Make <br><br>
          <input name="make" type="text" style="width:30%" required />
             <br><br><br>
                
            Model<br><br>
            <input name="model" type="text" style="width:30%" required />
            <br><br><br>
                
            Nearest City of Purchase/Registration<br><br>
            <input name="city" type="text" style="width:30%" required/>
            <br><br><br>
                
            Date of Purchase of Vehicle<br><br>
            <input name="date" type="date" style="width:35%" required/>
            <br><br><br>
                
            Colour<br><br>
            <input name="color" type="text" style="width:30%" />
            <br><br><br>
            
            Registration Number<br><br>
            <input name="regno" type="text" style="width:30%" required/>
            <br><br><br>

            Engine Number<br><br>
            <input name="engnum" type="text" style="width:30%" required />
            <br><br><br>

            Chassis Number<br><br>
            <input name="chassis" type="text" style="width:30%" required />
            <br><br><br>
                
            Type of Fuel<br><br>
            <select name="fuel" style="width:30%">
            <option value="petrol">Petrol</option>
            <option value="diesel">Diesel</option>
            </select>
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





