import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

// Place your Spring DSL code here
beans = {
	authenticationSuccessHandler(com.openappengine.utils.security.CheckoutSuccessHandler) {
		def conf = SpringSecurityUtils.securityConfig
		requestCache = ref('requestCache')
		defaultTargetUrl = conf.successHandler.defaultTargetUrl
		alwaysUseDefaultTargetUrl = conf.successHandler.alwaysUseDefault
		targetUrlParameter = conf.successHandler.targetUrlParameter
		useReferer = conf.successHandler.useReferer
		redirectStrategy = ref('redirectStrategy')
		checkoutSuccessUrl = "/shoppingCart/checkout_address" 
	}
}
