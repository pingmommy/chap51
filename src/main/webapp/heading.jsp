<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heading</title>
<style type="text/css">
body{
	font-size: 30px;
}
</style>

</head>
<body>
<input type="range" min="1" max="50" onchange="document.body.style.fontSize = this.value+'px'">
<span><b></b></span>
<hr> 

<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
</body>
</html>