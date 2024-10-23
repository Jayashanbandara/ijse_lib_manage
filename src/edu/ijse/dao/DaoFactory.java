/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.dao;

import edu.ijse.dao.custom.impl.OrderDaoImpl;
import edu.ijse.dao.custom.impl.OrderDetailDaoImpl;
import edu.ijse.dao.custom.impl.BookDaoimpl;


/**
 *
 * @author anjan
 */
public class DaoFactory {

    private static DaoFactory daoFactory;

    private DaoFactory() {
    }

    public static DaoFactory getInstance() {
        if (daoFactory == null) {
            daoFactory = new DaoFactory();
        }
        return daoFactory;
    }

    public SuperDao getDao(DaoTypes type) {
        switch (type) {
            case ORDER:
                return new OrderDaoImpl();
            case ORDER_DETAIL:
                return new OrderDetailDaoImpl();
            case BOOK:
                return new BookDaoimpl();
            case MEMBER:
                return new BookDaoimpl();
                
                
            default:
                return null;
        }
    }

    public enum DaoTypes {
       ORDER, ORDER_DETAIL,BOOK,MEMBER;
    }
}
