/**
 * 
 */
package com.openappengine.model.wishlist;

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
@Entity(name="ec_wish_list")
public class WishList implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="WL_WISH_LIST_ID", unique=true, nullable=false)
	private Integer wishListId;

	@Column(name="WL_SESSION_ID")
	private String sessionID;
	
	@Column(name="WL_DATE_CREATED")
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateCreated;
	
	@Column(name="WL_LAST_UPDATED")
	@Temporal(TemporalType.TIMESTAMP)
   	private Date lastUpdated;
	
	@OneToMany(mappedBy="wishList",cascade=CascadeType.ALL)
	private List<WishListItem> wishListItems = new ArrayList<WishListItem>();

	public Integer getWishListId() {
		return wishListId;
	}

	public void setWishListId(Integer wishListId) {
		this.wishListId = wishListId;
	}

	public String getSessionID() {
		return sessionID;
	}

	public void setSessionID(String sessionID) {
		this.sessionID = sessionID;
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

	public List<WishListItem> getWishListItems() {
		return wishListItems;
	}

	public void setWishListItems(List<WishListItem> wishListItems) {
		this.wishListItems = wishListItems;
	}
	
}
