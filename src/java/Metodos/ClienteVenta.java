
package Metodos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Cliente;
import modelo.Conexion;

public class ClienteVenta {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Cliente buscar (String dni){
        Cliente c = new Cliente();
        String sql = "select * from clientes where num_doc="+dni;
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                c.setId_cliente(rs.getInt(1));
                c.setApellidos(rs.getString(2));
                c.setDireccion(rs.getString(3));
                c.setEmail(rs.getString(4));
                c.setNombre(rs.getString(5));
                c.setPassword(rs.getString(6));
                c.setTelefono(rs.getString(7));
                c.setUsuario(rs.getString(8));
            }
        }catch(Exception ex){
            ex.getMessage();
        }
        return c;
    }
    
    
}
