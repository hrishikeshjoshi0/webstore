package com.order

import java.util.Currency;

class OrderHeader {
	String orderNumber = 'test'
	Date orderDate
	BigDecimal totalAmount = 0
	BigDecimal totaldiscount = 0
	Integer shoppingCartId = 0
	Currency currency = Currency.getInstance("USD")
	
	String transactionId
	String paypalTransactionId
	String status 
	String addressId
	String firstName
	String lastName
	String company
	String addressLine1
	String addressLine2
	String landmark
	String city
	String state
	String country
	String zip
	String primaryPhone
	String email
	String role
	String description
	
	static hasMany = [orderItem : OrderItem]
	
	
    static constraints = {
		orderNumber unique: true
		orderDate nullable: true
		totalAmount nullable: true
		totaldiscount nullable: true
		shoppingCartId nullable: true
		currency nullable: true
		status nullable: true
		transactionId nullable: true
		paypalTransactionId nullable: true
		status nullable: true
		addressId nullable: true
		firstName nullable: true
		lastName nullable: true
		company nullable: true
		addressLine1 nullable: true
		addressLine2 nullable: true
		landmark nullable: true
		city nullable: true
		state nullable: true
		country nullable: true
		zip nullable: true
		primaryPhone nullable: true
		email nullable: true
		role nullable: true
		description nullable: true
    }
}
