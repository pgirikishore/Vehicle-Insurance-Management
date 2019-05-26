<?php  
$temp=25;
 function fetch_data()  
 {    
    $GLOBALS['temp'] = (($GLOBALS['temp']+1)%26);
      $output = '';  
      $connect = mysqli_connect("localhost", "root", "", "miniproject");  
      $sql = "SELECT * FROM (vehicle JOIN customer ON CustID=Cust_ID) WHERE  Cust_ID =(SELECT MAX(Cust_ID) FROM customer);";
        
      $result = mysqli_query($connect, $sql);  
      while($row = mysqli_fetch_array($result)  )  
      {       
        switch($GLOBALS['temp'])
        {
            case 0:
            $output = $row["Cust_ID"]  
                     ; break;
            
                          case 1:
                          $output =     $row["Fname"]; break;
            
                                        case 2:
            $output = $row["Mname"]; break;
            
                          case 3:
            $output = $row["Lname"]; break;

                 
            case 4:
            $output = $row["Gender"]; break;

                 
            case 5:
            $output = $row["DOB"]; break;

                 
            case 6:
            $output = $row["Email"]; break;

            
            case 7:
            $output = $row["Phone"]; break;

            
            case 8:
            $output = $row["LincenseIssueDate"]; break;

            
            case 9:
            $output = $row["LincenseIssueState"]; break;

            
            case 10:
            $output = $row["LincenseNumber"]; break;

            case 11:
            $output = $row["Hno"]; break;

            case 12:
            $output = $row["Street"]; break;

            case 13:
            $output = $row["City"]; break;

            case 14:
            $output = $row["State"]; break;

            case 15:
            $output = $row["Pin"]; break;
            
            case 16:
            $output = $row["Years"]  
                     ; break;
            
                          case 17:
                          $output =     $row["Make"]; break;
            
                                        case 18:
            $output = $row["Model"]; break;
            
                          case 19:
            $output = $row["Colour"]; break;

                 
            case 20:
            $output = $row["RegNum"]; break;

                 
            case 21:
            $output = $row["FuelType"]; break;

                 
            case 22:
            $output = $row["EngineNumber"]; break;

            
            case 23:
            $output = $row["ChassisNum"]; break;

            
            
            case 24:
            $output = $row["DateOfPurchase"]; break;

            
            case 25:
            $output = $row["CityOfPurchase"]; break;

        }
      }  
      
      return $output;  
 }  
 if(isset($_POST["create_pdf"]))  
 {  
      require_once('tcpdf/tcpdf.php');
      
      class MYPDF extends TCPDF {

          //Page header
          public function Header() {
              // Logo
             
              $this->Image($image_file, 10, 10, 15, '', 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
              // Set font
              $this->SetFont('helvetica', 'B', 20);
              // Title
              $this->Cell(0, 15, '<< TCPDF Example 003 >>', 0, false, 'C', 0, '', 0, false, 'M', 'M');
          }
     }

      $obj_pdf = new TCPDF('P', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  
      $obj_pdf->SetCreator(PDF_CREATOR);  
      $obj_pdf->SetAuthor('P. Giri Kishore');
      $obj_pdf->SetTitle("Database"); 


$obj_pdf->SetSubject('TCPDF Tutorial');
$obj_pdf->SetKeywords('TCPDF, PDF, example, test, guide'); 
$obj_pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
      $obj_pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));  
      $obj_pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));  
      $obj_pdf->SetDefaultMonospacedFont('helvetica');  
      $obj_pdf->SetFooterMargin(PDF_MARGIN_FOOTER);  
      $obj_pdf->SetMargins(PDF_MARGIN_LEFT, '5', PDF_MARGIN_RIGHT);  
      $obj_pdf->setPrintHeader(false);  
      $obj_pdf->setPrintFooter(false);  
      $obj_pdf->SetAutoPageBreak(TRUE, 10);  
      $obj_pdf->SetFont('helvetica', '', 12);  
      $obj_pdf->AddPage();  
      $content = '';  
      $content .= '  
      <h3 align="center">Personal Details</h3><br /><br />  
      <table border="1" cellspacing="0" cellpadding="5">  
           <tr>  
                <th width="30%">Cust_ID</th><td>';  
      $content .= fetch_data();  
      $content .= '</td></tr>
      <tr>  
      <th width="30%">Fname</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Mname</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Lname</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Gender</th><td>';  
