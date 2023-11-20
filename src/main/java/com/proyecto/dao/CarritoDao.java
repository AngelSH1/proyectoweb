
package com.proyecto.dao;
import com.proyecto.domain.Carrito;
import org.springframework.data.jpa.repository.JpaRepository;
////trallendonos la info de la clase producto
///
public interface CarritoDao extends JpaRepository <Carrito, Long>{
    
}
