package com.openappengine.model.product;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
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

import com.openappengine.model.common.Image;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Entity
@Table(name="prod_product_attribute")
public class ProductAttribute implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PA_ATTRIBUTE_ID", unique=true, nullable=false)
	private int productAttributeId;

	@Column(name="PA_ATTRIBUTE_NAME", length=255,nullable=false)
	private String productAttributeName;

	@Column(name="PA_ATTRIBUTE_VALUE", length=255)
	private String productAttributeValue;
	
	@Column(name="PA_ATTRIBUTE_TYPE", length=255)
	private String productAttributeType;

	@Temporal( TemporalType.DATE)
	@Column(name="PA_FROM_DATE")
	private Date fromDate;

    @Temporal( TemporalType.DATE)
	@Column(name="PA_TO_DATE")
	private Date toDate;
    
    //bi-directional many-to-one association to ProdProduct
    @ManyToOne
	@JoinColumn(name="PA_PRODUCT_ID", nullable=false)
    private Product product; 

    public ProductAttribute() {
    }

	public int getProductAttributeId() {
		return productAttributeId;
	}

	public void setProductAttributeId(int productAttributeId) {
		this.productAttributeId = productAttributeId;
	}

	public String getProductAttributeName() {
		return productAttributeName;
	}

	public void setProductAttributeName(String productAttributeName) {
		this.productAttributeName = productAttributeName;
	}

	public String getProductAttributeValue() {
		return productAttributeValue;
	}

	public void setProductAttributeValue(String productAttributeValue) {
		this.productAttributeValue = productAttributeValue;
	}

	public String getProductAttributeType() {
		return productAttributeType;
	}

	public void setProductAttributeType(String productAttributeType) {
		this.productAttributeType = productAttributeType;
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}