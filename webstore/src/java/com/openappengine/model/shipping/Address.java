/**
 * 
 */
package com.openappengine.model.shipping;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.TableGenerator;

import com.openappengine.model.cart.ShoppingCart;

/**
 * @author hrishikesh.joshi
 *
 */
@Entity(name="ec_address")
public class Address implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="EC_ADDRESS_ID", unique=true, nullable=false)
	private Long addressId;

	@Column(name="EC_FIRST_NAME")
	private String firstName;
	
	@Column(name="EC_LAST_NAME")
	private String lastName;
	
	@Column(name="EC_COMPANY")
	private String company;
	
	@Column(name="EC_ADDRESS_LINE1")
	private String addressLine1;
	
	@Column(name="EC_ADDRESS_LINE2")
	private String addressLine2;
	
	@Column(name="EC_LANDMARK")
	private String landmark;
	
	@Column(name="EC_CITY")
	private String city;
	
	@Column(name="EC_STATE")
	private String state;
	
	@Column(name="EC_COUNTRY")
	private String country;
	
	@Column(name="EC_ZIP")
	private String zip;
	
	@Column(name="EC_PRIMARY_PHONE")
	private String primaryPhone;
	
	@Column(name="EC_EMAIL")
	private String email;
	
	@Column(name="EC_ROLE")
	private String role;
	
	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPrimaryPhone() {
		return primaryPhone;
	}

	public void setPrimaryPhone(String primaryPhone) {
		this.primaryPhone = primaryPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
