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
public class Diamond extends Product {
	
	private static final long serialVersionUID = 1L;
	
	@Column(name="PD_SHAPE")
	private String shape;
	
	@Column(name="PD_CARAT",precision=10, scale=6)
	private BigDecimal carat;
	
	@Column(name="PD_COLOR",precision=10, scale=6)	
	private BigDecimal color;
	
	@Column(name="PD_CUT",precision=10, scale=6)
	private BigDecimal cut;
	
	@Column(name="PD_CLARITY",precision=10, scale=6)
	private BigDecimal clarity;
	
	@Column(name="PD_REPORT")
	private String report;
	
	@Column(name="PD_TABLE")
	private String table;
	
	@Column(name="PD_SYMMETRY")
	private String symmetry;
	
	@Column(name="PD_DEPTH",precision=10, scale=6)
	private BigDecimal depth;
	
	@Column(name="PD_LENGTH_TO_WIDTH",precision=10, scale=6)
	private BigDecimal lengthToWidth;
	
	@Column(name="PD_FLUORESCENCE")
	private String fluorescence;
	
	@Column(name="PD_POLISH")
	private String polish;
	
	@Column(name="PD_IMAGE_URL")
	private String imageUrl;
	
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

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	public String getSymmetry() {
		return symmetry;
	}

	public void setSymmetry(String symmetry) {
		this.symmetry = symmetry;
	}

	public BigDecimal getDepth() {
		return depth;
	}

	public void setDepth(BigDecimal depth) {
		this.depth = depth;
	}

	public BigDecimal getLengthToWidth() {
		return lengthToWidth;
	}

	public void setLengthToWidth(BigDecimal lengthToWidth) {
		this.lengthToWidth = lengthToWidth;
	}

	public String getFluorescence() {
		return fluorescence;
	}

	public void setFluorescence(String fluorescence) {
		this.fluorescence = fluorescence;
	}

	public String getPolish() {
		return polish;
	}

	public void setPolish(String polish) {
		this.polish = polish;
	}

	public BigDecimal getColor() {
		return color;
	}

	public void setColor(BigDecimal color) {
		this.color = color;
	}

	public BigDecimal getCut() {
		return cut;
	}

	public void setCut(BigDecimal cut) {
		this.cut = cut;
	}

	public BigDecimal getClarity() {
		return clarity;
	}

	public void setClarity(BigDecimal clarity) {
		this.clarity = clarity;
	}
}
