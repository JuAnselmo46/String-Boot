package com.julianaanselmo.petshop.controllers;

	
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.julianaanselmo.petshop.entities.Categoria;
import com.julianaanselmo.petshop.services.CategoriaService;

@RestController
@RequestMapping("/api/categorias") // Define a rota base mencionada na segurança 
public class CategoriaController {

    @Autowired
    private CategoriaService categoriaService;

    @GetMapping
    public List<Categoria> listarTodas() {
        return categoriaService.buscarTodas();
    }

    @PostMapping
    public Categoria salvar(@RequestBody Categoria categoria) {
        return categoriaService.salvar(categoria);
    }
}