package r2s.store.services;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import r2s.store.entity.Product;

public interface ProductService {

	Page<Product> findAll(Pageable pageable);
	Product findById(Integer id);
	Page<Product> findByCategoryId(String cid, Pageable pageable);
	List<Product> findAll();
	Product create(Product product);
	Product update(Product product);
	void delete(Integer id);
	List<Product> findByNameContaining(String keyword, Pageable pageable);

}
