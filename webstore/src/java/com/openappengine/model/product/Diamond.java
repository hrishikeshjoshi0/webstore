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
	
	@Column(name="PD_CODE")
	private String code;
	
	@Column(name="PD_SHAPE")
	private String shape;
	
	@Column(name="PD_CARAT")
	private BigDecimal carat;
	
	@Column(name="PD_COLOR_ID")	
	private Integer color_id;
	
	@Column(name="PD_COLOR")	
	private String color;
	
	@Column(name="PD_CUT_ID")
	private Integer cut_id;
	
	@Column(name="PD_CUT")
	private String cut;
	
	@Column(name="PD_CLARITY_ID")
	private Integer clarity_id;
	
	@Column(name="PD_CLARITY")
	private String clarity;
	
	@Column(name="PD_REPORT")
	private String report;
	
	@Column(name="PD_TABLE")
	private String table;
	
	@Column(name="PD_SYMMETRY_ID")
	private Integer symmetry_id;
	
	@Column(name="PD_SYMMETRY")
	private String symmetry;
	
	@Column(name="PD_DEPTH",precision=10, scale=6)
	private BigDecimal depth;
	
	@Column(name="PD_LENGTH_TO_WIDTH",precision=10, scale=6)
	private BigDecimal lengthToWidth;
	
	@Column(name="PD_FLUORESCENCE_ID")
	private Integer fluorescence_id;
	
	@Column(name="PD_FLUORESCENCE")
	private String fluorescence;
	
	@Column(name="PD_POLISH_ID")
	private Integer polish_id;
	
	@Column(name="PD_POLISH")
	private String polish;
	
	@Column(name="PD_IMAGE_URL")
	private String imageUrl;
	
	@Column(name="PD_IS_CERTIFIED")
	private Boolean certified;
	
	@Column(name="PD_HEAD")
	private String head;
	
	@Column(name="PD_CERTI_NO")
	private String certiNo;

	
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

	private static final long serialVersionUID = 1L;
	
		
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Integer getColor_id() {
		return color_id;
	}

	public void setColor_id(Integer color_id) {
		this.color_id = color_id;
	}

	public Integer getCut_id() {
		return cut_id;
	}

	public void setCut_id(Integer cut_id) {
		this.cut_id = cut_id;
	}

	public Integer getClarity_id() {
		return clarity_id;
	}

	public void setClarity_id(Integer clarity_id) {
		this.clarity_id = clarity_id;
	}

	public Integer getSymmetry_id() {
		return symmetry_id;
	}

	public void setSymmetry_id(Integer symmetry_id) {
		this.symmetry_id = symmetry_id;
	}

	public Integer getFluorescence_id() {
		return fluorescence_id;
	}

	public void setFluorescence_id(Integer fluorescence_id) {
		this.fluorescence_id = fluorescence_id;
	}

	public Integer getPolish_id() {
		return polish_id;
	}

	public void setPolish_id(Integer polish_id) {
		this.polish_id = polish_id;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getCertiNo() {
		return certiNo;
	}

	public void setCertiNo(String certiNo) {
		this.certiNo = certiNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	
	public Boolean getCertified() {
		return certified;
	}

	public void setCertified(Boolean certified) {
		this.certified = certified;
	}

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

	
	
}
