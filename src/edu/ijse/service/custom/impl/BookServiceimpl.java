/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.service.custom.impl;

import edu.ijse.dao.DaoFactory;
import edu.ijse.dao.custom.BookDao;
import edu.ijse.dto.BookDto;
import edu.ijse.entity.BookEntity;
import edu.ijse.service.custom.BookService;
import java.util.ArrayList;
/**
 *
 * @author jayas
 */
public class BookServiceimpl implements BookService{

    private BookDao BookDao = (BookDao) DaoFactory.getInstance().getDao(DaoFactory.DaoTypes.BOOK);
    
    @Override
    public String save(BookDto bookDto) throws Exception {
        BookEntity entity =getBookEntity(bookDto);
         return BookDao.create(entity) ? "Success" : "Fail";
    }

    @Override
    public String update(BookDto bookDto) throws Exception {
           BookEntity entity =getBookEntity(bookDto);
         return BookDao.update(entity) ? "Success" : "Fail";
    }

    @Override
    public String delete(String BookCode) throws Exception {
           return BookDao.delete(BookCode) ?  "Success" : "Fail";
    }

    @Override
    public BookDto get(String itemCode) throws Exception {
        BookEntity entity = BookDao.get(itemCode);
        if(entity != null){
            return getBookDto(entity);
        }
        return null;
    }

    @Override
    public ArrayList<BookDto> getAll() throws Exception {
        ArrayList<BookEntity> itemEntitys = BookDao.getAll();
        if(itemEntitys != null && !itemEntitys.isEmpty()){
            ArrayList<BookDto> itemDtos = new ArrayList<>();
            
            for (BookEntity itemEntity : itemEntitys) {
                itemDtos.add(getBookDto(itemEntity));
            }
            
            return itemDtos;
        }
        return null;
    }
    
    
     private BookEntity getBookEntity(BookDto bookDto){
        return  new BookEntity(
                bookDto.getBookCode(), 
                bookDto.getTitle(),
                bookDto.getAuthor(), 
                bookDto.getIsbn(), 
                bookDto.getCategory_id(),
                bookDto.getPublisher(),
                bookDto.getPublished_year(),
                bookDto.getTotal_copies(),
                bookDto.getAvailable_copies() );
                
             
    }
    
    private BookDto getBookDto(BookEntity entity){
        return  new BookDto(
                entity.getBookCode(), 
                entity.getTitle(),
                entity.getAuthor(), 
                entity.getIsbn(), 
                entity.getCategory_id(),
                entity.getPublisher(),
                entity.getPublished_year(),
                entity.getTotal_copies(),
                entity.getAvailable_copies() );
    }
    
}
