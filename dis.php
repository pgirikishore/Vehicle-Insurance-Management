<?php
 

 $mysqli = new mysqli("localhost", "root", "", "miniproject");
 session_start();
 
 
   if(isset($_POST["customer"])) {

    $query= 'select * from customer;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }
    
   


   if(isset($_POST["bill"])) {

    $query= 'select * from bill;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



   if(isset($_POST["insurance"])) {

    $query= 'select * from insurance;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



   if(isset($_POST["vehicle"])) {

    $query= 'select * from vehicle;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



   if(isset($_POST["policy"])) {

    $query= 'select * from policy;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



   if(isset($_POST["settlement"])) {

    $query= 'select * from settlement;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



   if(isset($_POST["payment"])) {

    $query= 'select * from payment;';
    $result = $mysqli->query($query); if (!$result)  { 
        $message = 'ERROR:' . mysql_error();  return $message; } 
        else {  $i = 0;  echo '<html><body><table border=1><tr>'; 
           while ($i < mysqli_num_fields($result))  {   $meta = mysqli_fetch_field($result);  
               echo '<td>' . $meta->name . '</td>';   $i = $i + 1;  }  echo '</tr>';    $i = 0; 
        while ($row = mysqli_fetch_row($result))   {   echo '<tr>';   
   $count = count($row);   $y = 0;   
   while ($y < $count)   {   
        $c_row = current($row);    echo '<td>' . $c_row . '</td>';    next($row);    $y = $y + 1;   } 
          echo '</tr>';   $i = $i + 1;  } 
           echo '</table></body></html>'; 
   
   mysqli_free_result($result); } echo '<a href="index.html">Click here!</a>'; 
   
  mysqli_close($mysqli);


   }



 


     ?>

