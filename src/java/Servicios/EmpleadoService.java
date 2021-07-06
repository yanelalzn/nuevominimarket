
package Servicios;

public class EmpleadoService {

    public EmpleadoService() {
    }

    public java.util.List<webservices.Empleadoservice> listadoEmpleado() {
        webservices.Servidor_Service service = new webservices.Servidor_Service();
        webservices.Servidor port = service.getServidorPort();
        return port.listadoEmpleado();
    }

    

   
        

    
    
    
}
