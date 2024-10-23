/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.dto;

/**
 *
 * @author jayas
 */
public class BookTransDto {
    private String BookCode;
    private String MemberId;

    public BookTransDto(String BookCode, String MemberId) {
        this.BookCode = BookCode;
        this.MemberId = MemberId;
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
     * @return the MemberId
     */
    public String getMemberId() {
        return MemberId;
    }

    /**
     * @param MemberId the MemberId to set
     */
    public void setMemberId(String MemberId) {
        this.MemberId = MemberId;
    }
    
 
}
