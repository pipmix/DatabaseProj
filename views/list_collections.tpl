<!DOCTYPE html>



<head>
      <title>Database Project</title>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

      % include('navbar.tpl')



      <div class="container">
            <div class="row">
                  <div class="col-md-6">
                        <ol class="breadcrumb">
  <li><a href="../list_databases">root</a></li>
  <li class="active">{{n2}}</li>

</ol>

                  </div>
            </div>
            <div class="row">
                  <div class="col-md-2 col-md-offset-4">
                        <div class="list-group">

                        </div>


                  </div>
            </div>
            <div class="row">
                  <div class="col-md-2 col-md-offset-4">
                        <div class="list-group">
                              %for maps in name:

                              <a href ="/list_databases/{{n2}}/{{maps}}" style="text-decoration: none">  <button type="button" class="list-group-item">{{maps}}</button></a>


                              %end
                        </div>


                  </div>
            </div>




      </div>


</body>

</html>
