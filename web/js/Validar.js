function solonumeros(e){


			key = e.keyCode || e.which;

			teclado = String.fromCharCode(key);

			numero = "0123456789.";

			especiales = "8-37-38-46-";

			teclado_especial = false;

			for(let i in especiales){

				if(key==especiales[i]){
					teclado_especial=true;
				}	
			}


			if(numero.indexOf(teclado)==-1 && !teclado_especial){

				return false
			}
}

function sololetras(e){
key = e.keyCode || e.which;

			teclado = String.fromCharCode(key);

			letra = " ABCDEFGHIJKLMNOPQRSTUVWYXZabcdefghijklmnñopqrstuvwyz";

			especiales = "8-37-38-46-164";

			teclado_especial = false;

			for(let i in especiales){

				if(key==especiales[i]){
					teclado_especial=true;break;
				}	
			}


			if(letra.indexOf(teclado)==-1 && !teclado_especial){

				return false
			}
}

function validarEmail() {
    
    var form = document.getElementById("form");
    var email = document.getElementById("email").value;
    var text= document.getElementById("text");
    var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    
    if(email.match(pattern)){
        form.classList.add("valid");
        form.classList.remove("invalid");
        text.innerHTML = "Tu email es invalido"
        text.style.color = "#00ff00";
    }else{
        form.classList.remove("valid");
        form.classList.add("invalid");
        text.innerHTML = "Ingresa un correo valido"
        text.style.color = "#ff0000";
    }
    
    if(email == ""){
        form.classList.remove("valid");
        form.classList.remove("invalid");
        text.innerHTML = ""
        text.style.color = "#00ff00";
    }
    
  
}
 