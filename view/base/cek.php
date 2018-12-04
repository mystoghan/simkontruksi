<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "simkonstruksi";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$username = $_POST["password"];
$password = md5($_POST["username"]);

$sql = "SELECT * FROM USERS WHERE username = '$username' and password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      // echo $row["id"];
      // echo "Masuk";
      header('Location: ../admin/dashboard.php');
    }
} else {
  echo "<script>alert ('Username atau Password salah silahkan ulangi kembali ');
        window.location.href = 'login.php';</script>";
}
$conn->close();



 ?>
