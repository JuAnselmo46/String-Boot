package com.julianaanselmo.petshop.repositories;

	
import com.julianaanselmo.petshop.entities.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends JpaRepository<Categoria, Integer> {
    // Não é necessário escrever nenhum método aqui para o básico.
    // O JpaRepository já fornece: save(), findAll(), findById(), delete(), etc.
}