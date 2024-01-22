<?php
 include 'connect.php';
//  error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="shortcut icon" type="image/png" href="../images/favicon.png" />

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add your custom styles here */
        body::before {
            content: "";
            background-image: url('../images/bg.jpg'); /* Replace with your background image */
            filter: blur(10px); /*Adjust the blur amount as needed*/
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Place the background behind the content */
        }
        .card-custom {
            border-radius: 10px;
            /* Add a background color with some opacity for a frosted glass effect */
            background-color: rgba(255, 255, 255, 0.8);
            /* Use backdrop-filter to create a frosted glass effect (may not work in all browsers) */
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card card-custom">
            <div class="card-body">
                <h1 class="fw-semibold mb-4">Registration</h1>
                <form method="POST">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" id="name" name="cusname" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="gender">Gender</label>
                                <select class="form-control" id="gender" name="cusgender" required>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="dob">Date of Birth</label>
                                <input type="date" class="form-control" id="dob" name="cusdob" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="mobile">Mobile Number</label>
                                <input type="tel" class="form-control" id="mobile" name="cusmobile" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="cusaddress" required>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="city">City</label>
                                <input type="text" class="form-control" id="city" name="cuscity" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="landmark">Landmark</label>
                                <input type="text" class="form-control" id="landmark" name="cuslandmark" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="state">State</label>
                                <input type="text" class="form-control" id="state" name="cusstate" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="zip">Zip Code</label>
                                <input type="text" class="form-control" id="zip" name="cuszip" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="email">Email ID</label>
                                <input type="email" class="form-control" id="email" name="cusemail" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="cuspassword" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary btn-block" name="submitcus">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- PHP CODE FOR INSERTING THE DATA -->
<?php
    if(isset($_POST["submitcus"]))
    {
    $cuname= $_POST["cusname"];
    $cugen= $_POST["cusgender"];
    $cudob= $_POST["cusdob"];
    $cumob= $_POST["cusmobile"];
    $cuaddress= $_POST["cusaddress"];
    $cucity= $_POST["cuscity"];
    $culand= $_POST["cuslandmark"];
    $custate= $_POST["cusstate"];
    $cuzip= $_POST["cuszip"];
    $cuemail= $_POST["cusemail"];
    $cupass= $_POST["cuspassword"];

$sql = mysqli_query($conn,"INSERT INTO customer_details (cust_name, cust_gender, cust_dob, cust_no, cust_address, cust_city, cust_landmark, cust_state, cust_zip, cust_email, cust_pass)
                            VALUES ('$cuname','$cugen','$cudob','$cumob','$cuaddress','$cucity','$culand','$custate','$cuzip','$cuemail','$cupass')");
if ($sql == TRUE)
{
// echo "<script type= 'text/javascript'>alert('New record created successfully');</script>";
echo '<script type="text/javascript">
window.location = "cust_reg.php"
</script>';
} 
else
{
// echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";  
echo 'wrong username or password'; 
}
}
?>
    <!-- Include Bootstrap JS (optional) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
