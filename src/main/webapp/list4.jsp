<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<script type="text/javascript" src="js/list4.js"></script>
</head>
<body>
<h1>Web Application</h1>
<hr>
<header>
<label for="tech">choose: </label>
<input id="tech" type="text">
<input id="front" type="radio" name="end" checked="checked"><sub>front</sub>
<input id="back" type="radio" name="end"><sup>back</sup>
<button id="btnAppend">추가</button>
</header>
<hr>
<ul>
	<li>
		<h3>FrontEnd</h3>
		<ol id="frontlist">
			
		</ol>
	</li>
	<br>
	<li>
		<h3>BackEnd</h3>
		<ol id="backlist">
			
		</ol>
	</li>
</ul>
</body>
</html>