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
@Entity(name="prod_product_jewellery")
@PrimaryKeyJoinColumn(name="PD_PRODUCT_ID")
public class Jewellery extends Product {
	
	private static final long serialVersionUID = 1L;
	
	@Column(name="PD_STOCK_ID")
	private String stockId;
	
	@Column(name="PD_METAL")
	private String metal;
	
	@Column(name="PD_LENGTH",precision=10, scale=6)
	private BigDecimal length;
	
	@Column(name="PD_WIDTH",precision=10, scale=6)	
	private BigDecimal width;
	
	@Column(name="PD_HEIGHT",precision=10, scale=6)
	private BigDecimal height;
	
	@Column(name="PD_NET_WEIGHT",precision=10, scale=6)
	private BigDecimal netWeight;
	
	@Column(name="PD_GROSS_WEIGHT",precision=10, scale=6)
	private BigDecimal grossWeight;

	@Column(name="PD_DIAMOND_WEIGHT",precision=10, scale=6)
	private BigDecimal diamondWeight;
	
	@Column(name="PD_DIAMOND_SHAPE")
	private String diamondShape;
	
	@Column(name="PD_DIAMOND_NO_OF_PIECES",precision=10, scale=6)
	private BigDecimal diamondNoOfPieces;
	
	@Column(name="PD_DIAMOND_COLOR")
	private BigDecimal diamondColor;
	
	@Column(name="PD_DIAMOND_CLARITY",precision=10, scale=6)
	private BigDecimal diamondClarity;
	
	@Column(name="PD_SETTING_STYLE")
	private String settingStyle;
	
	@Column(name="PD_COLOR_STONE_NAME",precision=10, scale=6)
	private String colorStoneName;
	
	@Column(name="PD_COLOR_STONE_WEIGHT",precision=10, scale=6)
	private BigDecimal colorStoneWeight;
	
	@Column(name="PD_COLOR_STONE_SHAPE")
	private String colorStoneShape;
	
	@Column(name="PD_COLOR_STONE_NO_OF_PIECES",precision=10, scale=6)
	private BigDecimal colorStoneNoOfPieces;
	
	@Column(name="PD_PEARL_NAME")
	private String pearlName;
	
	@Column(name="PD_PEARL_WEIGHT",precision=10, scale=6)
	private BigDecimal pearlWeight;
	
	@Column(name="PD_PEARL_SHAPE")
	private String pearlShape;
	
	@Column(name="PD_PEARL_NO_OF_PIECES",precision=10, scale=6)
	private BigDecimal pearlNoOfPieces;

	public String getStockId() {
		return stockId;
	}

	public void setStockId(String stockId) {
		this.stockId = stockId;
	}

	public String getMetal() {
		return metal;
	}

	public void setMetal(String metal) {
		this.metal = metal;
	}

	public BigDecimal getLength() {
		return length;
	}

	public void setLength(BigDecimal length) {
		this.length = length;
	}

	public BigDecimal getWidth() {
		return width;
	}

	public void setWidth(BigDecimal width) {
		this.width = width;
	}

	public BigDecimal getHeight() {
		return height;
	}

	public void setHeight(BigDecimal height) {
		this.height = height;
	}

	public BigDecimal getNetWeight() {
		return netWeight;
	}

	public void setNetWeight(BigDecimal netWeight) {
		this.netWeight = netWeight;
	}

	public BigDecimal getGrossWeight() {
		return grossWeight;
	}

	public void setGrossWeight(BigDecimal grossWeight) {
		this.grossWeight = grossWeight;
	}

	public BigDecimal getDiamondWeight() {
		return diamondWeight;
	}

	public void setDiamondWeight(BigDecimal diamondWeight) {
		this.diamondWeight = diamondWeight;
	}

	public String getDiamondShape() {
		return diamondShape;
	}

	public void setDiamondShape(String diamondShape) {
		this.diamondShape = diamondShape;
	}

	public BigDecimal getDiamondNoOfPieces() {
		return diamondNoOfPieces;
	}

	public void setDiamondNoOfPieces(BigDecimal diamondNoOfPieces) {
		this.diamondNoOfPieces = diamondNoOfPieces;
	}

	public BigDecimal getDiamondColor() {
		return diamondColor;
	}

	public void setDiamondColor(BigDecimal diamondColor) {
		this.diamondColor = diamondColor;
	}

	public BigDecimal getDiamondClarity() {
		return diamondClarity;
	}

	public void setDiamondClarity(BigDecimal diamondClarity) {
		this.diamondClarity = diamondClarity;
	}

	public String getSettingStyle() {
		return settingStyle;
	}

	public void setSettingStyle(String settingStyle) {
		this.settingStyle = settingStyle;
	}

	public String getColorStoneName() {
		return colorStoneName;
	}

	public void setColorStoneName(String colorStoneName) {
		this.colorStoneName = colorStoneName;
	}

	public BigDecimal getColorStoneWeight() {
		return colorStoneWeight;
	}

	public void setColorStoneWeight(BigDecimal colorStoneWeight) {
		this.colorStoneWeight = colorStoneWeight;
	}

	public String getColorStoneShape() {
		return colorStoneShape;
	}

	public void setColorStoneShape(String colorStoneShape) {
		this.colorStoneShape = colorStoneShape;
	}

	public BigDecimal getColorStoneNoOfPieces() {
		return colorStoneNoOfPieces;
	}

	public void setColorStoneNoOfPieces(BigDecimal colorStoneNoOfPieces) {
		this.colorStoneNoOfPieces = colorStoneNoOfPieces;
	}

	public String getPearlName() {
		return pearlName;
	}

	public void setPearlName(String pearlName) {
		this.pearlName = pearlName;
	}

	public BigDecimal getPearlWeight() {
		return pearlWeight;
	}

	public void setPearlWeight(BigDecimal pearlWeight) {
		this.pearlWeight = pearlWeight;
	}

	public String getPearlShape() {
		return pearlShape;
	}

	public void setPearlShape(String pearlShape) {
		this.pearlShape = pearlShape;
	}

	public BigDecimal getPearlNoOfPieces() {
		return pearlNoOfPieces;
	}

	public void setPearlNoOfPieces(BigDecimal pearlNoOfPieces) {
		this.pearlNoOfPieces = pearlNoOfPieces;
	}
}
