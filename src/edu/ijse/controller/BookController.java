/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.controller;
import edu.ijse.dto.BookDto;
import edu.ijse.service.ServiceFactory;
import edu.ijse.service.custom.BookService;
import java.util.ArrayList;
/**
 *
 * @author jayas
 */
public class BookController {
  
    private BookService bookService = (BookService)ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.BOOK);
    
    public String save(BookDto bookDto) throws Exception{
        return bookService.save(bookDto);
    }
    
    public String update(BookDto bookDto) throws Exception{
        return bookService.update(bookDto);
    }
    
    public String delete(String bookCode) throws Exception{
        return bookService.delete(bookCode);
    }
    
    public ArrayList<BookDto> getAll() throws Exception{
        return bookService.getAll();
    }
    
    public BookDto get(String bookCode) throws Exception{
        return bookService.get(bookCode);
    }
    
}
