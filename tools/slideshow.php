<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
   
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    <li data-target="#carousel-example-generic" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">

  <!--?php
    $tabPhoto = array();
    $allPix = $db->prepare('SELECT cheminPhoto FROM mt31_photos WHERE idAlbum IN (i1, i2, i3, i4) ORDER BY 1');
    $allPix->execute(array("i1"=>"1", "i2"=>"2", "i3"=>"3", "i4"=>"4"));
    $i = 0;
    while ($unephoto = $allPix->fetch()) {
      array_push($tabPhoto, $unephoto['cheminPhoto']);
      echo "<span>" . $tabPhoto[$i] . "</span><br />";
      $i++;
    }
    $allPix->closeCursor();
  ?-->

    <div class="item active">
      <img class="imgcarousel" src="edit/album1/DSC-8.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <img class="imgcarousel" src="edit/album2/DSC_0573.jpg" alt="...">
      <div class="carousel-caption">
      </div>
    </div>

    <div class="item">
      <img class="imgcarousel" src="edit/album2/DSC_2477.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>

    <div class="item">
      <img class="imgcarousel" src="edit/album2/DSC_2675.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>

    <div class="item">
      <img class="imgcarousel" src="edit/album4/mt31_npt_001.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>

    <div class="item">
      <img class="imgcarousel" src="edit/album4/mt31_npt_128.jpg" alt="...">
      <div class="carousel-caption">
        
      </div>
    </div>

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>

  <span class="bottom" id="a_bottom">
    <a href="#">
      <span class="glyphicon glyphicon-chevron-down togo"></span>
    </a>
  </span>
</div>