<g:if test='${flash.message}'>
	<p class='login_message'>
		${flash.message}
	</p>
</g:if>

<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
	<br/>
	<p>
		<label for='username'><g:message
				code="springSecurity.login.username.label" default="username"/>:</label> <input type='text'
			class='text_' name='j_username' id='username' />
	</p>

	<p>
		<label for='password'><g:message
				code="springSecurity.login.password.label" default="password"/>:</label> <input
			type='password' class='text_' name='j_password' id='password' />
	</p>

	<p id="remember_me_holder">
		<input type='checkbox' class='chk' name='${rememberMeParameter}'
			id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> />
		<label for='remember_me'><g:message
				code="springSecurity.login.remember.me.label" /></label>
	</p>

	<p>
		<input type='submit' id="signin_submit"
			value='${message(code: "springSecurity.login.button")}' />
	</p>
</form>
<script type='text/javascript'>
<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
// -->
</script>