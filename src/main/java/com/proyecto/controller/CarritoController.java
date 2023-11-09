package com.proyecto.controller;

import com.proyecto.domain.Producto;
import com.proyecto.service.CarritoService;
import com.proyecto.service.ProductoService;
import com.proyecto.service.impl.FirebaseStorageServiceImpl;
import java.util.stream.Collectors;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@Slf4j
@RequestMapping("/carrito")
public class CarritoController {

    @Autowired
    private ProductoService productoService;
    @Autowired
        private CarritoService carritoService;

    @GetMapping("/listado")
     public String inicio(Model model) {
        var productos = productoService.getProductos(false);
        var productosCategoria1 = productos.stream()
                .filter(producto -> producto.getIdCategoria() == 1)// Filtra los productos de la categoría 1
                .collect(Collectors.toList());
        model.addAttribute("productos", productosCategoria1);
        model.addAttribute("totalProductos", productosCategoria1.size());
        return "/producto/listado";
    }

    

    @GetMapping("/nuevo")
    public String productoNuevo(Producto producto) {
        return "/producto/modifica";
    }

    @Autowired
    private FirebaseStorageServiceImpl firebaseStorageService;

    @PostMapping("/guardar")//subir una informacion, es un post por lo que solo necesita la imagen para enviarla a firebase
    public String productoGuardar(Producto producto,
            @RequestParam("imagenFile") MultipartFile imagenFile) {
        if (!imagenFile.isEmpty()) {
            productoService.save(producto);
            producto.setRutaImagen(
                    firebaseStorageService.cargaImagen(
                            imagenFile,
                            "producto", //nombre de la carpeta en la vamos a guardar
                            producto.getIdProducto()));
        }
        productoService.save(producto);
        return "redirect:/producto3/listado";
    }

    @GetMapping("/eliminar/{idProducto}")//las llaves significa que en la pantalla sale cual va a eliminar
    public String productoEliminar(Producto producto) {
        productoService.delete(producto);
        return "redirect:/producto3/listado";//es como para volver a cargar la pagina para ver los cambios
    }

    @GetMapping("/modificar/{idProducto}")
    public String productoModificar(Producto producto, Model model) {
        producto = productoService.getProducto(producto);
        model.addAttribute("producto", producto);
        return "/producto/modifica";
    }
}
