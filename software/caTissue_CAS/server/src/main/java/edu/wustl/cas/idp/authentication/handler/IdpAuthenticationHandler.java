/*L
 *  Copyright Washington University in St. Louis
 *  Copyright SemanticBits
 *  Copyright Persistent Systems
 *  Copyright Krishagni
 *
 *  Distributed under the OSI-approved BSD 3-Clause License.
 *  See http://ncip.github.com/catissue_CAS/LICENSE.txt for details.
 */

package edu.wustl.cas.idp.authentication.handler;

import org.jasig.cas.authentication.handler.AuthenticationException;
import org.jasig.cas.authentication.handler.support.AbstractUsernamePasswordAuthenticationHandler;
import org.jasig.cas.authentication.principal.UsernamePasswordCredentials;

import edu.wustl.domain.LoginCredentials;
import edu.wustl.processor.LoginProcessor;

public class IdpAuthenticationHandler extends AbstractUsernamePasswordAuthenticationHandler
{

	@Override
	protected boolean authenticateUsernamePasswordInternal(UsernamePasswordCredentials credentials)
			throws AuthenticationException
	{
		log.debug("In IdpAuthenticationHandler class");
        LoginCredentials loginCredentials = new LoginCredentials();
        loginCredentials.setLoginName(credentials.getUsername());
        loginCredentials.setPassword(credentials.getPassword());
        boolean result = false;
        try
        {
        	result = LoginProcessor.authenticate(loginCredentials);
        }
        catch (final Exception exception)
        {
        	log.error(exception.getMessage(), exception);
        }
		return result;
	}
}
