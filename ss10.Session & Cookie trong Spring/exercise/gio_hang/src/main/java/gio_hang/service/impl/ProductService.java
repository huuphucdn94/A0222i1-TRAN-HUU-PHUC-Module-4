package gio_hang.service.impl;

import gio_hang.entity.Product;
import gio_hang.repository.IProductRepository;
import gio_hang.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ProductService implements IProductService {
    @Autowired
    IProductRepository iProductRepository;

    @Override
    public Iterable<Product> findAll() {
        return iProductRepository.findAll();
    }

    @Override
    public Product findById(Long id) {
        Optional<Product> product = iProductRepository.findById(id);
        if (product.isPresent()) return product.get();
//        throw new Exception("Not Found any produce with id" + id);
    }
}
