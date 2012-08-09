<%@ page import="com.openappengine.model.wishlist.WishList" %>



<div class="fieldcontain ${hasErrors(bean: wishListInstance, field: 'wishListId', 'error')} ">
	<label for="wishListId">
		<g:message code="wishList.wishListId.label" default="Wish List Id" />
		
	</label>
	<g:field type="number" name="wishListId" value="${fieldValue(bean: wishListInstance, field: 'wishListId')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: wishListInstance, field: 'sessionID', 'error')} ">
	<label for="sessionID">
		<g:message code="wishList.sessionID.label" default="Session ID" />
		
	</label>
	<g:textField name="sessionID" value="${wishListInstance?.sessionID}" />
</div>

<div class="fieldcontain ${hasErrors(bean: wishListInstance, field: 'wishListItems', 'error')} ">
	<label for="wishListItems">
		<g:message code="wishList.wishListItems.label" default="Wish List Items" />
		
	</label>
	<g:select name="wishListItems" from="${com.openappengine.model.wishlist.WishListItem.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${wishListInstance?.wishListItems*.id}" class="many-to-many"/>
</div>

