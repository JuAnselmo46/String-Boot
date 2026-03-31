package com.julianaanselmo.petshop.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.julianaanselmo.petshop.entities.Categoria;
import com.julianaanselmo.petshop.repositories.CategoriaRepository;

@Service
public class CategoriaService {

    @Autowired
    private CategoriaRepository categoriaRepository;

    // Método para buscar todas as categorias no banco
    public List<Categoria> buscarTodas() {
        return categoriaRepository.findAll();
    }

    // Método para salvar uma nova categoria
    public Categoria salvar(Categoria categoria) {
        return categoriaRepository.save(categoria);
    }
}