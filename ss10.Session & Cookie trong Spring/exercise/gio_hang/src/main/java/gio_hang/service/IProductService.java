package gio_hang.service;

import gio_hang.entity.Product;

public interface IProductService {
    Iterable<Product> findAll();
    Product findById(Long id);
}
