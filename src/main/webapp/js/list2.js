
class Technology{
	
	constructor(){
			
	}
	
	static btnAppend_click(e) {
		if(tech.value.trim() ==''){
        tech.value='';
        return;
     }   
    let li = document.createElement('li');
     li.innerText=tech.value.trim();
    
    if(front.checked){
      frontlist.append(li);
      }
   else{
      backlist.append(li);
      }	
      
      tech.value = '';
      tech.focus();
	}
	  
	static  list_click(e){
		 let li = e.target
	      li.remove();
	    
	}
	
	static tech_keyup(e){
		if(e.key== 'Enter')
	       btnAppend_click();
	}
	
}






window.onload = function(){
	btnAppend.onclick =Technology.btnAppend_click;
	
	frontlist.onclick =Technology.list_click;
	
	backlist.onclick =Technology.list_click;
	
	tech.onkeyup = Technology.tech_keyup;
	

	
}