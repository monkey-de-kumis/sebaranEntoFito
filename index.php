<?php
require_once("inc/conn.php");
require_once("inc/cons.php");
require_once("inc/func.php");

require_once("inc/header.php");

//$dbh = new SafePDO(PDO_DSN, PDO_USER, PDO_PASS);
$sql = "SELECT COUNT(*) FROM block" ;
//print_r($pdo->query($sql)->fetch());
$res = $pdo->query($sql)->fetch();

$element = "";
/** if doesn't same don't render the map **/
if ($res['COUNT(*)'] == KIMA_BLOCK_NUM) {
  $datas = array(
      array(
          "block_id"=>"x",
          "block"=>'A',
          "luas"=>0,
          "sumCent"=>0,
          "details"=>array(
    0=>array("varietas_id"=>"x","varietas"=>"Kantor","keterangan"=>"KP KIMA ATAS","jumlah"=>1))
  ));
  /*
  $query = "SELECT block_detail.id,block_detail.block_id,
  block.name as block,block.luas,
  block_detail.varietas_id,varietas.name as varietas,block_detail.jumlah,block.id,
  varietas.keterangan
  FROM block_detail RIGHT JOIN block ON block.id=block_detail.block_id
  JOIN varietas on varietas.id=block_detail.varietas_id";*/
  $query = "SELECT id as block_id, name as block, luas as luas FROM block";
  $blocks = $pdo->query($query)->fetchAll(PDO::FETCH_ASSOC);

  foreach($blocks as $key=>$val){

    $query = "SELECT block_detail.id , block_detail.varietas_id,
    varietas.name as varietas, varietas.keterangan,block_detail.jumlah
    FROM block_detail JOIN varietas ON block_detail.varietas_id=varietas.id
    WHERE block_detail.block_id=?";
    $runn = $pdo->prepare($query);
    $runn->execute([$val["block_id"]]);
    $details = $runn->fetchAll(PDO::FETCH_ASSOC);
    $blocks[$key]['sumCent']=0;
    $blocks[$key]['pembagi']=0;
    foreach($details as $dtlKey => $dtlVal) {
      $dtlQuery = "SELECT block_ento_fito.id, ento_fito.name as ento_fito,
      block_ento_fito.block_detail_id, block_ento_fito.persentase,
      block_ento_fito.kerusakan
      FROM block_ento_fito JOIN ento_fito
        ON block_ento_fito.ento_fito_id=ento_fito.id
      WHERE block_ento_fito.block_detail_id=?";
      $exc = $pdo->prepare($dtlQuery);
      $exc->execute([$dtlVal["id"]]);
      $enfi = $exc->fetchAll(PDO::FETCH_ASSOC);
      $blocks[$key]['pembagi'] += count($enfi);

      foreach($enfi as $en){
        $blocks[$key]['sumCent'] +=$en["persentase"];
      }

      $details[$dtlKey]["ento_fito"]= $enfi;
    }
    $blocks[$key]['avgCent']=$blocks[$key]['sumCent']/$blocks[$key]['pembagi'];
    $blocks[$key]['details']=$details;

  }

  $datas=array_merge($datas,$blocks);
  //echo "<pre>";
  //  print_r($datas);
  //echo "</pre>";
} else {
  $content =  "failed";
}
?>

    <div class="container">
<?php if(isset($content)&&$content == "failed"): ?>
      <h1>No Data Found </h1>
