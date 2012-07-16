/**
 * 
 */
package com.openappengine.model.product;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * @author hrishi
 * 
 */
@Entity(name="prod_product_diamond")
@PrimaryKeyJoinColumn(name="PD_PRODUCT_ID")
public class ProductDiamond extends Product {
	
	private static final long serialVersionUID = 1L;
	
	@Column(name="PD_SHAPE")
	private String shape;
	
	@Column(name="PD_CARAT",precision=10, scale=6)
	private BigDecimal carat;
	
	@Column(name="PD_COLOR")	
	private String color;
	
	@Column(name="PD_CUT")
	private String cut;
	
	@Column(name="PD_CLARITY")
	private String clarity;
	
	@Column(name="PD_POLISH")
	private String polish;
	
	@Column(name="PD_FLUORESCENCE")
	private String fluorescence;
	
	@Column(name="PD_SYMMETRY")
	private String symmetry;
	
	@Column(name="PD_PRICE_PER_CARAT",precision=10, scale=6)
	private BigDecimal pricePerCarat;
	
	@Column(name="PD_DEPTH",precision=10, scale=6)
	private BigDecimal depth;
	
	@Column(name="PD_LENGTH_WIDTH_RATIO",precision=10, scale=6)
	private BigDecimal lengthWidthRatio;
	
	@Column(name="PD_TABLE")
	private BigDecimal table;
	
	@Column(name="PD_IMAGE_URL_THUMB")
	private String imageUrlThumb;
	
	@Column(name="PD_IMAGE_URL_DETAIL")
	private String imageUrlDetail;

	public String getShape() {
		return shape;
	}

	public void setShape(String shape) {
		this.shape = shape;
	}

	public BigDecimal getCarat() {
		return carat;
	}

	public void setCarat(BigDecimal carat) {
		this.carat = carat;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getCut() {
		return cut;
	}

	public void setCut(String cut) {
		this.cut = cut;
	}

	public String getClarity() {
		return clarity;
	}

	public void setClarity(String clarity) {
		this.clarity = clarity;
	}

	public String getPolish() {
		return polish;
	}

	public void setPolish(String polish) {
		this.polish = polish;
	}

	public String getFluorescence() {
		return fluorescence;
	}

	public void setFluorescence(String fluorescence) {
		this.fluorescence = fluorescence;
	}

	public String getSymmetry() {
		return symmetry;
	}

	public void setSymmetry(String symmetry) {
		this.symmetry = symmetry;
	}

	public BigDecimal getPricePerCarat() {
		return pricePerCarat;
	}

	public void setPricePerCarat(BigDecimal pricePerCarat) {
		this.pricePerCarat = pricePerCarat;
	}

	public BigDecimal getDepth() {
		return depth;
	}

	public void setDepth(BigDecimal depth) {
		this.depth = depth;
	}

	public BigDecimal getLengthWidthRatio() {
		return lengthWidthRatio;
	}

	public void setLengthWidthRatio(BigDecimal lengthWidthRatio) {
		this.lengthWidthRatio = lengthWidthRatio;
	}

	public BigDecimal getTable() {
		return table;
	}

	public void setTable(BigDecimal table) {
		this.table = table;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getImageUrlThumb() {
		return imageUrlThumb;
	}

	public void setImageUrlThumb(String imageUrlThumb) {
		this.imageUrlThumb = imageUrlThumb;
	}

	public String getImageUrlDetail() {
		return imageUrlDetail;
	}

	public void setImageUrlDetail(String imageUrlDetail) {
		this.imageUrlDetail = imageUrlDetail;
	}

}
