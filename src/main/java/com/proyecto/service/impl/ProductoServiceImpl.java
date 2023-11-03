package com.proyecto.service.impl;

import com.proyecto.dao.ProductoDao;
import com.proyecto.domain.Producto;
import com.proyecto.service.ProductoService;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductoServiceImpl implements ProductoService {

    @Autowired
    private ProductoDao productoDao;

    @Override
    @Transactional(readOnly = true)//este va a ser un metodo que tengamos para hacer cosas transaccionales, por ejemplo, hacer consultas a la bd pero solo leer sin modificar nada
    public List<Producto> getProductos(boolean activos) {
        var lista = productoDao.findAll();
        if (activos) {
            lista.removeIf(e -> !e.isActivo());
        }
        return lista;
    }

    @Override
    @Transactional(readOnly = true)
    public Producto getProducto(Producto producto) {//buscar la producto en la bd con el id que se tenga
        return productoDao.findById(producto.getIdProducto()).orElse(null);
    }

    @Override
    @Transactional
    public void save(Producto producto) {//posiblemente una modificacion o insertar una nueva producto
        productoDao.save(producto);
    }

    @Override
    @Transactional
    public void delete(Producto producto) {/// borrar algo de la base de datos
        productoDao.delete(producto);
    }


}
