/**
 * 
 */
package com.openappengine.enums

/**
 * @author hrishi
 *
 */
enum RefMetals {

	whiteGold18K("White Gold 18K"),
	whiteGold14K("White Gold 14K"),
	sterlingSilver("Sterling Silver"),
	yellowGold18K("Yellow Gold 18K"),
	yellowGold14K("Yellow Gold 14K"),
	roseGold18K("Rose Gold 18K"),
	roseGold14K("Rose Gold 14K")
	
	final String value
	
	RefMetals(String value) { this.value = value }
	
	String toString() { value }
	String getKey() { name() }
	
}
