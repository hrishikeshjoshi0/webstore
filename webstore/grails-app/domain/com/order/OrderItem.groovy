package com.order

class OrderItem {

	Integer itemId
	Integer line
	Integer quantity
	String productId
	BigDecimal unitPrice = 0
	BigDecimal lineTotalPrice = 0
	 
	static belongsTo = [orderHeader: OrderHeader]
	
    static constraints = {
		
		itemId nullable: true
		line nullable: true
		quantity nullable: true
		productId nullable: true
		unitPrice nullable: true
		lineTotalPrice nullable: true
    }
}
