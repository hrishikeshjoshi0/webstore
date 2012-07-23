/**
 * 
 */
package com.openappengine.model.cart;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.TableGenerator;

/**
 * @author hrishikesh.joshi
 *
 */
@Entity(name="ec_shopping_cart_item")
public class ShoppingCartItem implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="SI_SHOPPING_CART_ITEM_ID", unique=true, nullable=false)
	private Integer shoppingCartItemId;
	
	@Column(name="SI_SHOPPING_CART_SEQ_ID")
	private String shoppingListItemSeqId;
	
	@Column(name="SI_QUANTITY")
	private BigDecimal quantity;
	
	@Column(name="SI_PRODUCT_ID")
	private String productId;
	
	@Column(name="SI_UNIT_PRICE")
	private BigDecimal unitPrice;
	
	@Column(name="SI_LINE_TOTAL_PRICE")
	private BigDecimal lineTotalPrice;
	
	@Column(name="SI_IS_CHECKED_OUT")
	private Boolean checkedOut;
	
	@ManyToOne
	@JoinColumn(name="SI_SHOPPING_CART_ID", nullable=false)
	private ShoppingCart shoppingCart;

	public String getShoppingListItemSeqId() {
		return shoppingListItemSeqId;
	}

	public void setShoppingListItemSeqId(String shoppingListItemSeqId) {
		this.shoppingListItemSeqId = shoppingListItemSeqId;
	}

	public BigDecimal getQuantity() {
		return quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}

	public BigDecimal getLineTotalPrice() {
		return lineTotalPrice;
	}

	public void setLineTotalPrice(BigDecimal lineTotalPrice) {
		this.lineTotalPrice = lineTotalPrice;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public Integer getShoppingCartItemId() {
		return shoppingCartItemId;
	}

	public void setShoppingCartItemId(Integer shoppingCartItemId) {
		this.shoppingCartItemId = shoppingCartItemId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public Boolean getCheckedOut() {
		return checkedOut;
	}

	public void setCheckedOut(Boolean checkedOut) {
		this.checkedOut = checkedOut;
	}
	
}
