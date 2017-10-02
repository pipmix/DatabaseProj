<!DOCTYPE html>


<head>
      <title>Database Project</title>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

      % include('navbar.tpl')








<form class="form-horizontal" role="form" method="post" action="/maps/add">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Company</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="name" name="Company" placeholder="Company" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Phone</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="email" name="Phone" placeholder="Phone" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Address</label>
		<div class="col-sm-8">
			<textarea class="form-control" rows="4" name="Address"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="human" class="col-sm-2 control-label">Longitude</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="human" name="Longitude" placeholder="Longitude">
		</div>
	</div>
		<div class="form-group">
		<label for="human" class="col-sm-2 control-label">Latitude</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="human" name="Latitude" placeholder="Latitude">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-8 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
</form>
