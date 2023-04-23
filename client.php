<?php
$DBHotels = new PDO(
  "mysql:dbname=hoteles;host=localhost; charset=utf8",
  'root'
);
$hotelList = $DBHotels->query("SELECT * FROM hoteles")

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
  <script src="https://ajax.googleapis.com/ajax/libs/prototype/1.7.0.0/prototype.js" type="text/javascript"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/scriptaculous/1.9.0/scriptaculous.js"
    type="text/javascript"></script>
  <script src='./js/main.js' defer></script>
  <title>Sweet Deals</title>
</head>

<body>
  <!--NAVBAR -->
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
  <!--MAIN CONTAINER-->
  <div class='float-icon'>
    <img src="./img/go-up.svg" alt="">
  </div>
  <main class="container-fluid">
    <!--SEARCHBAR-->
    <div class='d-flex w-100 justify-content-center align-items-center my-3 flex-column'>
      <div class="input-group rounded w-50 ">
        <input id='searchInput' type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
          aria-describedby="search-addon" />
        <span class="input-group-text border-0" id="search-addon">
          <image class="icon-search" src='./img/search.svg'>
            </ima>
        </span>
      </div>
      <div id='searchSuggestions'class='w-50 border py-1 px-2'></div>
    </div>

    <!--GRID PLACES-->
    <div id='reservas-turisticas' class="row justify-content-center">
      <div id='searchBarNoResult' class="alert alert-secondary" style='display:none;' role="alert">
        Sin resultados...
      </div>
      <?php
      foreach ($hotelList as $hotel) {
        $nombre = $hotel["nombre"];
        $image = $hotel["img"];
        $city = $hotel["ciudad"];
        $country = $hotel["pais"];
        $id = $hotel["id"];
        $desccription = $hotel["description"] ?: 'Este destino no tiene descripcion';
        $pool = $hotel["piscina"] ? "piscina.png" : "piscina_no.png";
        echo "
      <div class='card m-2 px-0 reserva' style='width: 21rem;' data-name='$nombre'>
        <img class='card-img-top img-fluid' style='min-height:250px;' src=$image alt=' $nombre image' onerror=this.src='./img/default-image.jpg'>
        <div class='card-body'>
          <h5 class='card-title'>$nombre</h5>
          <span class='badge bg-secondary mb-1'>$country - $city</span> <img src='./img/$pool' style='height:20px;'>
          <p class='card-text description-places'>$desccription</p>
          <button id='reserva-$id' class='btn  main-button'>Reservar</button>
        </div>
    </div>";
      }
      ?>
    </div>

    <!--Carrousel-->
    <div id="carouselExampleCaptions rounded " class="carousel slide">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/bali3.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5>Bali Resort </h5>
            <p>Get the perfect summer in Bali Resort with everything you could ever need</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/bali2.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5>Bali afternoon</h5>
            <p>Get a a pice of inner peace seeing the sunset in Bali</p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/bali1.jpg" class="d-block w-100" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5>Third slide label</h5>
            <p>Some representative placeholder content for the third slide.</p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!--Description-->
    <div class="mt-3 d-flex flex-column align-items-center  justify-content-center px-4">
      <h2>Bali Resort paradaise</h2>
      <p>Located in Batununggul, 500 m from Batununggul Rastafara Beach, Cemara Beachfront Nusa Penida provides
        accommodation with an outdoor swimming pool, free private parking, a garden and a terrace. 1.2 km from Sampalan
        Beach and 1.8 km from Mentigi Beach, the property features a bar and barbecue facilities. The accommodation
        offers karaoke and room service.</p>
    </div>
    <!--Formulary-->
    <div class="shadow-1 py-2 px-4">
      <h2>Formualary for information</h2>
      <form action="requestInfo.php" method="POST">
        <!-- first and last names input -->
        <div class="row mb-4">
          <div class="col">
            <div class="form-outline">
              <label class="form-label" for="form6Example1">First name</label>
              <input type="text" id="fNameForm" name="fNameForm" class="form-control" value="Example Name" required />
            </div>
          </div>
          <div class="col">
            <div class="form-outline">
              <label class="form-label" for="form6Example2">Last name</label>
              <input type="text" id="lNameForm" name="lNameForm" class="form-control" value="Example Last Name"
                required />
            </div>
          </div>
        </div>

        <!-- Hotel input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form6Example5">Hotel name</label>
          <select " id=" hotelform" name="hotelform" class="form-control" required>
            <?php
            $hotelList = $DBHotels->query("SELECT * FROM hoteles");
            foreach ($hotelList as $hotel) {
              $nombre = $hotel["nombre"];
              echo "<option value='$nombre'>$nombre</option>";
            }
            ?>
          </select>
        </div>
        <!-- Email input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form6Example5">Email</label>
          <input type="email" id="emailForm" name="emailForm" class="form-control" value="example@email.com" required />
        </div>

        <!-- Number input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form6Example6">Phone</label>
          <input type="number" id="phoneNumberForm" name="phoneNumberForm" class="form-control" value="123456789" />
        </div>

        <!-- Message input -->
        <div class="form-outline mb-4">
          <label class="form-label" for="form6Example7">Additional information</label>
          <textarea class="form-control" id="extraInfoForm" rows="4" name="extraInfoForm"></textarea>
        </div>


        <!-- Submit button -->
        <button type="submit" class="btn  btn-block mb-4 main-button">Ask information</button>
      </form>
    </div>
    <!--Hotels Grid-->
    <div class="row justify-content-around">
      <?php
      foreach ($hotelList as $hotel) {
        $nombre = $hotel["nombre"];
        $image = $hotel["img"];
        $city = $hotel["ciudad"];
        echo "<div class='card mt-2' style='width: 18rem;'>
  <img class='card-img-top' src=$image alt='$nombre image'>
  <div class='card-body'>
    <h5 class='card-title'>$nombre</h5>
    <p class='card-text'>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href='#' class='btn main-button'>Go somewhere</a>
  </div>
</div>";
      }

      ?>
    </div>
  </main>

  <footer class="bg-light text-center text-lg-start">
    <!--Links footer-->
    <div class="d-flex justify-content-around ">
      <button class="btn btn-light">About Us</button>
      <button class="btn btn-light">FAQ</button>
      <button class="btn btn-light">Terms & Conditions</button>
    </div>
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      © 2023 Copyright:
      <a class="text-dark" href="#">SweetDeals.com</a>
    </div>
    <!-- Copyright -->
  </footer>

</body>

</html>