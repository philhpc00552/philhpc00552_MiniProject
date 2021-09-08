package r2s.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import r2s.store.dao.AuthorityDAO;
import r2s.store.entity.Authority;
import r2s.store.services.AuthorityServive;

@Service
public class AuthorityServiceImpl implements AuthorityServive{
	
	@Autowired
	AuthorityDAO dao;	

	@Override
	public List<Authority> findAll() {
		return dao.findAll();
	}

	@Override
	public Authority create(Authority auth) {
		return dao.save(auth);
	}

	@Override
	public void delete(Integer id) {
		dao.deleteById(id);
		
	}

}
