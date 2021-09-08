package r2s.store.services;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;

import r2s.store.entity.Account;

public interface AccountService {
	public Account finById(String username);

	public List<Account> getAdministrators();

	public List<Account> findAll();

//	public Account create(JsonNode accountData);s

	public Account findById(String id);

	public Account update(Account acc);

	public void delete(String id);

	public Account add(Account accountData);
}
