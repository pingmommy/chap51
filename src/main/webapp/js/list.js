
function btnAppend_click(e){
	// let name = tech.value.trim()
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

function list_click(e){
	 let li = e.target
      li.remove();
}

function tech_keyup(e){
	if(e.key== 'Enter')
       btnAppend_click();
}



window.onload = function(){
	btnAppend.onclick =btnAppend_click;
	
	frontlist.onclick =list_click;
	
	backlist.onclick =list_click;
	
	tech.onkeyup = tech_keyup;
	
	
	
}