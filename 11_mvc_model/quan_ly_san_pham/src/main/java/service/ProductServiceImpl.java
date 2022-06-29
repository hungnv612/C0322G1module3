package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> productMap = new HashMap<>();


    static {
        productMap.put(1, new Product(1, "iPhone 11", 100000, "bản 256g", "apple"));
        productMap.put(2, new Product(2, "iPhone 12", 100000, "bản 256g", "apple"));
        productMap.put(3, new Product(3, "iPhone 13", 100000, "bản 256g", "apple"));
        productMap.put(4, new Product(4, "iPhone 14", 100000, "bản 256g", "apple"));
        productMap.put(5, new Product(5, "iPhone 15", 100000, "bản 256g", "apple"));
        productMap.put(6, new Product(6, "iPhone 16", 100000, "bản 256g", "apple"));

    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item : findAll()) {
            if (item.getName().contains(name)) {
                searchList.add(item);
            }
        }
        return searchList;
    }
}
