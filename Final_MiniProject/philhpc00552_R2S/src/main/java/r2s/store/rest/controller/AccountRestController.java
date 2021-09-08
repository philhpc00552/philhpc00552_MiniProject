package r2s.store.rest.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.JsonNode;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import lombok.RequiredArgsConstructor;
import r2s.store.entity.Account;
import r2s.store.entity.Product;
import r2s.store.services.AccountService;

@CrossOrigin("*")
@RestController
@RequestMapping("/rest/accounts")
@Api(value = "Account APIs")
@RequiredArgsConstructor
public class AccountRestController {

	@Autowired
	AccountService acService;
	
	@ApiOperation(value = "Find All Account", response = Account.class)
	@ApiResponses (value = {
			@ApiResponse(code = 200, message = "Success"),
			@ApiResponse(code = 401, message = "Unauthorizes"),
			@ApiResponse(code = 403, message = "Forbident"),
			@ApiResponse(code = 404, message = "Not Fount")
	})
	@GetMapping()
	public List<Account> getAll() {
		return acService.findAll();
	}

	@GetMapping("{id}")
	public Account getOne(@PathVariable("id") String id) {
		return acService.findById(id);
	}	
	
//	@PostMapping
//	public Account create(@RequestBody JsonNode AccountData){//dang ki
//		return acService.create(AccountData);
//	}
	
	@PostMapping
	public Account add(@RequestBody Account AccountData){ // khoi tao
		return acService.add(AccountData);
	}
	
	@PutMapping("{id}")
	public Account update(@PathVariable("id") String id ,@RequestBody Account acc) {
		return acService.update(acc);
	}
	
	@DeleteMapping("{id}")
	public void delete(@PathVariable("id") String id) {
		acService.delete(id);
	}
}
