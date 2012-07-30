package com.openappengine.model.product;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.AssociationOverride;
import javax.persistence.AssociationOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Entity
@Table(name = "prod_category_type")
@AssociationOverrides({
		@AssociationOverride(name = "pk.type", 
			joinColumns = @JoinColumn(name = "PCT_PRODUCT_TYPE_ID")),
		@AssociationOverride(name = "pk.category", 
			joinColumns = @JoinColumn(name = "PCT_PRODUCT_CATEGORY_ID")) })
public class ProductCategoryType implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ProductCategoryTypeId pk = new ProductCategoryTypeId();

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATED_BY", nullable = false, length = 10)
	private Date createdDate;

	public ProductCategoryTypeId getPk() {
		return pk;
	}

	public void setPk(ProductCategoryTypeId pk) {
		this.pk = pk;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	
}