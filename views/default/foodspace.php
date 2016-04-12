{{extend 'layout.html'}}
<div class ='jumbotron'>
    <h1 class = 'center' >Welcome to Cheffinz</h1>
<div class ="row">
    <div class = "col-md-2">
        <p>
        <a href = "{{=URL('default','/generate')}}" class = "btn btn-primary btn-lg"> Generate</a>
    </p>
    </div>
    <div class = "col-md-2">
        <p><a href = "{{=URL('default','/addmeal')}}" class = "btn btn-primary btn-lg" > Create Meal</a>
    </p>
    </div>
     <div class = "col-md-2">
        <p>
        <a href = "{{=URL('default','/groceries')}}" class = "btn btn-primary btn-lg"> Groceries</a>
    </p>
    </div>
 </div>   
</div>
