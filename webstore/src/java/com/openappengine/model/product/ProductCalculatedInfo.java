package com.openappengine.model.product;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Entity
@Table(name="prod_product_calculated_info")
public class ProductCalculatedInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PC_PRODUCT_CALCULATED_INFO_ID", unique=true, nullable=false)
	private int productCalculatedInfoId;
	
	@Column(name="PC_AVERAGE_CUSTOMER_RATING")
	private BigDecimal averageCustomerRating;
	
	@Column(name="PC_AVERAGE_QUALITY_RATING")
	private BigDecimal averageQualityAndWorkmanshipRating;
	
	@Column(name="PC_AVERAGE_PRODUCT_SATISFACTION_RATING")
	private BigDecimal averageProductSatisfactionRating;
	
	@Column(name="PC_AVERAGE_WOW_FACTOR_RATING")
	private BigDecimal averageWowFactorRating;

	@Column(name="PC_TIMES_VIEWED")
	private Integer timesViewed = new Integer(0);
	
	@Column(name="PC_ORDERED_QUANTITY")
	private BigDecimal orderedQuantity = new BigDecimal("0.0");
	
    public ProductCalculatedInfo() {
    }

	public int getProductCalculatedInfoId() {
		return productCalculatedInfoId;
	}

	public void setProductCalculatedInfoId(int productCalculatedInfoId) {
		this.productCalculatedInfoId = productCalculatedInfoId;
	}

	public BigDecimal getAverageCustomerRating() {
		return averageCustomerRating;
	}

	public void setAverageCustomerRating(BigDecimal averageCustomerRating) {
		this.averageCustomerRating = averageCustomerRating;
	}

	public Integer getTimesViewed() {
		return timesViewed;
	}

	public void setTimesViewed(Integer timesViewed) {
		this.timesViewed = timesViewed;
	}

	public BigDecimal getOrderedQuantity() {
		return orderedQuantity;
	}

	public void setOrderedQuantity(BigDecimal orderedQuantity) {
		this.orderedQuantity = orderedQuantity;
	}

	public BigDecimal getAverageQualityAndWorkmanshipRating() {
		return averageQualityAndWorkmanshipRating;
	}

	public void setAverageQualityAndWorkmanshipRating(
			BigDecimal averageQualityAndWorkmanshipRating) {
		this.averageQualityAndWorkmanshipRating = averageQualityAndWorkmanshipRating;
	}

	public BigDecimal getAverageProductSatisfactionRating() {
		return averageProductSatisfactionRating;
	}

	public void setAverageProductSatisfactionRating(
			BigDecimal averageProductSatisfactionRating) {
		this.averageProductSatisfactionRating = averageProductSatisfactionRating;
	}

	public BigDecimal getAverageWowFactorRating() {
		return averageWowFactorRating;
	}

	public void setAverageWowFactorRating(BigDecimal averageWowFactorRating) {
		this.averageWowFactorRating = averageWowFactorRating;
	}
	
}