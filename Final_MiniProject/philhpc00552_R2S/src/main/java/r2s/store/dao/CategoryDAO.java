package r2s.store.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import r2s.store.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String>{

}
