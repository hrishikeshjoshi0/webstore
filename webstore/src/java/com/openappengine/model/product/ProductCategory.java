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
@Table(name="prod_product_category")
public class ProductCategory implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PC_PRODUCT_CATEGORY_ID", unique=true, nullable=false)
	private int productCategoryId;

	@Column(name="PC_PRODUCT_CATEGORY_NAME", length=255)
	private String productCategoryName;

	@Column(name="PC_PRODUCT_CATEGORY_DESCRIPTION", length=255)
	private String productCategoryDescription;

	@Temporal( TemporalType.TIMESTAMP)
	@Column(name="PC_FROM_DATE")
	private Date fromDate;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PC_TO_DATE")
	private Date toDate;
    
    @ManyToOne
    @JoinColumn(name="PC_CATEGORY_IMAGE_ID")
    private Image categoryImage; 

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="PC_PRODUCT_PARENT_CATEGORY_ID")
    private ProductCategory parentCategory;
 
    @OneToMany(mappedBy="parentCategory")
    private Set<ProductCategory> childCategories = new HashSet<ProductCategory>();

    public ProductCategory() {
    }

	public int getProductCategoryId() {
		return productCategoryId;
	}

	public void setProductCategoryId(int productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public String getProductCategoryName() {
		return productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}

	public String getProductCategoryDescription() {
		return productCategoryDescription;
	}

	public void setProductCategoryDescription(String productCategoryDescription) {
		this.productCategoryDescription = productCategoryDescription;
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

	public ProductCategory getParentCategory() {
		return parentCategory;
	}

	public void setParentCategory(ProductCategory parentCategory) {
		this.parentCategory = parentCategory;
	}

	public Set<ProductCategory> getChildCategories() {
		return childCategories;
	}

	public void setChildCategories(Set<ProductCategory> childCategories) {
		this.childCategories = childCategories;
	}

	public Image getCategoryImage() {
		return categoryImage;
	}

	public void setCategoryImage(Image categoryImage) {
		this.categoryImage = categoryImage;
	}
	
}