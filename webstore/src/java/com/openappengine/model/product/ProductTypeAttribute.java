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
@Table(name="prod_product_type_attribute")
public class ProductTypeAttribute implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PTA_ATTRIBUTE_ID", unique=true, nullable=false)
	private int productTypeAttributeId;

	@Column(name="PTA_ATTRIBUTE_NAME", length=255,nullable=false)
	private String productTypeAttributeName;

	@Column(name="PTA_ATTRIBUTE_TYPE", length=255)
	private String productTypeAttributeType;

	@Temporal( TemporalType.DATE)
	@Column(name="PTA_FROM_DATE")
	private Date fromDate;

    @Temporal( TemporalType.DATE)
	@Column(name="PTA_TO_DATE")
	private Date toDate;
    
    //bi-directional many-to-one association to ProdProduct
    @ManyToOne
	@JoinColumn(name="PTA_PRODUCT_TYPE_ID", nullable=false)
    private ProductType productType; 

    public ProductTypeAttribute() {
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

	public int getProductTypeAttributeId() {
		return productTypeAttributeId;
	}

	public void setProductTypeAttributeId(int productTypeAttributeId) {
		this.productTypeAttributeId = productTypeAttributeId;
	}

	public String getProductTypeAttributeName() {
		return productTypeAttributeName;
	}

	public void setProductTypeAttributeName(String productTypeAttributeName) {
		this.productTypeAttributeName = productTypeAttributeName;
	}

	public String getProductTypeAttributeType() {
		return productTypeAttributeType;
	}

	public void setProductTypeAttributeType(String productTypeAttributeType) {
		this.productTypeAttributeType = productTypeAttributeType;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}
	
}