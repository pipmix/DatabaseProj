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

	<div class="col-md-4 col-md-offset-2">
	<div class="login-panel panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Sign In</h3>
						</div>
						<div class="panel-body">
							<form role="form">
								<fieldset>
									<div class="form-group">
										<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus="">
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Password" name="password" type="password" value="">
									</div>
									<div class="checkbox">

									</div>

									<a href="/links" class="btn btn-sm btn-default">Login</a>
								</fieldset>
							</form>
						</div>
					</div>
	</div>
</div>