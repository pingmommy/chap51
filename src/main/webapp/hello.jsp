<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUBAO</title>
<script type="text/javascript">

window.onload = function() {
	let img = document.querySelector('img');    
	let ai =  document.querySelectorAll('button')[0];
	let le =  document.querySelectorAll('button')[1];
	let h = document.querySelector('h1');
	
	ai.onclick = function() {
		img.src = 'img/aibao.jpg';
		h.innerHTML='AIBAO!!!'
	}

	le.onclick = function() {
		img.src = 'img/lebao.jpg';
		h.innerHTML='LEBAO!!'
	}
}
	    


</script>


</head>
<h1>Image Tag@@@@@@@@@@@@@@</h1>
<button>aibao</button>
<button>lebao</button>

<hr>
<img alt="fubao" src="img/fubao.jpg">
<body>

</body>
</html>