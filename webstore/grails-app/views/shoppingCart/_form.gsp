<%@ page import="com.openappengine.model.cart.ShoppingCart" %>



<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'shoppingCartId', 'error')} ">
	<label for="shoppingCartId">
		<g:message code="shoppingCart.shoppingCartId.label" default="Shopping Cart Id" />
		
	</label>
	<g:field type="number" name="shoppingCartId" value="${fieldValue(bean: shoppingCartInstance, field: 'shoppingCartId')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'cartItems', 'error')} ">
	<label for="cartItems">
		<g:message code="shoppingCart.cartItems.label" default="Cart Items" />
		
	</label>
	<g:select name="cartItems" from="${com.openappengine.model.cart.ShoppingCartItem.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${shoppingCartInstance?.cartItems*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'lastURL', 'error')} ">
	<label for="lastURL">
		<g:message code="shoppingCart.lastURL.label" default="Last URL" />
		
	</label>
	<g:textField name="lastURL" value="${shoppingCartInstance?.lastURL}" />
</div>

<div class="fieldcontain ${hasErrors(bean: shoppingCartInstance, field: 'sessionID', 'error')} ">
	<label for="sessionID">
		<g:message code="shoppingCart.sessionID.label" default="Session ID" />
		
	</label>
	<g:textField name="sessionID" value="${shoppingCartInstance?.sessionID}" />
</div>

