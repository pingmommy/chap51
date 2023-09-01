<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<style type="text/css">
table{
	width :"500px";
}
</style>
<script type="text/javascript">
window.onload = function(e){
  let column = parseInt(Math.random()*40+1);
  let line = parseInt(Math.random()*20+1);
  let fg = parseInt(Math.random()*8+30);
  let bg = parseInt(Math.random()*8+40);
  let ch =String.fromCharCode(parseInt(Math.random()*26) + 'A'.charCodeAt(0));
  
  console.log(`(\${line},\${column},\${fg},\${bg},\${ch})`)
  
  let alpha = [line, column, fg, bg, ch];
  
  let tr = document.createElement('tr');
  
  for(let v of alpha){
	  let td = document.createElement('td');
	  td.innerText = v;
	  td.align = "center";
	  tr.append(td);
  }
  
  let table = document.querySelector('table');
  
  
  table.tBodies[0].append(tr);
  
};


</script>
</head>
<body>

<h1>TABLE PRACTICE</h1>
<hr>

<p id = "result">
</p>

<table border =1;>
	<thead>
	  <tr>
		  <th>line</th>
		  <th>column</th>
		  <th>fg</th>
		  <th>bg</th>
		  <th>ch</th>
	  </tr>
	</thead>

	<tbody>
	  
	</tbody>
	<tfoot>
	  <tr>
		  <th>line</th>
		  <th>column</th>
		  <th>fg</th>
		  <th>bg</th>
		  <th>ch</th>
	  </tr>
	
	</tfoot>

</table>
</body>
</html>