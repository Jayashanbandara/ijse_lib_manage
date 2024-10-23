/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.ijse.entity;

/**
 *
 * @author jayas
 */
public class MemberEntity {
    
    private String memberId;
    private String name;
    private String address;
    private String contact_number;
    private double membership_start_date;
    private String membership_expiry_date;

    public MemberEntity(String memberId, String name, String address, String contact_number, double membership_start_date, String membership_expiry_date) {
        this.memberId = memberId;
        this.name = name;
        this.address = address;
        this.contact_number = contact_number;
        this.membership_start_date = membership_start_date;
        this.membership_expiry_date = membership_expiry_date;
    }

    /**
     * @return the memberId
     */
    public String getMemberId() {
        return memberId;
    }

    /**
     * @param memberId the memberId to set
     */
    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the contact_number
     */
    public String getContact_number() {
        return contact_number;
    }

    /**
     * @param contact_number the contact_number to set
     */
    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    /**
     * @return the membership_start_date
     */
    public double getMembership_start_date() {
        return membership_start_date;
    }

    /**
     * @param membership_start_date the membership_start_date to set
     */
    public void setMembership_start_date(double membership_start_date) {
        this.membership_start_date = membership_start_date;
    }

    /**
     * @return the membership_expiry_date
     */
    public String getMembership_expiry_date() {
        return membership_expiry_date;
    }

    /**
     * @param membership_expiry_date the membership_expiry_date to set
     */
    public void setMembership_expiry_date(String membership_expiry_date) {
        this.membership_expiry_date = membership_expiry_date;
    }

    @Override
    public String toString() {
        return "MemberEntity{" + "memberId=" + memberId + ", name=" + name + ", address=" + address + ", contact_number=" + contact_number + ", membership_start_date=" + membership_start_date + ", membership_expiry_date=" + membership_expiry_date + '}';
    }
    
    
    
    
}
