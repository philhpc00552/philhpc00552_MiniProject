package r2s.store.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import r2s.store.dao.AccountDAO;
import r2s.store.entity.Account;
import r2s.store.entity.Order;
import r2s.store.entity.OrderDetail;
import r2s.store.services.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountDAO dao;

	@Override
	public Account finById(String username) {
		return dao.findById(username).get();
	}

	@Override
	public List<Account> getAdministrators() {
		return dao.getAdministrators();
	}

	@Override
	public List<Account> findAll() {
		return dao.findAll();
	}

//	@Override
//	public Account create(JsonNode accountData) {
//		ObjectMapper mapper = new ObjectMapper();		
//		Account account = mapper.convertValue(accountData, Account.class);
//		return dao.save(account);
//	}
	
	@Override
	public Account add(Account accountData) {		
			return dao.save(accountData);
	}

	@Override
	public Account findById(String id) {
		return dao.findById(id).get();
	}
	
	@Override
	public void delete(String id) {
		dao.deleteById(id);
	}

	@Override
	public Account update(Account acc) {
		return dao.save(acc);
	}


}
