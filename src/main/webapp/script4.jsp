<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ol{
	border: 5px solid grey;
}

li{
	border: 4px dotted black;
}
</style>
</head>
<body>
<ol id="lang">
	<li>java</li>
	<li>python</li>
	<li>sql</li>

</ol>

<script type="text/javascript">

for( let li of lang.children){
	li.onclick = funtion() {
		this.style.background ='blue';
	}
}
  
</script>

</body>
</html>