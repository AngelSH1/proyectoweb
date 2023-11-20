package com.proyecto.controller;

import com.proyecto.domain.Producto;
import com.proyecto.service.ProductoService;
import com.proyecto.service.impl.FirebaseStorageServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;

@Controller
@Slf4j
@RequestMapping("/producto")
public class ProductoController {

    @Autowired
    private ProductoService productoService;

    @GetMapping("/listado")
    public String inicio(Model model, @RequestParam(required = false) String terminoBusqueda) {
        List<Producto> productos;

        if (terminoBusqueda != null && !terminoBusqueda.trim().isEmpty()) {
            // Realiza la búsqueda en la base de datos utilizando el término proporcionado
            productos = productoService.buscarProductosPorDescripcion(terminoBusqueda.trim());
        } else {
            // Obtén todos los productos si no hay término de búsqueda
            productos = productoService.getProductos(false);
        }

        model.addAttribute("productos", productos);
        model.addAttribute("totalProductos", productos.size());
        return "producto/listado";
    }

    @GetMapping("/nuevo")
    public String productoNuevo(Producto producto) {
        return "producto/modifica";
    }

    @Autowired
    private FirebaseStorageServiceImpl firebaseStorageService;

    @PostMapping("/guardar")
    public String productoGuardar(Producto producto, @RequestParam("imagenFile") MultipartFile imagenFile) {
        if (!imagenFile.isEmpty()) {
            productoService.save(producto);
            producto.setRutaImagen(
                    firebaseStorageService.cargaImagen(
                            imagenFile,
                            "producto",
                            producto.getIdProducto()));
        }
        productoService.save(producto);
        return "redirect:/producto/listado";
    }

    @GetMapping("/eliminar/{idProducto}")
    public String productoEliminar(@PathVariable Long idProducto) {
        Producto producto = new Producto();
        producto.setIdProducto(idProducto);
        productoService.delete(producto);
        return "redirect:/producto/listado";
    }

    @GetMapping("/modificar/{idProducto}")
    public String productoModificar(@PathVariable Long idProducto, Model model) {
        Producto producto = productoService.getProductoPorId(idProducto);
        model.addAttribute("producto", producto);
        return "producto/modifica";
    }
}