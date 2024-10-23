/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.ijse.service.custom;

import edu.ijse.dto.BookTransDto;
import edu.ijse.service.SuperService;

/**
 *
 * @author jayas
 */
public interface BookTransService extends SuperService {
     public String Borrow(BookTransDto bookTransDto) throws Exception;
}
