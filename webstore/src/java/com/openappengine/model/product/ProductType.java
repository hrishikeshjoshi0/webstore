package com.openappengine.model.product;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Entity
@Table(name="prod_product_type")
public class ProductType implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PT_PRODUCT_TYPE_ID", unique=true, nullable=false)
	private int productTypeId;

	@Column(name="PT_PRODUCT_TYPE_NAME", length=255)
	private String productTypeName;

	@Column(name="PT_PRODUCT_TYPE_DESCRIPTION", length=255)
	private String productTypeDescription;

	@Temporal( TemporalType.TIMESTAMP)
	@Column(name="PT_FROM_DATE")
	private Date fromDate;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PT_TO_DATE")
	private Date toDate;

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="PT_PRODUCT_PARENT_TYPE_ID")
    private ProductType parentType;
 
    @OneToMany(mappedBy="parentType")
    private Set<ProductType> childTypes = new HashSet<ProductType>();
    
    @OneToMany(mappedBy="productType",cascade=CascadeType.ALL)
    private List<Product> products;

    public ProductType() {
    }

	public int getProductTypeId() {
		return productTypeId;
	}

	public void setProductTypeId(int productTypeId) {
		this.productTypeId = productTypeId;
	}

	public String getProductTypeName() {
		return productTypeName;
	}

	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}

	public String getProductTypeDescription() {
		return productTypeDescription;
	}

	public void setProductTypeDescription(String productTypeDescription) {
		this.productTypeDescription = productTypeDescription;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public ProductType getParentType() {
		return parentType;
	}

	public void setParentType(ProductType parentType) {
		this.parentType = parentType;
	}

	public Set<ProductType> getChildTypes() {
		return childTypes;
	}

	public void setChildTypes(Set<ProductType> childTypes) {
		this.childTypes = childTypes;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
}