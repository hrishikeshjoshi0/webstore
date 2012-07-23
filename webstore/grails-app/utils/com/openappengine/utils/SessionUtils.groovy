/**
 * 
 */
package com.openappengine.utils

import org.springframework.web.context.request.RequestContextHolder

/**
 * @author hrishikesh.joshi
 *
 */
class SessionUtils {
	
	public String getSessionId() {
		String sessionId = RequestContextHolder.getRequestAttributes()?.getSessionId()
		return sessionId
	}

}
