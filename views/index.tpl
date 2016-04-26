<!DOCTYPE html>
<html>
  <head>
    <title>Database Project</title>
    % include('includes/scripts.tpl')
    % include('navbar.tpl')
 </head>
 <body>

% if True:
  Refreshed<br>tester
% else:
  Load
% end

% for i in range(10):
  <p>This is loop index: {{ i }}</p>
% end

hello {{ name }}

  </body>
</html>
