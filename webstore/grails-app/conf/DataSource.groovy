/* H2
dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}*/

/* MySQL DS */
dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
		grails.paypal.server = "https://www.sandbox.paypal.com/cgi-bin/webscr"
		grails.paypal.email = "nachi1_1337118253_biz@gmail.com"
		grails.serverURL = "http://localhost:9090/webstore"
		
		
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost:3306/hrishi23_webstore_test?useUnicode=yes&characterEncoding=UTF-8"
			username = "root"
			password = "admin"
			pooled=true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			 }
		}
		hibernate {
			show_sql = true
		}
    }
	test {
		grails.paypal.server = "https://www.sandbox.paypal.com/cgi-bin/webscr"
		grails.paypal.email = "nachi1_1337118253_biz@gmail.com"
		grails.serverURL = "http://localhost:9090/webstore"
		
		
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://moryasolutions.com:3306/hrishi23_webstore_test?useUnicode=yes&characterEncoding=UTF-8"
			username = "hrishi23_webstor"
			password = "Eclipse@123"
			pooled=true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			 }
		}
		hibernate {
			show_sql = true
		}
	}
    production {
		grails.paypal.server = "https://www.sandbox.paypal.com/cgi-bin/webscr"
		grails.paypal.email = "nachi1_1337118253_biz@gmail.com"
		//grails.serverURL = "http://localhost:9090/webstore"
		
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://moryasolutions.com:3306/hrishi23_webstore_test?useUnicode=yes&characterEncoding=UTF-8"
			username = "hrishi23_webstor"
			password = "Eclipse@123"
			pooled=true
			properties {
				maxActive = -1
				minEvictableIdleTimeMillis=1800000
				timeBetweenEvictionRunsMillis=1800000
				numTestsPerEvictionRun=3
				testOnBorrow=true
				testWhileIdle=true
				testOnReturn=true
				validationQuery="SELECT 1"
			 }
		}
		hibernate {
			show_sql = true
		}
	}
}
