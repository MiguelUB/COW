<?php

$DBHotels = new PDO("mysql:dbname=hoteles;host=localhost; charset=utf8",
'root');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $name = $_POST['fNameForm'];
    $lastName = $_POST['lNameForm'];
    $email = $_POST['emailForm'];
    $phone = $_POST['phoneNumberForm'];
    $extraInformation = $_POST['extraInfoForm'];
    $hotelName = $_POST['hotelform'];
    // regex phone
    if (preg_match('/^\d{9}$/', $phone)) {

    }else{
        echo "La cadena no contiene exactamente 9 números.";
        exit;
    }

    // regex email
    if (!preg_match('/^[^\s@]+@[^\s@]+\.[^\s@]+$/', $email)) {
        echo 'Invalid email';
        exit;
    }

    // QUERY HOTEL
    $query = "SELECT * FROM hoteles WHERE nombre = :nombre";
    // Preparar la consulta
    $consulta = $DBHotels->prepare($query);

    // Asignar valor a la variable :nombre en la consulta preparada
    $consulta->bindParam(':nombre', $hotelName);
    // Ejecutar la consulta
    $consulta->execute();



}
else{
    echo "Se requiere mandar el formulario desde client.php";
}
?>

<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
    <script src="bootstrap/js/jquery-3.6.3.js"></script>

    <link rel="stylesheet" type="text/css" href="css/varaibles.css" />
    <link rel="icon" href="img/icon.png" />
    <title>Sweet Deals</title>
  </head>
<body>
<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-primary mb-2" style="background-color: var(--color-secondary-2) !important;">
      <div class="container-fluid">
        <img src="img/icon.png" alt="Sweet Deals icon" height="30px" class="m-2"> 
        <a class="navbar-brand" href="#">Sweet Deals</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="client.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Deals</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Log In</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <main class="container">
<div class="card">
  <div class="card-body">
  <h5 class="card-title">Request of Form </h5>
    Name:     <?php echo "$name $lastName";?> <br>
    Contact information: <?php echo "$email $phone";?> <br>
    Additional information : <?php echo "$extraInformation";?> <br>
    Hotel name: <?php echo "$hotelName";?>
  </div>
</div>
<?php
$infoHotel = $consulta->fetch(PDO::FETCH_ASSOC);
  $nombre = $infoHotel["nombre"];
  $image = $infoHotel["img"];
  $city = $infoHotel["ciudad"];
  echo "<div class='card mt-2' style='width: 18rem;'>
  <img class='card-img-top' src=$image alt='$nombre image'>
  <div class='card-body'>
    <h5 class='card-title'>$nombre</h5>
    <p class='card-text'>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href='#' class='btn btn-primary'  style='background-color: var(--color-secondary-2) !important;'>Go somewhere</a>
  </div>
</div>";
?>
  </main>
    
</body>

</html>