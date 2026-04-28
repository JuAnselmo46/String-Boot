package com.julianaanselmo.petshop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.julianaanselmo.petshop.entities.Produto;


public interface ProdutoRepository extends JpaRepository<Produto, Integer> {
	
	Produto findByNome (String nome);

}
