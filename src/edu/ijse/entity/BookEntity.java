/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.entity;

/**
 *
 * @author jayas
 */
public class BookEntity {
    
    private String BookCode;
    private String title;
    private String author;
    private String isbn;
    private Integer category_id;
    private String publisher;
    private Integer published_year;
    private Integer total_copies;
    private Integer available_copies;

    public BookEntity(String BookCode, String title, String author, String isbn, Integer category_id, String publisher, Integer published_year, Integer total_copies, Integer available_copies) {
        this.BookCode = BookCode;
        this.title = title;
        this.author = author;
        this.isbn = isbn;
        this.category_id = category_id;
        this.publisher = publisher;
        this.published_year = published_year;
        this.total_copies = total_copies;
        this.available_copies = available_copies;
    }

    /**
     * @return the BookCode
     */
    public String getBookCode() {
        return BookCode;
    }

    /**
     * @param BookCode the BookCode to set
     */
    public void setBookCode(String BookCode) {
        this.BookCode = BookCode;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * @return the isbn
     */
    public String getIsbn() {
        return isbn;
    }

    /**
     * @param isbn the isbn to set
     */
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    /**
     * @return the category_id
     */
    public Integer getCategory_id() {
        return category_id;
    }

    /**
     * @param category_id the category_id to set
     */
    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    /**
     * @return the publisher
     */
    public String getPublisher() {
        return publisher;
    }

    /**
     * @param publisher the publisher to set
     */
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    /**
     * @return the published_year
     */
    public Integer getPublished_year() {
        return published_year;
    }

    /**
     * @param published_year the published_year to set
     */
    public void setPublished_year(Integer published_year) {
        this.published_year = published_year;
    }

    /**
     * @return the total_copies
     */
    public Integer getTotal_copies() {
        return total_copies;
    }

    /**
     * @param total_copies the total_copies to set
     */
    public void setTotal_copies(Integer total_copies) {
        this.total_copies = total_copies;
    }

    /**
     * @return the available_copies
     */
    public Integer getAvailable_copies() {
        return available_copies;
    }

    /**
     * @param available_copies the available_copies to set
     */
    public void setAvailable_copies(Integer available_copies) {
        this.available_copies = available_copies;
    }

    @Override
    public String toString() {
        return "BookEntity{" + "BookCode=" + BookCode + ", title=" + title + ", author=" + author + ", isbn=" + isbn + ", category_id=" + category_id + ", publisher=" + publisher + ", published_year=" + published_year + ", total_copies=" + total_copies + ", available_copies=" + available_copies + '}';
    }

   
    
}
