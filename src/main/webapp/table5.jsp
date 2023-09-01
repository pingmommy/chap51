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
 
function init() {
	 let dtable = document.createElement('table');
	 dtable.border = 1;
	 dtable.style.fontFamily = 'monospace';
	 
	 let tbody = document.createElement('tbody');
	 
	 for(let i= 0; i<20; i++){
		
		let tr = document.createElement('tr');
		for(let j =0; j<40; j++){
		 
			 let td_line = document.createElement('td');
			 td_line.innerText = '@';
			 
			 tr.append(td_line);
	 }
	  tbody.append(tr);
		 
 }
	 
	 dtable.append(tbody);
	 display.replaceWith(dtable);
	 dtable.after(document.createElement('h1'));
	 
	 
 }
 
 window.onload = () => {
	 init();
	 generator(); //함수일 경우 밑에 있어도 참조할 수 있다. 
 }
 
 
 
 
function generator() {
	 
	let table = document.querySelectorAll('table')[1];
	for(let i = 0; i<20; i++){
	let a = new Alpha();
	table.tBodies[0].append(a.genTr());
	}
	
	table. onclick =function(e){
		let td = e.target;
		
		if(td.tagName != 'td'.toUpperCase())
			return;
		
		let tr = td.parentElement;
		
		
		
		let line = tr.cells[0].innerText;
		let column = tr.cells[1].innerText;
		let fg = tr.cells[2].innerText;
		let bg = tr.cells[3].innerText;
		let ch = tr.cells[4].innerText;
		tr.remove();
		
		let dtable = document.querySelector('table');
		td = dtable.rows[line-1].cells[column-1];
		
		td.innerText = ch;
		td.style.color = fg;
		td.style.background=bg;
		
		setInterval(()=>{
			if(td.style.visibility == 'visible')
				td.style.visibility = 'hidden';
			else
				td.style.visibility ='visible';
		},Math.random()*500+10);
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