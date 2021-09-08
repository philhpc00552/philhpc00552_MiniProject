package r2s.store.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import r2s.store.entity.Role;

@Repository
public interface RoleDAO extends JpaRepository<Role, String>{

}
