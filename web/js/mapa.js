

    function MouseOver(i) {
		
	        document.getElementById(i).src= "images/mouseover/"+i+".png";
    }
        		
    function MouseOut(i, rutaImagen) {
	
	    document.getElementById(i).src= "images/"+rutaImagen+".png";
    }
    
    
    function Click(myClick, numeroPlaza, tipoVehiculo, estado) {

            if(!estado){
		location.href='reservaPlaza?numero='+numeroPlaza+'&tipo='+tipoVehiculo+'&estado='+estado;
            }else{
                location.href='liberarPlazaAdmin?numero='+numeroPlaza;
            }
			
	}		
    
   