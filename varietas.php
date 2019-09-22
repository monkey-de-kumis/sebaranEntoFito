<?php
require_once("inc/conn.php");
require_once("inc/cons.php");
require_once("inc/func.php");
$conn = new SafePDO(PDO_DSN, PDO_USER, PDO_PASS, array(
          PDO::ATTR_PERSISTENT => true
        ));
require_once("inc/header.php");
?>
<div class="container" style="margin-top:5px;">
  <div class="row">
    <div class="col-sm-8">Breadcum here</div>
    <div class="col-sm-4">
        <a class="btn btn-primary" href="varietasForm.php" role="button">Add Varietas</a>
    </div>
  </div>
<?php
if(isset($_GET)){
  $sql = "SELECT * FROM block WHERE 1";
  if ($res = $conn->query($sql)){

  } else {
    echo "<h2>No Data Found</h2>";
  }

}
?>
</div>
