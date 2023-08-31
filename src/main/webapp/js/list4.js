
class Technology{
	
	constructor(){
		this.tech = document.querySelector('#tech');	
		this.front = document.querySelector('#front');	
		this.back = document.querySelector('#back');	
		this.btnAppend = document.querySelector('#btnAppend');	
		this.frontlist = document.querySelector('#frontlist');	
		this.backtlist = document.querySelector('#backtlist');	
	}
	
	btnAppend_click(e) {
		if(this.tech.value.trim() ==''){
        this.tech.value='';
        return;
     }   
    let li = document.createElement('li');
     li.innerText=this.tech.value.trim();
    
    if(this.front.checked){
      this.frontlist.append(li);
      }
   else{
     this.backlist.append(li);
      }	
      
      this.tech.value = '';
      this.tech.focus();
	}
	  
	list_click(e){
		 let li = e.target
	      li.remove();
	    
	}
	
	tech_keyup(e){
		if(e.key== 'Enter')
	       this.btnAppend.click();
	}
	
}






window.onload = function(){
	
	let a = new Technology();
	
	btnAppend.onclick = e =>a.btnAppend_click(e);
	
	frontlist.onclick = e =>a.list_click(e);
	
	backlist.onclick = e =>a.list_click.bind(e);
	
	tech.onkeyup = e => a.tech_keyup.bind(e);
	

	
}