<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heading2</title>
<style type="text/css">
body{
	font-size: 30px;
}
</style>

<script type="text/javascript">
function change(e) {
	let value = document.querySelector('i');
	document.body.style.fontSize = e.target.value + "px";
	value.innerText = e.target.value;
}

</script>


</head>
<body>
<header style="font-size: 15px">
<!-- <input type="range" min="1" max="50" onchange="change(event)"> -->
<input type="range" min="1" max="50" oninput="change(event)">
<span><b><i></i></b><sub>px</sub><sup>px</sup>px</span>
<hr> 
</header>
<h1><ins>Heading 1</ins></h1>
<h2><del>Heading 2</del></h2>
<h3>Heading 3<sub>♥</sub></h3>
<h4>Heading 4<sup>♥</sup></h4>
<h5><i>Heading 5</i></h5>
<h6><b>Heading 6</b></h6>
</body>
</html>