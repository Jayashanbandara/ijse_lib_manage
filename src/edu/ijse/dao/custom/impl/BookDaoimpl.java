/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.dao.custom.impl;

import edu.ijse.dao.CrudUtil;
import edu.ijse.dao.custom.BookDao;
import edu.ijse.entity.BookEntity;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author jayashan
 */
public class BookDaoimpl implements BookDao {
    
     @Override
    public boolean create(BookEntity t) throws Exception {
        return CrudUtil.executeUpdate("INSERT INTO Books VALUES(?,?,?,?,?,?,?,?,?)", t.getBookCode(), t.getTitle(), t.getAuthor(), t.getIsbn(), t.getCategory_id(),t.getPublisher(),t.getPublished_year(),t.getTotal_copies(),t.getAvailable_copies());
    }
    

    @Override
    public boolean update(BookEntity t) throws Exception {
        return CrudUtil.executeUpdate("UPDATE Books SET title  = ?, author = ?, isbn = ?, category_id = ?, publisher = ?,published_year=?,total_copies =?,available_copies=? WHERE book_id = ?", 
                       t.getTitle(), t.getAuthor(), t.getIsbn(), t.getCategory_id(),t.getPublisher(),t.getPublished_year(),t.getTotal_copies(),t.getAvailable_copies(), t.getBookCode());
    }

    @Override
    public boolean delete(String id) throws Exception {
        return CrudUtil.executeUpdate("DELETE FROM Books WHERE book_id = ?", id);
    }

    @Override
    public BookEntity get(String id) throws Exception {
        ResultSet rst = CrudUtil.executeQuery("SELECT * FROM Books WHERE book_id = ?", id);
        if(rst.next()){
            BookEntity entity = new BookEntity(rst.getString("book_id"), 
                                      rst.getString("title"), rst.getString("author"), 
                                      rst.getString("isbn"), rst.getInt("category_id"),
                                      rst.getString("publisher"), rst.getInt("published_year"),
                                      rst.getInt("total_copies"), rst.getInt("available_copies"));

            return entity;
        }
        return null;
    }

    @Override
    public ArrayList<BookEntity> getAll() throws Exception {
        ArrayList<BookEntity> itemEntities = new ArrayList<>();
        ResultSet rst = CrudUtil.executeQuery("SELECT * FROM Books");
        while (rst.next()) {            
            BookEntity entity = new BookEntity(rst.getString("book_id"), 
                                      rst.getString("title"), rst.getString("author"), 
                                      rst.getString("isbn"), rst.getInt("category_id"),
                                      rst.getString("publisher"), rst.getInt("published_year"),
                                      rst.getInt("total_copies"), rst.getInt("available_copies"));
            
            itemEntities.add(entity);
            
            
        }
        return itemEntities;
    }
    
}
