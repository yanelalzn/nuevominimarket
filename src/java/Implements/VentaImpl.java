
package Implements;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Conexion;
import modelo.Empleado;
import modelo.Venta;

public class VentaImpl {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
    public List listarventa(){
        List<Venta> vent = new ArrayList<>();
        String sql="select id_compra,estado,fecha_compra,monto,cli.nombre\n" +
                    "from compras c\n" +
                    "inner join clientes cli on c.id_cliente=cli.id_cliente";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Venta v = new Venta();
                v.setIdcompra(rs.getInt("id_compra"));
                v.setEstado(rs.getString("estado"));
                v.setFecha(rs.getString("fecha_compra"));
                v.setMonto(rs.getString("monto"));
                v.setComprador(rs.getString("nombre"));
                vent.add(v);
            }
        }
        catch(Exception e){
            e.getMessage();
        }
        return vent;
    }
    
    public List Buscar (String name){
        List<Venta> lista = new ArrayList<>();
        String sql = "select * from compras where id_compra like '%"+name+"%' or monto like '%"+name+"%'";
        try{
         con=cn.Conexion();   
         ps=con.prepareStatement(sql);
         rs=ps.executeQuery();
         while(rs.next()){  
                   Venta v = new Venta();
                v.setIdcompra(rs.getInt("id_compra"));
                v.setEstado(rs.getString("estado"));
                v.setFecha(rs.getString("fecha_compra"));
                v.setMonto(rs.getString("monto"));
                v.setComprador(rs.getString("id_cliente"));
                lista.add(v);                  
               }
        
        }catch(Exception e){
            e.getMessage();
        }
        return lista;
             
                  
    }
    
    public List BuscarEmpleado (String name){
        List<Empleado> l= new ArrayList<>();
        String sql = "select * from empleado where nombre like '%"+name+"%'";
        try{
         con=cn.Conexion();   
         ps=con.prepareStatement(sql);
         rs=ps.executeQuery();
         while(rs.next()){  
                   Empleado e = new Empleado();
                e.setId_empleado203(rs.getInt("id_empleado"));
                e.setApellido3(rs.getString("apellidos"));
                e.setNombre3(rs.getString("nombre"));
                e.setUsuario(rs.getString("usuario"));
                e.setDistrito3(rs.getString("id_distrito"));
                e.setEmail3(rs.getString("id_email"));
                e.setTelefono3(rs.getString("id_telefono"));
                e.setRol3(rs.getString("id_rol"));
                l.add(e);                  
               }
        
        }catch(Exception e){
            e.getMessage();
        }
        return l;
             
                  
    }
    
    
}
