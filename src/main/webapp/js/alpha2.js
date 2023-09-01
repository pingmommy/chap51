
class Alpha{
	static color =['Black', 'Red',  'Green', 'Yellow', 'Blue',  'Magenta','Cyan','White'];
	
	constructor(){
		this.line =1;
		this.column = 1;		
		this.fg = Alpha.color[parseInt(Math.random()*8)];
		this.bg = Alpha.color[parseInt(Math.random()*8)];
		this.ch = String.fromCharCode(parseInt(Math.random()*26)+'A'.charCodeAt(0));
	
		this.direction = 3;
	
	    this.show();
	
		this.tid = setInterval(()=>this.move(),Math.random()*500+10);
		
	
	}
	
	show(){
	let td= cmd.rows[this.line-1].cells[this.column-1];
		td.innerText =this.ch;
        td.style.color=this.fg;
		td.style.background=this.bg;
	}
	
	hide(){
	let td= cmd.rows[this.line-1].cells[this.column-1];
		td.innerText = '@';
		td.style.color='black';
		td.style.background='black';
	}
	
	move(){
	
		this.hide();
		
		switch(this.direction) {
			case 0 : this.line --;
				break; 
				case 1 :this.line++;
				break; 
				case 2 :this.column --;
				break; 
				case 3 :this.column ++;
				break; 
		}
		
		if(this.line==1&&this.column==40){
			this.direction=1;
		}
		if(this.line==20&&this.column==40){
			this.direction=2;
		}
		if(this.line==20&&this.column==1){
			this.direction=0;
		}
		
		if(this.column<1 || this.column >40 || this.line<1 || this.line >20){
			clearInterval(this.tid);
			let ccnt =Ccount.innerText;
			ccnt++;
			Ccount.innerText=ccnt;
			return;
		
		}
				
		this.show();
	}
}



window.onload = () => {
	//let table = document.querySelector('table');
	count.innerText =0;
	cmd.before(document.createElement('hr'));
	
	setInterval(()=>{new Alpha();
	    let cnt = count.innerText;
	    cnt++;
	    count.innerText=cnt;
	    },1000);
	
	
	
	
}