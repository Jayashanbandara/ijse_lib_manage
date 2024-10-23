/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.controller;

import edu.ijse.dto.BookTransDto;
import edu.ijse.service.ServiceFactory;
import edu.ijse.service.custom.BookTransService;

/**
 *
 * @author jayas
 */
public class BookTransController {
    
    
    private BookTransService bookTransService = (BookTransService) ServiceFactory.getInstance().getService(ServiceFactory.ServiceType.ORDER);
    
    public String Borrow(BookTransDto bookTransDto) throws Exception{
        return bookTransService.Borrow(bookTransDto);
    }
    
     public String Return(BookTransDto bookTransDto) throws Exception{
        return bookTransService.Return(bookTransDto);
    }
    
    
    
}
