<?php

$DBHotels = new PDO(
  "mysql:dbname=hoteles;host=localhost; charset=utf8",
  'root'
);

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  $name = $_POST['fNameForm'];
  $lastName = $_POST['lNameForm'];
  $email = $_POST['emailForm'];
  $phone = $_POST['phoneNumberForm'];
  $extraInformation = $_POST['extraInfoForm'];
  $hotelName = $_POST['hotelform'];
  // regex phone
  if (preg_match('/^\d{9}$/', $phone)) {

  } else {
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



} else {
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
  <link rel="stylesheet" type="text/css" href="css/main_components.css" />
  <link rel="icon" href="img/icon.png" />
  <title>Sweet Deals</title>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary bg-primary mb-2 flex-nowrap"
      style="background-color: var(--color-primary-1) !important;">
      <div class="container-fluid">
        <img src="img/icon.png" alt="Sweet Deals icon" height="40px" class="mx-2">
        <a class="navbar-brand text-title-1" href="#">Sweet Deals</a>
        <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
          <ul class="navbar-nav d-flex flex-row" style="column-gap:20px;">
            <li class="nav-item text-content">
              <a class="nav-link" aria-current="page" href="client.php">Home</a>
            </li>
            <li class="nav-item text-content">
              <a class="nav-link" href="#">Deals</a>
            </li>
            <li class="nav-item text-content">
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
        Name:
        <?php echo "$name $lastName"; ?> <br>
        Contact information:
        <?php echo "$email $phone"; ?> <br>
        Additional information :
        <?php echo "$extraInformation"; ?> <br>
        Hotel name:
        <?php echo "$hotelName"; ?>
      </div>
    </div>

  </main>

</body>

</html>