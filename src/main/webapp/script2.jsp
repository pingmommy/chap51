<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVENT BUBBLE</title>
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
  lang.onclick = function(e){
	  console.log(this)
  }
  
 for(let li of lang.children){
	 li.onclick = function(){
		 console.log(this.innerHTML);
	 }
 }
  
  document.body.onclick = function(){
	  console.log("body click..");
  }
  
  document.documentElement.onclick = function() {
	  console.log("html click..");
  }
  
</script>

</body>
</html>