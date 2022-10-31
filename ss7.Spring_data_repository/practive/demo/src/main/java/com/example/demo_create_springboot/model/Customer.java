package com.example.demo_create_springboot.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
//tao constructor co tat ca cac thuoc tinh
@AllArgsConstructor
//constructor ko tham so
@NoArgsConstructor
@Getter
@Setter
public class Customer {
    @Id
    Integer id;

    String name;

}
