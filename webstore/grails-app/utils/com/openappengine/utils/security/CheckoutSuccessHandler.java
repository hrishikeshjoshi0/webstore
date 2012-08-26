package com.openappengine.utils.security;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
 
public class CheckoutSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
     
    @Override
    protected String determineTargetUrl(HttpServletRequest request,HttpServletResponse response) {
    	if(request.getParameter("checkout") != null) {
    		return checkoutSuccessUrl;
    	}
    		
        return super.determineTargetUrl(request, response);
    }
 
    private String checkoutSuccessUrl;
     
    public void setCheckoutSuccessUrl(String checkoutSuccessUrl) {
		this.checkoutSuccessUrl = checkoutSuccessUrl;
	}
}