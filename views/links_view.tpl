<!DOCTYPE html>
<head>
	<title>View Links</title>
		% include('header.tpl')
		% include('navbar.tpl')
</head>





<body>



<div class="container">






<div class="panel panel-default panel-table">
<div class="panel-heading">



<div class="row">
	<div class="col-md-2 ">

		<a href="/links_add">
		<button type="button" class="btn btn-default btn-md btn-block">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Add Link
		</button></a>
	</div>
	
	<div class="col-md-2 ">
	
		<a href="/links_add">
		<button type="button" class="btn btn-default btn-md btn-block">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  View Tags
		</button></a>
	</div>
	<div class="col-md-4 ">
	</div>
	
	<div class="col-md-4">
		<div class="input-group">
		<input type="text" class="form-control" placeholder="Search tag">
		<span class="input-group-btn">
		<button class="btn btn-default" type="button" >Search</button>
		</span>
		</div>
	</div>
	
</div>


<br>

<div class="row">
	<div class="col-md-12 ">
			<table class="table table-striped">
			<thead>
			<tr>
			<th>Name</th>
			<th>Url</th>
			<th>Description</th>
			<th>Tags</th>
			<th>Edit</th>
			</tr>
			</thead>
			<tbody>
			%for maps in name:
			<tr>
			<td class="col-md-2">{{maps['name']}}</td>
			
			<td class="col-md-3"><a href="{{maps['url']}}">{{maps['url']}}</a></td>
			<td class="col-md-4">{{maps['desc']}}</td>
			%temp = maps['tags']
			<td class="col-md-2">

			%for each in temp:

			<a href=links_view/{{each}}>{{each}} </a> 

			%end

			</td>
			<td class="col-md-1">
				<a href="/links_edit/{{maps["_id"]}}">
				<button type="button" class="btn btn-default btn-xs">
				<span class="glyphicon glyphicon-pencil"></span>
				</button></a>
				
				<a href="/links_delete/{{maps["_id"]}}">
				<button type="button" class="btn btn-default btn-xs">
				<span class="glyphicon glyphicon-trash" ></span>
				</button></a>


			</td>
			</tr>
			%end
			</tbody>
			%end
			</table>
	</div>
</div>

</div>
</div>
</div>


      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
</body>


</html>
