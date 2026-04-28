package com.julianaanselmo.petshop.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.julianaanselmo.petshop.entities.Produto;
import com.julianaanselmo.petshop.repositories.ProdutoRepository;



@Service
public class ProdutoService {
	
	private final ProdutoRepository repository;
	
	public ProdutoService(ProdutoRepository repository) {
		this.repository = repository;
	}
	
	public List<Produto> findAll() {
		return repository.findAll();
	}
	
	public Optional<Produto> findById(Integer id) {
		return repository.findById(id);
	}
	
	public Produto save(Produto produtos) {
		return repository.save(produtos);
	}
	
	public void deleteById(Integer id) {
		repository.deleteById(id);
	}


}
