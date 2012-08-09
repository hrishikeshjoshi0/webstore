/**
 * 
 */
package com.openappengine.model.wishlist;

import java.io.Serializable;

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
@Entity(name="ec_wish_list_item")
public class WishListItem implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="WL_WISH_LIST_ITEM_ID", unique=true, nullable=false)
	private Integer wishListItemId;
	
	@Column(name="WL_WISH_LIST_ITEM_SEQ_ID")
	private String wishListItemSeqId;
	
	@Column(name="WL_PRODUCT_ID")
	private String productId;
	
	@ManyToOne
	@JoinColumn(name="WL_WISH_LIST_ID", nullable=false)
	private WishList wishList;

	public Integer getWishListItemId() {
		return wishListItemId;
	}

	public void setWishListItemId(Integer wishListItemId) {
		this.wishListItemId = wishListItemId;
	}

	public String getWishListItemSeqId() {
		return wishListItemSeqId;
	}

	public void setWishListItemSeqId(String wishListItemSeqId) {
		this.wishListItemSeqId = wishListItemSeqId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public WishList getWishList() {
		return wishList;
	}

	public void setWishList(WishList wishList) {
		this.wishList = wishList;
	}
	
}
