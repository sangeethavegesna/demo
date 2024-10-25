package com.example.demo.controller;

import com.example.demo.model.Author;
import com.example.demo.model.Book;
import com.example.demo.service.AuthorService;
import com.example.demo.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private BookService bookService;
    @Autowired
    private AuthorService authorService;

    @GetMapping("/books")
    public String getBooks(Model model) {
        List<Book> books = bookService.findAll();
        model.addAttribute("books", books);
        return "books";
    }

    @GetMapping("/authors")
    public String getAuthors(Model model) {
        List<Author> authors = authorService.findAll();
        model.addAttribute("authors", authors);
        return "authors";
    }

    @PostMapping("/addAuthor")
    public String addAuthor(@ModelAttribute("author") Author author) {
        authorService.save(author);
        return "authors";
    }

    @PostMapping("/addBook")
    public String addBook(@ModelAttribute("book") Book book) {
        bookService.save(book);
        return "books";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("author", new Author());
        model.addAttribute("book", new Book());
        return "add";
    }

}
