<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<style type="text/css">
table{
	
}
</style>
<script type="text/javascript">
 class Alpha{
	static color = ['Black', 'Red',  'Green', 'Yellow', 'Blue',  'Magenta','Cyan','White'];
	 
	 constructor(){
		this.column = parseInt(Math.random()*40+1);
		this.line = parseInt(Math.random()*20+1);
		do{
		this.fg = Alpha.color[parseInt(Math.random()*8)];
		this.bg = Alpha.color[parseInt(Math.random()*8)];
		}while(this.bg == this.fg); // 'undefined'자체가 값이다.  
		this.ch =String.fromCharCode(parseInt(Math.random()*26) + 'A'.charCodeAt(0));
	 }
	 
	 genTr(){
		 console.log(`(\${this.line},\${this.column},\${this.fg},\${this.bg},\${this.ch})`); 
		 let tr = document.createElement('tr');
		 let values = [this.line, this.column, this.fg, this.bg, this.ch];
		 
		 for(let v of values){
			 let td = document.createElement('td');
			 td.innerText=v;
			 td.align="right";
			 tr.append(td);
		 }
		 return tr;
	 }
 }
 
 
 
 
 
 window.onload = function() {
	 
	let table = document.querySelector('#t2');
	for(let i = 0; i<20; i++){
	let a = new Alpha();
	table.tBodies[0].append(a.genTr());
	}
	
	table. onclick =function(e){
		let td = e.target;
		
		if(td.tagName != 'td'.toUpperCase())
			return;
		
		let tr = td.parentElement;
		
		tr.style.background = 'red'
		setTimeout(() => tr.style.background = 'white', 500);
		
		let str = `
			sectionRowIndex = \${tr.sectionRowIndex} <br>
			rowIndex        = \${tr.rowIndex} <br>
			cellIndex       = \${td.cellIndex} <br>
			
		`
		
		result.innerHTML = str;
		let ch = tr.cells[4].innerText;
		
		display.innerText = ch;
		
		let fg = tr.cells[2].innerText;
		display.style.color = fg;
		
		let bg = tr.cells[3].innerText;
		display.style.background=bg;
	}
	
 }


</script>
</head>
<body>

<h1>TABLE PRACTICE</h1>
<hr>

<p id = "result">
</p>
<span id="display" style="font-size: 30pt">x</span>
<table id="t1">
	<tbody>
	  <c:forEach var="i" begin="0" end="19">
		<tr>
		  <c:forEach var="j" begin="0" end="39">
			<td style="background: black"> </td>
		   </c:forEach>	
		</tr>	  
	  </c:forEach>
	</tbody>
</table>

<table id="t2" border =1; style ="width :500px";>
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