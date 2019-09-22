<?php
require_once("func.php");

$scriptName =  getScriptName($_SERVER['PHP_SELF']) ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <title>Hello, world!</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img src="img/logo-lagi.png" width="40" height="40" class="d-inline-block align-top" alt="">
      </a>
     <!--border-->
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link <?php echo ($scriptName=="index.php")?"active":" "; ?>" href="index.php">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link <?php echo ($scriptName=="block.php")?"active":" "; ?>" href="block.php">[Block]</a>
          <a class="nav-item nav-link <?php echo ($scriptName=="varietas.php")?"active":" "; ?>" href="varietas.php">[Varietas]</a>
          <a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">[Hama&Penyakit]</a>
        </div>
      </div>
    </div>
    </nav>
