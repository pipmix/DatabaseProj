<!DOCTYPE html>
<head>
<title>Snippets</title>
		% include('header.tpl')
		% include('navbar.tpl')

		
		
		
<script src="https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js"></script>
<style>.prettyprint ol.linenums > li { list-style-type: decimal; }</style>
		
</head>
<body>



<div class="container">

		<div class="panel panel-default panel-table">
	<div class="panel-heading">
		<div class="row">
			<div class="col-md-2 ">

				<a href="/links_view">
				<button type="button" class="btn btn-default btn-md btn-block">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Return to Links
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
		<form method="post" action="/links_update/{{name['_id']}}">
		
		
			<div class="row">
				<div class="col-md-2"><b>Name:</b>
				</div>
				<div class="col-md-9">
			
			
				<textarea class="form-control" id="name" name="name" rows="1" >
{{name['name']}}

				</textarea>
			
				</div>
				<div class="col-md-1">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-2"><b>Description:</b>
				</div>
				<div class="col-md-9">
			
			
				<textarea class="form-control" id="name" name="desc" rows="1" >
{{name['desc']}}

				</textarea>
			
				</div>
				<div class="col-md-1">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-2"> <b>Language:</b>
				</div>
				<div class="col-md-9">
			
			
				<textarea class="form-control" id="name" name="url" rows="1" control-label>
{{name['url']}}

				</textarea>
			
				</div>
				<div class="col-md-1">
				</div>
			</div>	





			

			<br>
			
			
			<div class="row">
				<div class="col-md-2"> <b>Tags:</b>
				</div>
				<div class="col-md-9">
			
			
				<textarea class="form-control" id="name" name="tags" rows="1" >
%temp = name['tags']
%for each in temp:
{{each}},
%end

				</textarea>
			
				</div>
				<div class="col-md-1">
				</div>
			</div>		

						<br>
			<div class="row">
			
					<div class="col-sm-2 ">

					</div>
					<div class="col-sm-10 ">
							<input id="submit" name="Submit Edit" type="submit" value="Submit Edit" class="btn btn-primary">

					</div>
			
			
			</div>
			
			
			







	</form>

</div>
</div>
</div>
</div>
</div>
  




</body>
</html>