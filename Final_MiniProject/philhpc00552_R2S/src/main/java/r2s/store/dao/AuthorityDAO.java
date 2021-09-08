package r2s.store.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import r2s.store.entity.Account;
import r2s.store.entity.Authority;

@Repository
public interface AuthorityDAO extends JpaRepository<Authority, Integer>{

	@Query("select distinct a from Authority a where a.account IN ?1")
	List<Authority> authoritiesOf(List<Account> accounts);

}
