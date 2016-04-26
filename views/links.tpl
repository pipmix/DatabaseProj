<!DOCTYPE html>


<head>
      <title>Database Project</title>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

      % include('navbar.tpl')








<form class="form-horizontal" role="form" method="post" action="/links/add">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Title</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="name" name="name" placeholder="Title" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">URL</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="email" name="url" placeholder="http://wwww." value="">
		</div>
	</div>
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">Description</label>
		<div class="col-sm-8">
			<textarea class="form-control" rows="4" name="desc"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="human" class="col-sm-2 control-label">Tags</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="human" name="tags" placeholder="Seperate with comma">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-8 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
</form>
