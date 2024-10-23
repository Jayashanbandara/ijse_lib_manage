/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.dao.custom.impl;
import edu.ijse.dao.CrudUtil;
import edu.ijse.dao.custom.MemberDao;
import edu.ijse.entity.MemberEntity;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author jayas
 */
public class MemberDaoimpl implements MemberDao {

    @Override
    public boolean create(MemberEntity t) throws Exception {
        return false;
    }

    @Override
    public boolean update(MemberEntity t) throws Exception {
        return false;
    }
    @Override
    public boolean delete(String id) throws Exception {
        return false;
    }

    @Override
    public MemberEntity get(String id) throws Exception {
        ResultSet rst = CrudUtil.executeQuery("SELECT * FROM members WHERE member_id  = ?", id);
        if(rst.next()){
            MemberEntity memberEntity = new MemberEntity(
                    
                    rst.getString("member_id "), 
                    rst.getString("name "), 
                    rst.getString("address "), 
                    rst.getString("contact_number "), 
                    rst.getDouble("membership_start_date "),
                    rst.getString("membership_expiry_date "));
                    
            
            return memberEntity;
        }
        return null;
    }

    @Override
    public ArrayList<MemberEntity> getAll() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
