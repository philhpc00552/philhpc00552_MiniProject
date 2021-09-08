package r2s.store.services;

import com.fasterxml.jackson.databind.JsonNode;

import r2s.store.entity.Order;

public interface OrderService {

	Order create(JsonNode order);

	Object findByUsername(String username);

	Object findById(Long id);
}
