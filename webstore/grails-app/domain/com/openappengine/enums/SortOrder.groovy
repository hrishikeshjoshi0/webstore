/**
 * 
 */
package com.openappengine.enums

/**
 * @author hrishikesh.joshi
 *
 */
enum SortOrder {
	
	/*MOST_POPULAR("Most Popular"),*/
	NEW_ARRIVALS("New Arrivals"),
	HIGHEST_PRICE("Highest Price"),
	LOWEST_PRICE("Lowest Price"),
	MOST_POPULAR("Most Popular"),
	BEST_RATINGS("Best Ratings")
	
	final String value
	
	SortOrder(String value) { this.value = value }
	
	String toString() { value } 
	String getKey() { name() }

}
