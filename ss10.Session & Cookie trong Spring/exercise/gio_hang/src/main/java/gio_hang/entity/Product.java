package gio_hang.entity;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@Entity
@Table(name = 'product')
public class Product {
    @Id
    @Column(name = 'product_id')
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    @Column(name = 'name')
    private String name;

    @Column(name = 'status')
    private String status;

    @Column(name = 'product_expiryDate')
    private Date expiryDate;

    @Column(name = 'product_price')
    private double price;

    public Product() {
    }

    public Product(Integer id, @NotBlank String name, String status, Date expiryDate, double price) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.expiryDate = expiryDate;
        this.price = price;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }

    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
