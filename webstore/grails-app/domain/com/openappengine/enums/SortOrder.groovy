/**
 * 
 */
package com.openappengine.enums

/**
 * @author hrishikesh.joshi
 *
 */
enum SortOrder {
	
	MOST_POPULAR("Most Popular"),HIGHEST_PRICE("Highest Price"),LOWEST_PRICE("Lowest Price"),
		NEW_ARRIVALS("New Arrivals"),MOST_REVIEWS("Most Reviews"),BEST_RATINGS("Best Ratings")
	
	final String value
	
	SortOrder(String value) { this.value = value }
	
	String toString() { value } 
	String getKey() { name() }

}