<?php else: //render SVG MAP?>
<div class="row">
  <div class="col">
  <div class="map">
        <svg version="1.1" id="kima" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
        viewBox="0 0 2744.3 4000" style="enable-background:new 0 0 2744.3 4000" xml:space="preserve">
        <g id="A">
        <path id="_x3C_Path_x3E__17_" stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M2008,2160.8l27.3,93.5
        l-259.1,79.4l-109.7-378.1l35.5,15.4l40.2,53.7l41.7,33.2c0,0-0.5,2,11.6,11.1c12.1,9,27.1,16.1,27.1,16.1l31.6,24l28.6,3
        L2008,2160.8z"/>
        </g>
        <g id="B">
        <path id="_x3C_Path_x3E__16_" stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M2663.1,3505.2
        l-485.4-1363l-161,44.3l18.7,67.7l-259.1,79.4l-109.7-378.1c0,0-79.4-67.2-87.4-73.9c-7.9-6.7-32.3-34.8-59.8-40.3
        s-83.6-25.7-93.9-32.4s-72.6,0-72.6,0l1.8,20.3l143,451.5l-103.4,32.1l404.5,1372.3c0,0,53,4.1,75.5,11.5
        c22.6,7.3,56.1,23.2,66.5,18.3c10.4-4.9,34.2-30.5,39.6-31.7c5.5-1.2,34.2-3.7,34.2-3.7l9.8-40.9l275-0.9L2663.1,3505.2z"/>
        </g>
        <g id="C1">
        <polygon id="_x3C_Path_x3E__15_" stroke="#020200" stroke-width="6" stroke-miterlimit="10" points="1277.7,3395
        1038.7,2429.2 1394.3,2312.9 1682.9,3282.6 	"/>
        </g>
        <g id="C2">
        <path id="_x3C_Path_x3E__14_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M1382,3803.6
        L1277.7,3395l405.1-112.4l116,402.6l-77.8-28.3c0,0-33.6-5.3-60.1-5.3s-176.7,15.9-176.7,15.9l-26.5,139.6L1382,3803.6z"/>
        </g>
        <g id="D">
        <polygon id="_x3C_Path_x3E__13_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" points="1049.4,2420.1
        897.7,1835.8 982.1,1809 1354.7,1829.3 1497.7,2280.8 	"/>
        </g>
        <g id="K">
        <path id="_x3C_Path_x3E__12_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M490,2000l54.1,368.6
        l8.5,37.7v64l165.8-54.8l300.2-106.7l-120.9-473.1l-34.2,24.2l-23.5,12.8c0,0-25.6-0.7-36.3,9.2c-10.7,10-25.6-3.6-40.6,3.6
        c-14.9,7.1-37.7,22.8-37.7,22.8l-60.5,19.9l-50.5,31.3l-42.7,21.3l-28.5,11.4C543.4,1992.3,498.6,1999.9,490,2000z"/>
        </g>
        <g id="L">
        <polygon id="_x3C_Path_x3E__11_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" points="1138,2833.8
        1038.7,2429.2 1049.4,2420.1 1018.7,2308.9 718.4,2415.6 856.2,2926.6 	"/>
        </g>
        <g id="M">
        <path id="_x3C_Path_x3E__10_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M548.7,3029.1
        l307.4-102.5l-137.7-511l-165.8,54.8l1.4,110.4l11.7,13.9l-4.3,100.3l-7.5,63v37.4l-5.3,24.6v40.6v54.4c0,0-16,22.4-13.9,35.2
        s2.1,12.8,2.1,12.8L548.7,3029.1z"/>
        </g>
        <g id="N">
        <path id="_x3C_Path_x3E__9_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M1112.3,3845.6
        l32.2-50.5l237.6,8.5L1138,2833.8l-589.2,195.3l11.1,121.6c0,0,27.6,260.7,33.3,271.1c5.7,10.3,63.2,195.3,171.1,245.8
        C870,3731.9,1112.3,3845.6,1112.3,3845.6z"/>
        </g>
        <g id="O">
        <path id="_x3C_Path_x3E__8_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M499.3,3113.4
        l-418.6-50.1l-21.8,193.9c0,0-20.5,196.5,12.8,310.7c33.4,114.3,30.8,169.5,30.8,169.5s435.3,6.4,477.7-11.6
        c48.4,48.3,299.2,175.9,299.2,175.9s73.2,7.1,107.9,52.6c45,14,114.3-34.7,114.3-34.7l-170.8-86l-89.9-37.2l-24.4-21.8l-55.2-19.3
        l-46.2-18c0,0-57.8-57.8-64.2-66.8s-74.5-88.6-79.6-111.7s-30.8-88.6-44.9-254.2S499.3,3113.4,499.3,3113.4z"/>
        </g>
        <g id="J">
        <path id="_x3C_Path_x3E__7_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M496.6,1951.9
        l21.7-363.2l206.2-69.5l91.9,288.7l-22.7,19.2c0,0-34.5,1.4-42.7,6.2s-11.5,4.1-26.4,11c-14.9,6.9-28,13.8-41.8,15.9
        c-13.8,2.1-26.2,5.5-39.3,11.7c-13.1,6.2-24.1,13.1-42,28.9c-17.9,15.9-51.7,31-51.7,31s-2.8-2.1-11,3.4
        C530.4,1940.9,520.8,1954.7,496.6,1951.9z"/>
        </g>
        <g id="I">
        <polygon id="_x3C_Path_x3E__6_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" points="758.9,1624.8
        724.5,1519.2 962.8,1438.9 995.5,1544.7 	"/>
        </g>
        <g id="E1">
        <path id="_x3C_Path_x3E__5_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M816.4,1808l-57.5-183.1
        l236.5-73.5l59.4,185.7l-37.3,8.7l-11.4,6.5l-23.3-2.7l-14.7,13.6l-20.6,6.5l-20.1,6c0,0-43.4,4.9-53.7,20.1
        c-10.3,15.2-27.7,6.5-27.7,6.5S821.6,1812.1,816.4,1808z"/>
        </g>
        <g id="E2">
        <path id="_x3C_Path_x3E__4_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M1054.8,1737
        l-123.1-398.8l309.3-112.6l25.2,33.6l-36.3,74.1c0,0-11.4,26.9-3.6,49c7.8,22.1,32.7,91.8,32.7,91.8l-0.7,20.6l29.9,59.8
        c0,0,2.1,7.1-7.1,24.9c-9.3,17.8-4.3,32-4.3,32l32.7,24.9v107.5c0,0-41.3-4.3-59.1,7.8c-17.8,12.1-18.5-14.2-52-11.4
        c-33.4,2.8-37,2.1-37,2.1s-18.5-20.6-40.9-1.4C1087.9,1741.4,1084.7,1738,1054.8,1737z"/>
        </g>
        <g id="E3">
        <path id="_x3C_Path_x3E__3_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M930.7,1336.4
        l-216-706.2l341.8-114.4L1183.1,859l13.1,29.5l8.9,26.7l6.5,31.5l17,45.3l8.9,43.7c0,0,5.7,46.1,4,62.3
        c-1.6,16.2,16.2,94.6,9.7,108.4c-6.5,13.8-8.3,17.8-8.3,17.8L930.7,1336.4z"/>
        </g>
        <g id="H">
        <path id="_x3C_Path_x3E__2_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M518.3,1588.7
        l449.5-150.8L799.6,911.5l-287.2,98.3c0,0,39.3,171.1,36.6,212.6S518.3,1588.7,518.3,1588.7z"/>
        </g>
        <g id="F">
        <path id="_x3C_Path_x3E__1_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M388.8,548.7
        l123.6,461.2l288.3-99.4l-85.2-280.5l340.3-114.9c2.7,10.2-17.7-32.9-35.2-38.8c-13.3-4.4-34.2-32-36.5-38.7
        c-2.2-6.6-48.6-39.8-68.5-43.1s-19.4-16.7-19.4-16.7L388.8,548.7z"/>
        </g>
        <g id="G">
        <path id="_x3C_Path_x3E_"  stroke="#020200" stroke-width="6" stroke-miterlimit="10" d="M433.6,191.7
        c0,0-39,228.1-39,234.2c0,6.1-12.2,113.1-6.1,119.1c6.1,6.1,504.5-169,504.5-169s-40.1-29.2-42.5-32.8
        c-2.4-3.6-30.4-18.2-37.7-19.5c-7.3-1.2-26.7-19.5-35.3-24.3C769,294.6,433.6,191.7,433.6,191.7z"/>
        </g>
        </svg>
        </div>
      </div>
        <style>
          .map{
            display: inline-block;

          }

          .map svg {
            height: auto;
            width: 500px;
            margin: 0 auto;
            display: block;
          }
          .wg-pannel {
            display:block;
            width:100%;
            vertical-align: top;
          }

          .map g {
            fill: #ccc;
            stroke: #333;
            stroke-width: 1;
          }

          .map g:hover {
            fill: #fc0 !important;
            cursor: pointer;
          }

          .info_panel {
            background-color: rgba(255,255,255, .8);
            padding: 5px;
            font-size: 12px;
            font-family: Helvetica, Arial, sans-serif;
            position: absolute;
            border: 1px solid #333;
            color: #333;
            white-space: nowrap;
          }
          .ion-bug:before {
              content: "\f2be"
          }


          .info_panel::first-line {
            font-weight: bold;
          }

          .ion,.ionicons,.ion-bug:before
          {
            display: inline-block;
            font-family: "Ionicons";
            speak: none;
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            text-rendering: auto;
            line-height: 1;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale
        }
        </style>

        <link rel="styesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <script>
          var populations = <?php echo json_encode($datas); ?>;
          var temp_array= populations.map(function(item){

                  return (item.sumCent*100);
              });
              console.log(temp_array);
              var highest_value = Math.max.apply(Math, temp_array);
              console.log(highest_value);

    $(function() {

        for(i = 0; i < populations.length; i++) {
            $('#'+ populations[i].block)
            .css({'fill': 'rgba(11, 98, 109,' + (populations[i].sumCent*100)/highest_value +')'})
            .data('population', populations[i]);

        }

        $('.map g').mouseover(function (e) {
            var population_data=$(this).data('population');
            var varietasString = '';
            var varietasDetail= '';



            $.each(population_data.details,function(k, val){

               varietasString +='varietas :'+ val.varietas +'-'+val.keterangan;
               varietasString +=' Jmlh:'+val.jumlah+'Pohon<';
               varietasDetail +='<div class="col">';
               varietasDetail +='<div>varietas : '+val.varietas +'-'
               +val.keterangan+'</div>';
               varietasDetail +='<p> Jmlh Pohon : '+val.jumlah+' Pohon</p>';


               $.each(val.ento_fito, function(i,ef) {
                 varietasDetail +='<div class="col">';
                 varietasDetail +='<div class="card bg-success">';
                 varietasDetail +='<div class="card-body">';
                 varietasDetail +='<h5 class="card-title">'+ef.ento_fito+'</h5>';
                 varietasDetail +='<label>Intensitas :</label>'
                 varietasDetail +='<p class="card-text">'+ef.persentase+'% -';
                 varietasDetail +=' '+ef.kerusakan+'</p>';
                 varietasDetail +='</div>';
                 varietasDetail +='</div><div class="icon">';
                 varietasDetail +='<i class="ion ion-person-add"></i></div></div>';
                 varietasDetail +='</di>';


               });
               varietasDetail +='</div>';

            });
              varietasDetail +='</div>';
              varietasDetail +='</div>';
              varietasDetail +='</div>';

            $('<div class="info_panel">'+
                'Block :'+population_data.block.toLocaleString("en-UK") + '</br>' +
                varietasString + '<br>' +
                //'Population: ' + region_data.population.toLocaleString("en-UK") +
                '</div>'
             )
            .appendTo('body');

            $('.wg-pannel').html('<div class="content-wrapper">'
            +'<div class="content-header"><div class="container-fluid">'
            +'<div class="row">'
            +'<div class="col-sm-12">Block :'
            +population_data.block.toLocaleString("en-UK")
            + '</div><div class="col-sm-12">Luas :' + population_data.luas
            + 'Ha</div>'
            +varietasDetail +'</div></div></div>');

        })
        .mouseleave(function () {
            $('.info_panel').remove();
            $('.wg-pannel').html('&nbsp;');
        })
        .mousemove(function(e) {
            var mouseX = e.pageX, //X coordinates of mouse
                mouseY = e.pageY; //Y coordinates of mouse

            $('.info_panel').css({
                top: mouseY-50,
                left: mouseX - ($('.info_panel').width()/2)
            });
        });

    });
        </script>
        <div class="col">
          <div class="wg-pannel">
            &nbsp;
          </div>

        </div>
      </div>
<?php endif; ?>


</div>

<?php
require_once("inc/footer.php");
?>
