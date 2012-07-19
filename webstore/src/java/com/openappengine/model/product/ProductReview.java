package com.openappengine.model.product;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the prod_product_category database table.
 * 
 */
@Entity
@Table(name="prod_product_review")
public class ProductReview implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="PR_PRODUCT_REVIEW_ID", unique=true, nullable=false)
	private int productReviewId;

	@Column(name="PR_USER_LOGIN_ID", length=255)
	private String userLoginId;
	
	@Column(name="PR_NICK_NAME", length=255)
	private String nickname;
	
	@Column(name="PR_IS_POSTED_ANONYMOUS")
	private Boolean postedAnonymous;

	@Column(name="PR_STATUS", length=255)
	private String status;
	
	@Column(name="PR_POSTED_DATE")
	@Temporal(TemporalType.TIMESTAMP)
	private Date postedDate;
	
	@Column(name="PR_PRODUCT_REVIEW")
	@Lob
	private String review;
	
	@Column(name="PR_QUALIY_WORKMANSHIP_RATING")
	private BigDecimal qualityAndWorkmanshipRating;
	
	@Column(name="PR_PRODUCT_SATISFACTION_RATING")
	private BigDecimal productSatisfactionRating;
	
	@Column(name="PR_WOW_FACTOR_RATING")
	private BigDecimal wowFactorRating;
	
	@Column(name="PR_OVERALL_RATING")
	private BigDecimal overallRating;
	
	 //bi-directional many-to-one association to ProdProduct
    @ManyToOne
	@JoinColumn(name="PR_PRODUCT_ID", nullable=false)
    private Product product; 

    public ProductReview() {
    }

	public int getProductReviewId() {
		return productReviewId;
	}

	public void setProductReviewId(int productReviewId) {
		this.productReviewId = productReviewId;
	}

	public String getUserLoginId() {
		return userLoginId;
	}

	public void setUserLoginId(String userLoginId) {
		this.userLoginId = userLoginId;
	}

	public Boolean getPostedAnonymous() {
		return postedAnonymous;
	}

	public void setPostedAnonymous(Boolean postedAnonymous) {
		this.postedAnonymous = postedAnonymous;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public BigDecimal getQualityAndWorkmanshipRating() {
		return qualityAndWorkmanshipRating;
	}

	public void setQualityAndWorkmanshipRating(
			BigDecimal qualityAndWorkmanshipRating) {
		this.qualityAndWorkmanshipRating = qualityAndWorkmanshipRating;
	}

	public BigDecimal getProductSatisfactionRating() {
		return productSatisfactionRating;
	}

	public void setProductSatisfactionRating(BigDecimal productSatisfactionRating) {
		this.productSatisfactionRating = productSatisfactionRating;
	}

	public BigDecimal getWowFactorRating() {
		return wowFactorRating;
	}

	public void setWowFactorRating(BigDecimal wowFactorRating) {
		this.wowFactorRating = wowFactorRating;
	}

	public BigDecimal getOverallRating() {
		return overallRating;
	}

	public void setOverallRating(BigDecimal overallRating) {
		this.overallRating = overallRating;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}