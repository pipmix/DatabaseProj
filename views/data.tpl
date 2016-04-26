<!DOCTYPE html>
<html>
  <head>
    <title>Database Project</title>
    <style type="text/css">
      .serverinfo {float:left; padding-top: 10px;}
      .mainClass {padding-left: 25px;float:left; padding-top: 10px;}
      .baseClass {padding-left: 25px;float:left; padding-top: 10px;}
      .printClass {padding-left: 25px;float:left; padding-top: 10px;}
    </style>
  </head>

  <body>
    <div class="mainClass">
      <h1>Welcome to Databases</h1>
    </div>


% if True:
  Refreshed<br>tester
% else:
  Load
% end

% for i in range(10):
  <p>This is loop index: {{ i }}</p>
% end

%for maps in name:
<div class="printClass">
  <h4>Map:</h4> {{maps['map']}}
  <h4>GameType:</h4> {{maps['gametype']}}
  <h4>IpAddress:</h4> {{maps['ipaddress']}}
</div>
%end



  </body>
</html>
