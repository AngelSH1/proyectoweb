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
@Table(name="carrito")
public class Carrito implements Serializable{
    ///basicamente sirializable va a guardar informacion en memoria,
    //funciona para almacenar ciertos datos en el disco
    private static final long serialVersionUID = 1L;///para poder hacer el ciclo de la sumatoriia del id de producto
    @Id//decir que la tabla producto tiene una lleve key que va a ser el ID
    ///LOS VALORRE generados que tipo de estrategia utilizanm idetico = sea igual en la bd y en la clase
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_item")
    private long idItem;
    private long idProducto;

    public Carrito() {
    }

    public Carrito(long idItem, long idProducto) {
        this.idItem = idItem;
        this.idProducto = idProducto;
    }

    
  
    
}
