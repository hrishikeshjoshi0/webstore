package com.openappengine.model.common;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 * The persistent class for the prod_product_price database table.
 * 
 */
@Entity
@Table(name="c_image")
public class Image implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="C_IMAGE_ID", unique=true, nullable=false)
	private int imageId;
	
	@Column(name="C_IMAGE_URL", length=255)
	private String imageUrl;

    @Temporal( TemporalType.DATE)
	@Column(name="C_FROM_DATE", nullable=false)
	private Date fromDate;

	@Temporal( TemporalType.DATE)
	@Column(name="C_TO_DATE")
	private Date toDate;

    public Image() {
    }

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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
	
}