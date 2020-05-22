package com.mkyong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Book;
import com.example.BookRepository;

@RestController
public class BookController {

    @Autowired
    private BookRepository repository;

	
	
	@RequestMapping(path="/book")
	public List<Book> getBook(){
		return (List<Book>) repository.findAll();
	}
	
	@RequestMapping(path="/book/{id}")
	public Book getBookById(@PathVariable("id") long id) {
		return repository.findById(id).orElseGet(() -> new Book());
	}
}
