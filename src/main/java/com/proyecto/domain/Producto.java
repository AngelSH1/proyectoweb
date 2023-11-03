package com.proyecto.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.io.Serializable;
import lombok.Data;
////el domain es hacer una clase en java para la tabla de bd
@Data
@Entity
@Table(name="producto")
public class Producto implements Serializable{
    ///basicamente sirializable va a guardar informacion en memoria,
    //funciona para almacenar ciertos datos en el disco
    private static final long serialVersionUID = 1L;///para poder hacer el ciclo de la sumatoriia del id de producto
    @Id//decir que la tabla producto tiene una lleve key que va a ser el ID
    ///LOS VALORRE generados que tipo de estrategia utilizanm idetico = sea igual en la bd y en la clase
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_producto")
    private long idProducto;
    private long idCategoria;
    private String descripcion;
    private String detalle;
    private long precio;
    private long existencias;
    private String rutaImagen;
    private boolean activo;

    public Producto() {
    }

//    public Producto(String descripcion, boolean activo) {
//        this.descripcion = descripcion;
//        this.activo = activo;
//    }

    public Producto(long idCategoria, String descripcion, String detalle, long precio, long existencias, boolean activo) {
        this.idCategoria = idCategoria;
        this.descripcion = descripcion;
        this.detalle = detalle;
        this.precio = precio;
        this.existencias = existencias;
        this.activo = activo;
    }
    
    
    
}
