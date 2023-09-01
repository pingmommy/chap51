<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 onclick="console.log(this); console.log(event);">h1 click</h1>

<h2 id="head1">h2.click</h2>

<script type="text/javascript">
head1.onclick = function(e){
	
	console.log(this);
	console.log(e);
	
	let et = e.target;
	console.log(et);
}



</script>
</body>
</html>