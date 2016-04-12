{{extend 'layout.html'}}
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img  src="{{=URL('static','images/cheffings.jpg')}}" alt="cheffings" class = "img-responsive" >
      <div class="carousel-caption">
        <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
      </div>
    </div>
    <div class="item">
      <img src="{{=URL('static','images/cheffings1.jpg')}}"  alt="cheffings" class = "img-responsive">
      <div class="carousel-caption">
         <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
      </div>
    </div>
    <div class="item">
      <img src="{{=URL('static','images/cheffings2.gif')}}"  alt="cheffings" class = "img-responsive">
      <div class="carousel-caption">
         <h3>Add Meals</h3>
        <p>Its possible for you to add meals according to your weekly schedule</p>
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
</div>

<h1>Welcome to Cheffings</h1>
<p>
    Cheffings a web application that aids in meal preparation and weekky meal plans
</p>
