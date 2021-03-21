package com.emusicstore.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;

@Entity
public class Product implements Serializable {

    private static final long serialVersionUID = -3364055533644297135L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int productId;

    @Column(name="pro_name")
    @NotEmpty(message = "The product name must not be null.")
    private String productName;

    @Column(name="pro_category")
    private String productCategory;

    @Column(name="pro_des")
    private String productDescription;

    @Column(name="pro_price")
    @Min(value = 0, message = "The product price must no be less then zero")
    private double prince;

    @Column(name="pro_con")
    private String productCondition;

    @Column(name="pro_status")
    private String productStatus;

    @Column(name="pro_stock")
    @Min(value = 0, message = "The product price must no be less then zero")
    private int unitInStock;

    @Column(name="pro_manuf")
    private String productManufacturer;

    public MultipartFile getPro_img() {
        return pro_img;
    }

    public void setPro_img(MultipartFile pro_img) {
        this.pro_img = pro_img;
    }

    @Transient
    private MultipartFile pro_img;

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItemList;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public double getPrince() {
        return prince;
    }

    public void setPrince(double prince) {
        this.prince = prince;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

}
