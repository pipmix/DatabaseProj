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

		<a href="/snippets_add">
		<button type="button" class="btn btn-default btn-md btn-block">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Add Snippet
		</button></a>
	</div>
	
	<div class="col-md-2 ">
	
		<a href="/snippets_view">
		<button type="button" class="btn btn-default btn-md btn-block">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  View Tags
		</button></a>
	</div>
	
	<div class="col-md-2 ">
	
		<a href="/snippets_view">
		<button type="button" class="btn btn-default btn-md btn-block">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Compact View
		</button></a>
	</div>
	
	
	
	
	
	
	<div class="col-md-2 ">
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
</div>
</div>
</div>




			

			
			



			
			



			%for x in name:
			%temp = x['tags']
			
			%ctrl = x['lang']
			
			%if ctrl == 'Python':
			%ctrl = 'py'
			%elif ctrl == 'Java':
			%ctrl = 'java'
			%elif ctrl == 'HTML':
			%ctrl = 'html'
			%elif ctrl == 'C++':
			%ctrl = 'cpp'
			%elif ctrl == 'C':
			%ctrl = 'c'
			%elif ctrl == 'C#':
			%ctrl = 'cs'
			
			
			
			%end
			
			
			
			

			
			

			
			
			
			
<div class="container">
<div class="panel panel-default panel-table">
	<div class="panel-heading">

		<div class="row">
			<div class="col-md-10 ">
			
			<b>{{ x['name'] }}</b> ( {{ x['lang'] }} ) 
			
			
			
		
			
		
			</div>
			<div class="col-md-2 ">
			
					
					<a href="/snippets_edit/{{x["_id"]}}">
						<button type="button" class="btn btn-default btn-sm">Edit
						<span class="glyphicon glyphicon-trash" ></span>
					</button></a>
		

					
					<a href="/snippets_delete/{{x["_id"]}}">
						<button type="button" class="btn btn-default btn-sm">Delete
						<span class="glyphicon glyphicon-trash" ></span>
					</button></a>
					
					
					

		
			</div>
		</div>
		
		
		
		</div>


			<div class="panel-body">
			
	
				
					<div class="row">
					<div class="col-md-12 ">
					
	<ul class="list-group">
    <li class="list-group-item">Description: {{ x['desc'] }}</li>
    <li class="list-group-item">Tags:
			
			%for each in temp:
			<a href="snippets_view/{{each}}">{{each}}</a> 
			%end
			

			
			
	
	
	</li>

	</ul>

					</div>
					</div>

					<div class="row">
						<div class="col-md-12 ">
							
								<pre class="prettyprint linenums lang-{{ctrl}}" >{{x['code']}}</pre>
							
						</div>
					</div>

			</div>

</div>
</div>
			%end
</body>
</html>