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
  let table = document.querySelector('table');
  
  table.onclick = function(e){
	  let td = e.target;
	  let tr = td.parentElement;
      let str = `
      	sectionRowIndex =\${tr.sectionRowIndex} <br>
        rowIndex        = \${tr.rowIndex}      <br>
        cellIndex       = \${td.cellIndex}       <br>  
      	`
    result.innerHTML=str;
  
  }
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
	  <tr>
	   <td align ="center">10</td>
	   <td align ="center">20</td>
	   <td align ="center">30</td>
	   <td align ="center">40</td>
	   <td align ="center">A</td>
	  </tr>
	  
	  <tr>
	   <td align ="center">20</td>
	   <td align ="center">30</td>
	   <td align ="center">31</td>
	   <td align ="center">41</td>
	   <td align ="center">C</td>
	  </tr>
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