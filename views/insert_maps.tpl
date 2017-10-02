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
                  <div class="col-md-10 ">
                        <ol class="breadcrumb">
  <li><a href="../list_databases">root</a></li>
  <li class="active"><a href="../{{n2}}">{{n2}}</a></li>
  <li class="active">{{n3}}</li>


</ol>



                  </div>


                  <div class="col-md-2"><a href="/links">
                  <button type="button" class="btn btn-default btn-md">
                  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Add Link
            </button></a>
            </div>




            </div>
            <div class="row">
                  <div class="col-md-2 col-md-offset-2">
                        <div class="list-group">

                        </div>


                  </div>
            </div>
            <div class="row">
                  <div class="col-md-10 ">
                        <div class="list-group">














  <table class="table table-striped">
    <thead>
      <tr>
        <th>Company</th>
        <th>Phone</th>
        <th>Address</th>
		<th>lat</th>
		<th>long</th>
      </tr>
    </thead>
    <tbody>

%for maps in name:
      <tr>
        <td>{{maps['company']}}</td>
        <td>{{maps['phone']}}</td>
		<td>{{maps['address']}}</td>
        <td>{{maps['lat']}}</td>
		<td>{{maps['long']}}</td>

      </tr>
%end



    </tbody>
  </table>











                              %end























                        </div>


                  </div>
            </div>




      </div>


</body>

</html>
