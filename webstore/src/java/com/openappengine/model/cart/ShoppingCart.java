/**
 * 
 */
package com.openappengine.model.cart;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author hrishikesh.joshi
 *
 */
@Entity(name="ec_shopping_cart")
public class ShoppingCart implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="SC_SHOPPING_CART_ID", unique=true, nullable=false)
	private Integer shoppingCartId;

	@Column(name="SC_SESSION_ID")
	private String sessionID;
	
	@Column(name="SC_LAST_URL")
	private String lastURL;
	
	@Column(name="SC_DATE_CREATED")
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateCreated;
	
	@Column(name="SC_LAST_UPDATED")
	@Temporal(TemporalType.TIMESTAMP)
   	private Date lastUpdated;
	
	@OneToMany(mappedBy="shoppingCart",cascade=CascadeType.ALL)
	private List<ShoppingCartItem> cartItems = new ArrayList<ShoppingCartItem>();

	public Integer getShoppingCartId() {
		return shoppingCartId;
	}

	public void setShoppingCartId(Integer shoppingCartId) {
		this.shoppingCartId = shoppingCartId;
	}

	public String getSessionID() {
		return sessionID;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
	}

	public String getLastURL() {
		return lastURL;
	}

	public void setLastURL(String lastURL) {
		this.lastURL = lastURL;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(Date lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public List<ShoppingCartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<ShoppingCartItem> cartItems) {
		this.cartItems = cartItems;
	}
	
	public void addCartItem(ShoppingCartItem item) {
		if(item == null) {
			return;
		}
		this.cartItems.add(item);
	}
	
}
