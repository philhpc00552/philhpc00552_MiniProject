package r2s.store.services;

import java.util.List;

import r2s.store.entity.Category;

public interface CategoryService {

	List<Category> findAll();

	Category findById(String id);

	Category create(Category category);

	Category update(Category category);

	void delete(String id);

}
