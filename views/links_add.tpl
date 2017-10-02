<!DOCTYPE html>
<head>
	<title>Add Links</title>
		% include('header.tpl')
		% include('navbar.tpl')
</head>
<body>



<div class="container">

	<div class="panel panel-default panel-table">
	<div class="panel-heading">
		<div class="row">
			<div class="col-md-2 ">

				<a href="/links_view">
				<button type="button" class="btn btn-default btn-md btn-block">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Return to links
				</button></a>
			</div>
			
			<div class="col-md-2 ">


			</div>

			<div class="col-md-8">
			
			</div>
		</div>
	
	</div>
	</div>







	<div class="panel panel-default panel-table">
		<div class="panel-heading">
			<div class="row">
			<div class="col-md-12">
	


				<form class="form-horizontal" role="form" method="post" action="/links_insert">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Title</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="name" name="name" >
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">URL</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="email" name="url" >
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
							<input type="text" class="form-control" id="human" name="tags" placeholder="ex. tag, tag">
							
							<small class="text-muted">Seperate tags with commas</small>

						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-8 col-sm-offset-2">
							<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
						</div>
					</div>
				</form>
			</div>
			</div>
		</div>
	</div>

</div>