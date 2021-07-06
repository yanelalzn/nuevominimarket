
package modelo;

public class Venta {
    public int idcompra;
    public String estado;
    public String fecha;
    public String monto;
    public String comprador;

    public Venta() {
    }

    public Venta(int idcompra, String estado, String fecha, String monto, String comprador) {
        this.idcompra = idcompra;
        this.estado = estado;
        this.fecha = fecha;
        this.monto = monto;
        this.comprador = comprador;
    }

    public int getIdcompra() {
        return idcompra;
    }

    public void setIdcompra(int idcompra) {
        this.idcompra = idcompra;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getMonto() {
        return monto;
    }

    public void setMonto(String monto) {
        this.monto = monto;
    }

    public String getComprador() {
        return comprador;
    }

    public void setComprador(String comprador) {
        this.comprador = comprador;
    }
    
    
}