$content .= fetch_data();  $content .='</td></tr>

<tr>  
      <th width="30%">DOB</th><td>';  
$content .= fetch_data();  $content .='</td></tr>

<tr>  
      <th width="30%">Email</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Phone</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Lincense Issue Date</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Lincense Issue State</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Lincense Number</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">House Number</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Street</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">City</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">State</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Pincode</th><td>';  
$content .= fetch_data();  $content .='</td></tr></table>

  
      <h3 align="center">Vehicle Details</h3><br /><br />  
      <table border="1" cellspacing="0" cellpadding="5">  
           <tr>  
                <th width="30%">Year</th><td>';  
      $content .= fetch_data();  
      $content .= '</td></tr>
      <tr>  
      <th width="30%">Make</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Model</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Colour</th><td>';  
$content .= fetch_data();  $content .='</td></tr>
<tr>  
      <th width="30%">Registration Number</th><td>';  
$content .= fetch_data();  $content .='</td></tr>

<tr>  
      <th width="30%">Fuel Type</th><td>';  
$content .= fetch_data();  $content .='</td></tr>

<tr>  
      <th width="30%">Engine Number</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Chassis Number</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">Date Of Purchase</th><td>';  
$content .= fetch_data();  $content .='</td></tr>


<tr>  
      <th width="30%">City Of Purchase</th><td>';  
$content .= fetch_data();  $content .='</td></tr>

</table>';  
      $obj_pdf->writeHTML($content);  
      $obj_pdf->Output('Compañía de Seguros.pdf', 'I');  

}  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>  
           <title>Giri</title>  
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />            
      </head>  
      <body>  
           <br /><br />  
           <div class="container" style="width:700px;">  
                <h3 align="center">Personal Details</h3><br />  
                <div class="table-responsive">  
                     <table class="table table-bordered">  
                          <tr>  
                               <th width="30%">Cust_ID</th> <td>
                               <?php  
                     echo fetch_data();  
                     ?>   </td>
                          </tr>

                          <tr>  
                               <th width="30%">Fname</th> <td>  
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                          <tr>  
                               <th width="30%">Mname</th> <td> 
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                          <tr>  
                               <th width="30%">Lname</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>  

<tr>  
                               <th width="30%">Gender</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr> 

<tr>  
                               <th width="30%">DOB</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr> 

<tr>  
                               <th width="30%">Email</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Phone</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Lincense Issue Date</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Lincense Issue State</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Lincense Number</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     
                     <tr>  
                               <th width="30%">House Number</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     
                     <tr>  
                               <th width="30%">Street</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     
<tr>  
                               <th width="30%">City</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     
                     <tr>  
                               <th width="30%">State</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     
                     <tr>  
                               <th width="30%">Pincode</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr> 
                     </table>  
                     <br />  <br /> <br />  <br />

                     <h3 align="center">Vehicle Details</h3><br />

                     <table class="table table-bordered">  
                          <tr>  
                               <th width="30%">Year</th> <td>
                               <?php  
                     echo fetch_data();  
                     ?>   </td>
                          </tr>

                          <tr>  
                               <th width="30%">Make</th> <td>  
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                          <tr>  
                               <th width="30%">Model</th> <td> 
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                          <tr>  
                               <th width="30%">Colour</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>  

<tr>  
                               <th width="30%">Registration Number</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr> 

<tr>  
                               <th width="30%">Fuel Type</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr> 

<tr>  
                               <th width="30%">Engine Number</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Chassis Number</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">Date Of Purchase</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>

                     <tr>  
                               <th width="30%">City Of Purchase</th><td>    
                               <?php  
                     echo fetch_data();  
                     ?>   </td></tr>
 
                     </table> 

                     <form method="post">  
                          <input type="submit" name="create_pdf" class="btn btn-danger" value="Create PDF" />  
                     </form>  
                </div>  
           </div>  

           
      </body>  
 </html>  