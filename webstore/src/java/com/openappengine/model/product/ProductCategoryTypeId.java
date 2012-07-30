package com.openappengine.model.product;

import java.io.Serializable;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Embeddable
public class ProductCategoryTypeId implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@ManyToOne
	private ProductCategory category;
	
	@ManyToOne
	private ProductType type;

	public ProductCategory getCategory() {
		return category;
	}

	public void setCategory(ProductCategory category) {
		this.category = category;
	}

	public ProductType getType() {
		return type;
	}

	public void setType(ProductType type) {
		this.type = type;
	}
	
}