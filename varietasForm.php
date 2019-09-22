<?php
$defVal = array('name'=>'');
$defAct = "";
if(isset($_GET['id'])) {
  $defAct ='edit';

} else if(isset($_GET['save'])) {
  
}
require_once("inc/header.php");
?>

<div class="container" style="margin-top:5px;">
  <div class="row">
    <div class="col-sm-8">Breadcum here</div>
  </div>
    <form action="varietasForm?act=<?php echo (!empty($defAct))?$defAct:'save'; ?>">
    <div class="form-group row">
      <label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
      <div id="noteName" class="col-sm-10">
        <input name="name" type="text" class="form-control" id="inputName" placeholder="Name" value="">
      </div>
    </div>



    <div class="form-group row">
      <div class="col-sm-10">
        <button type="submit" id="kirim" class="btn btn-primary">Simpan</button>
      </div>
    </div>
  </form>
  </div>
</div>
<script>
$(document).ready(function(){
  $('#inputName').focusout(function(){

    val = $(this).val();
    console.log(val);
    if(val.length==0){
      $(this).addClass('is-invalid');
      $('#noteName').append('<div class="invalid-feedback">Can"t be Empty</div>');
    } else {
      $(this).removeClass('is-invalid');
    }
  });
});
</script>
