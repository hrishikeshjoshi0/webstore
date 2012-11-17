package com.openappengine.model.product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.openappengine.model.common.Image;

/**
 * The persistent class for the prod_product database table.
 * 
 */
@Entity(name="prod_product")
@Inheritance(strategy=InheritanceType.JOINED)
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PD_PRODUCT_ID", unique=true, nullable=false)
	private int pdProductId;

	@Column(name="PD_AMOUNT_UOM_TYPE")
	private String pdAmountUomType;

	@Column(name="PD_COMMENTS", length=255)
	private String pdComments;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PD_CREATED_DATE")
	private Date pdCreatedDate;

	@Column(name="PD_DESCRIPTION", length=255)
	private String pdDescription;

	@Column(name="PD_FIXED_AMOUNT", precision=10, scale=2)
	private BigDecimal pdFixedAmount;

	@Column(name="PD_INTERNAL_NAME", length=255)
	private String pdInternalName;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PD_INTRODUCTION_DATE")
	private Date pdIntroductionDate;

	@Column(name="PD_IS_VIRTUAL")
	private Boolean pdIsVirtual;

	@Column(name="PD_PIECES_INCLUDED", precision=10)
	private BigDecimal pdPiecesIncluded;

	@Column(name="PD_PRODUCT_NAME", length=100)
	private String pdProductName;

	@Column(name="PD_QUANTITY_INCLUDED", precision=10, scale=6)
	private BigDecimal pdQuantityIncluded;

	@Column(name="PD_QUANTITY_UOM")
	private String pdQuantityUom;

	@Column(name="PD_REQUIRE_AMOUNT")
	private Boolean pdRequireAmount;

	@Column(name="PD_REQUIRE_INVENTORY")
	private Boolean pdRequireInventory;

	@Column(name="PD_RETURNABLE")
	private Boolean pdReturnable;

	@Column(name="PD_SALES_DISC_WHEN_NOT_AVAIL")
	private Boolean pdSalesDiscWhenNotAvail;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PD_SALES_DISCONTINUATION_DATE")
	private Date pdSalesDiscontinuationDate;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="PD_SUPPORT_DISCONTINUATION_DATE")
	private Date pdSupportDiscontinuationDate;

	@Column(name="PD_TAXABLE")
	private Boolean pdTaxable;

	@Column(name="PD_WEIGHT", precision=10, scale=6)
	private BigDecimal pdWeight;

	@Column(name="PD_WEIGHT_UOM_ID", length=20)
	private String pdWeightUomId;
	
	@Column(name="PD_CAT1", length=20)
	private String cat1;
	
	public String getCat1() {
		return cat1;
	}

	public void setCat1(String cat1) {
		this.cat1 = cat1;
	}

	public String getCat2() {
		return cat2;
	}

	public void setCat2(String cat2) {
		this.cat2 = cat2;
	}

	public String getCat3() {
		return cat3;
	}

	public void setCat3(String cat3) {
		this.cat3 = cat3;
	}

	@Column(name="PD_CAT2", length=20)
	private String cat2;
	
	@Column(name="PD_CAT3", length=20)
	private String cat3;

	//bi-directional many-to-one association to ProdProductPrice
	@OneToMany(mappedBy="prodProduct",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ProdProductPrice> prodProductPrices;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_SMALL_IMAGE_ID")
    private Image smallImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_MEDIUM_IMAGE_ID")
    private Image mediumImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_LARGE_IMAGE_ID")
    private Image largeImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_DETAIL_IMAGE_ID")
    private Image detailImage;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_PRODUCT_TYPE_ID")
    private ProductType productType;
	
	@ManyToOne(cascade={CascadeType.ALL},fetch=FetchType.LAZY)
    @JoinColumn(name="PD_PRODUCT_CATEGORY_ID")
    private ProductCategory productCategory;
	
	//bi-directional many-to-one association to ProdProductPrice
	@OneToMany(mappedBy="product",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ProductAttribute> productAttributes;
	
	//bi-directional many-to-one association to ProdProductPrice
	@OneToMany(mappedBy="product",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	private List<ProductReview> productReviews;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PD_CALCULATED_INFO_ID")
    private ProductCalculatedInfo calculatedInfo;
	
	@Column(name="PD_PRODUCT_CATEGORY",nullable=false)
	private String pdProductCategory;
	
    public Product() {
    }

	public int getPdProductId() {
		return this.pdProductId;
	}

	public void setPdProductId(int pdProductId) {
		this.pdProductId = pdProductId;
	}

	public String getPdAmountUomType() {
		return this.pdAmountUomType;
	}

	public void setPdAmountUomType(String pdAmountUomType) {
		this.pdAmountUomType = pdAmountUomType;
	}

	public String getPdComments() {
		return this.pdComments;
	}

	public void setPdComments(String pdComments) {
		this.pdComments = pdComments;
	}

	public Date getPdCreatedDate() {
		return this.pdCreatedDate;
	}

	public void setPdCreatedDate(Date pdCreatedDate) {
		this.pdCreatedDate = pdCreatedDate;
	}

	public String getPdDescription() {
		return this.pdDescription;
	}

	public void setPdDescription(String pdDescription) {
		this.pdDescription = pdDescription;
	}

	public BigDecimal getPdFixedAmount() {
		return this.pdFixedAmount;
	}

	public void setPdFixedAmount(BigDecimal pdFixedAmount) {
		this.pdFixedAmount = pdFixedAmount;
	}

	public String getPdInternalName() {
		return this.pdInternalName;
	}

	public void setPdInternalName(String pdInternalName) {
		this.pdInternalName = pdInternalName;
	}

	public Date getPdIntroductionDate() {
		return this.pdIntroductionDate;
	}

	public void setPdIntroductionDate(Date pdIntroductionDate) {
		this.pdIntroductionDate = pdIntroductionDate;
	}

	public Boolean getPdIsVirtual() {
		return this.pdIsVirtual;
	}

	public void setPdIsVirtual(Boolean pdIsVirtual) {
		this.pdIsVirtual = pdIsVirtual;
	}

	public BigDecimal getPdPiecesIncluded() {
		return this.pdPiecesIncluded;
	}

	public void setPdPiecesIncluded(BigDecimal pdPiecesIncluded) {
		this.pdPiecesIncluded = pdPiecesIncluded;
	}

	public String getPdProductName() {
		return this.pdProductName;
	}

	public void setPdProductName(String pdProductName) {
		this.pdProductName = pdProductName;
	}

	public BigDecimal getPdQuantityIncluded() {
		return this.pdQuantityIncluded;
	}

	public void setPdQuantityIncluded(BigDecimal pdQuantityIncluded) {
		this.pdQuantityIncluded = pdQuantityIncluded;
	}

	public String getPdQuantityUom() {
		return this.pdQuantityUom;
	}

	public void setPdQuantityUom(String pdQuantityUom) {
		this.pdQuantityUom = pdQuantityUom;
	}

	public Boolean getPdRequireAmount() {
		return this.pdRequireAmount;
	}

	public void setPdRequireAmount(Boolean pdRequireAmount) {
		this.pdRequireAmount = pdRequireAmount;
	}

	public Boolean getPdRequireInventory() {
		return this.pdRequireInventory;
	}

	public void setPdRequireInventory(Boolean pdRequireInventory) {
		this.pdRequireInventory = pdRequireInventory;
	}

	public Boolean getPdReturnable() {
		return this.pdReturnable;
	}

	public void setPdReturnable(Boolean pdReturnable) {
		this.pdReturnable = pdReturnable;
	}

	public Boolean getPdSalesDiscWhenNotAvail() {
		return this.pdSalesDiscWhenNotAvail;
	}

	public void setPdSalesDiscWhenNotAvail(Boolean pdSalesDiscWhenNotAvail) {
		this.pdSalesDiscWhenNotAvail = pdSalesDiscWhenNotAvail;
	}

	public Date getPdSalesDiscontinuationDate() {
		return this.pdSalesDiscontinuationDate;
	}

	public void setPdSalesDiscontinuationDate(Date pdSalesDiscontinuationDate) {
		this.pdSalesDiscontinuationDate = pdSalesDiscontinuationDate;
	}

	public Date getPdSupportDiscontinuationDate() {
		return this.pdSupportDiscontinuationDate;
	}

	public void setPdSupportDiscontinuationDate(Date pdSupportDiscontinuationDate) {
		this.pdSupportDiscontinuationDate = pdSupportDiscontinuationDate;
	}

	public Boolean getPdTaxable() {
		return this.pdTaxable;
	}

	public void setPdTaxable(Boolean pdTaxable) {
		this.pdTaxable = pdTaxable;
	}

	public BigDecimal getPdWeight() {
		return this.pdWeight;
	}

	public void setPdWeight(BigDecimal pdWeight) {
		this.pdWeight = pdWeight;
	}

	public String getPdWeightUomId() {
		return this.pdWeightUomId;
	}

	public void setPdWeightUomId(String pdWeightUomId) {
		this.pdWeightUomId = pdWeightUomId;
	}

	public List<ProdProductPrice> getProdProductPrices() {
		return this.prodProductPrices;
	}

	public void setProdProductPrices(List<ProdProductPrice> prodProductPrices) {
		this.prodProductPrices = prodProductPrices;
	}

	public Image getSmallImage() {
		return smallImage;
	}

	public void setSmallImage(Image smallImage) {
		this.smallImage = smallImage;
	}

	public Image getMediumImage() {
		return mediumImage;
	}

	public void setMediumImage(Image mediumImage) {
		this.mediumImage = mediumImage;
	}

	public Image getLargeImage() {
		return largeImage;
	}

	public void setLargeImage(Image largeImage) {
		this.largeImage = largeImage;
	}

	public Image getDetailImage() {
		return detailImage;
	}

	public void setDetailImage(Image detailImage) {
		this.detailImage = detailImage;
	}

	public BigDecimal getProductPrice(Date date) {
		if(prodProductPrices != null && !prodProductPrices.isEmpty()) {
			for (ProdProductPrice prodPrice : prodProductPrices) {
				if ((date.after(prodPrice.getPpFromDate()) || date.equals(prodPrice.getPpFromDate()))
						&& (date.before(prodPrice.getPpToDate()) || date.equals(prodPrice.getPpToDate()))) {
					return prodPrice.getPpPrice();
				}
			}
		}
		return null;
	}

	public ProductCategory getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public ProductType getProductType() {
		return productType;
	}

	public void setProductType(ProductType productType) {
		this.productType = productType;
	}

	public List<ProductAttribute> getProductAttributes() {
		return productAttributes;
	}

	public void setProductAttributes(List<ProductAttribute> productAttributes) {
		this.productAttributes = productAttributes;
	}

	public List<ProductReview> getProductReviews() {
		return productReviews;
	}

	public void setProductReviews(List<ProductReview> productReviews) {
		this.productReviews = productReviews;
	}

	public ProductCalculatedInfo getCalculatedInfo() {
		return calculatedInfo;
	}

	public void setCalculatedInfo(ProductCalculatedInfo calculatedInfo) {
		this.calculatedInfo = calculatedInfo;
	}

	public String getPdProductCategory() {
		return pdProductCategory;
	}

	public void setPdProductCategory(String pdProductCategory) {
		this.pdProductCategory = pdProductCategory;
	}
	
}