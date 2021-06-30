
package Controlador;

import Implements.CategoriaImpl;
import Implements.ProductoImpl;
import Servicios.ClienteService;
import Servicios.ProductoService;
import Usuario.Empleado;
import Usuario.EmpleadoValidar;
import Usuario.UsuarioValidar;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Categoria;
import modelo.Cliente;
import modelo.Producto;

public class ControladorEmp extends HttpServlet {
    
    //productos
    int id=0;
    Producto p = new Producto();
    ProductoImpl pimpl = new ProductoImpl();
    List<Producto> producto = new ArrayList<>();
    
    
    
    List<Cliente> lista = new ArrayList<>();
    //listar cliente
    ClienteService cli = new ClienteService();
    
    //metodo buscar
    UsuarioValidar busca = new UsuarioValidar();
    
    //categoriascombo
    CategoriaImpl combo = new CategoriaImpl();
    List<Categoria> categoria = new ArrayList<>();
    //producto servicio
    
    ProductoService proservice = new ProductoService();
   
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        
        producto=pimpl.listarproductos();
        categoria=combo.listarcategorias();
        switch (accion) {         
                              
            case "ListarCliente": 
                request.getRequestDispatcher("listarcliente.jsp").forward(request, response);
                break;
            case "Delete":
                int id= Integer.parseInt(request.getParameter("id"));
                cli.eliminar(id);
                request.getRequestDispatcher("listarcliente.jsp").forward(request, response);
                break;  
            case "Buscar":
                String dato = request.getParameter("txtbuscar");
                List<Cliente> lista  = busca.Buscar(dato);
                request.setAttribute("datos", lista); 
                request.getRequestDispatcher("buscarcliente.jsp").forward(request, response);
                break;
            case "Editar":
                request.setAttribute("iduser", request.getParameter("id"));
                request.getRequestDispatcher("editcliente.jsp").forward(request, response);
                break;
            case "Actualizar":                
                String correo=request.getParameter("txtcorreo");
                String telefono=request.getParameter("txttele");
                String usu=request.getParameter("txtusu");
                String pass=request.getParameter("txtpass");                
                int id2=Integer.parseInt(request.getParameter("txtid"));                 
                cli.editarC(id2, usu, pass, telefono, correo);
                request.getRequestDispatcher("editcliente.jsp").forward(request, response);
                break;
                
            case "Producto":
                request.setAttribute("producto2", producto);
                request.getRequestDispatcher("productos.jsp").forward(request, response);
                break;         
                
            case "RegistrarProducto":
                String descripcion = request.getParameter("txtdesp");
                String img = request.getParameter("txtimg");
                String nombre = request.getParameter("txtnombre");
                String precio = request.getParameter("txtpre");
                String stock = request.getParameter("txtcanti");
                String categ = request.getParameter("categoria");
                proservice.addproducto(descripcion, img, nombre, precio, stock, categ);
                request.setAttribute("producto2", producto);
                request.getRequestDispatcher("productos.jsp").forward(request, response);
                break;                
            default:         
                
                request.setAttribute("producto1", producto);                 
                request.getRequestDispatcher("empmenu.jsp").forward(request, response);
                    
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}