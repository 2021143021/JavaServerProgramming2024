package producteg1;

import java.util.Map;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

public class ProductService {
	
	Map<String, Producte> products = new HashMap<>();
	
	public ProductService() {
		Producte p = new Producte("101","딥너링", "신구문화사", 2000, "2024.4.29");
		products.put("101",p);
		p = new Producte("102", "텐서플로", "ai출판사", 3000, "2023.4.29");
		products.put("102", p);
		p = new Producte("103", "빅데이터", "사이언스", 5000, "2022.4.29");
		products.put("103", p);
	}
	
	public List<Producte> findAII() {
		return new ArrayList<>(products.values());

	}
	
	public Producte find(String id) {
		return products.get(id);
		
	}
}