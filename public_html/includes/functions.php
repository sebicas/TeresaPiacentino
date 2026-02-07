<?php 

# --

	// Config 
	$config['esmartmail_api'] = 'http://www.esmartmail.com/xml.php';
	$config['esmartmail_user'] = 'teresa';
	$config['esmartmail_key'] = '24ca6d612ebecb9a0afc7bd79627946e3e1b50e2';

# --

// $Subscriber['email']
// $Subscriber['first_name']
// $Subscriber['last_name']
// $Subscriber['ip']
// $Subscriber['country_code']
	
function AddSubscriberToList($Subscriber) {
   global $config;
          
	// Create XML Command
	$xml = '<xmlrequest>
	<username>' . $config['esmartmail_user'] . '</username>
	<usertoken>' . $config['esmartmail_key'] . '</usertoken>
	<requesttype>subscribers</requesttype>
	<requestmethod>AddSubscriberToList</requestmethod>
	<details>
	<emailaddress>' . $Subscriber['email'] . '</emailaddress>
	<mailinglist>1</mailinglist>
	<format>html</format>
	<ipaddress>' . $Subscriber['ip'] . '</ipaddress>
	<confirmed>yes</confirmed>
	<customfields>
	<item>
	<fieldid>2</fieldid>
	<value>' . $Subscriber['first_name'] . '</value>
	</item>
	<item>
	<fieldid>3</fieldid>
	<value>' . $Subscriber['last_name'] . '</value>
	</item>
	<item>
	<fieldid>12</fieldid>
	<value>' . $Subscriber['country_code'] . '</value>
	</item>
	</customfields>
	</details>
	</xmlrequest>';

	// Send Request
	$ch = curl_init($config['esmartmail_api']);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_POST, 1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $xml);
	
	// $result = @curl_exec($ch);
	$result = FALSE;

	// Check Response
	if($result === false) {

		$return['status'] = 'Failed';
		$return['error'] = 'Error performing request';		
	
	} else {
	
		$xml_doc = simplexml_load_string($result);

		if ($xml_doc->status == 'SUCCESS') {

			$return['status'] = 'Ok';			
		
		} else {

			$return['status'] = 'Failed';
			$return['error'] = $xml_doc->errormessage;		
			
		}

	}
	
	return $return;

}

?>
