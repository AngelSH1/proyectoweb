
package com.proyecto.dao;
import com.proyecto.domain.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
////trallendonos la info de la clase producto
///
public interface ProductoDao extends JpaRepository <Producto, Long>{
    
}
