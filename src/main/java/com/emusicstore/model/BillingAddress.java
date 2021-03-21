package com.emusicstore.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class BillingAddress implements Serializable{

    private static final long serialVersionUID = -6091579459463730482L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int billingAddressId;
    private String number;
    private String streetName;
    private String district;
    private String ward;
    private String country;
    private String city;

    @OneToOne
    private Customer customer;

    public int getBillingAddressId() {
        return billingAddressId;
    }

    public void setBillingAddressId(int billingAddressId) {
        this.billingAddressId = billingAddressId;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "BillingAddress{" +
                "billingAddressId=" + billingAddressId +
                ", number='" + number + '\'' +
                ", streetName='" + streetName + '\'' +
                ", district='" + district + '\'' +
                ", ward='" + ward + '\'' +
                ", country='" + country + '\'' +
                ", city='" + city + '\'' +
                ", customer=" + customer +
                '}';
    }
}
