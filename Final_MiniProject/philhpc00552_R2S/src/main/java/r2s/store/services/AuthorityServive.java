package r2s.store.services;

import java.util.List;

import r2s.store.entity.Authority;

public interface AuthorityServive {

	List<Authority> findAll();

	Authority create(Authority auth);

	void delete(Integer id);

}
