/**
* @author Oleksandr Vlasenko
* @description Salesforce utility methods
*/
public with sharing class Utils {
	
	/*
	* @description  Builds query string based on provided parameters.
	*               found on the http://salesforce.stackexchange.com/questions/8919/where-is-the-apex-url-builder
    	* @param 
    	* 	parameters  Map of key/values pairs which represent query parameters with corresponding values.
    	* @return	    String?password=Hunter2dog%26cat&username=user%40example.com	
    	* @example	   
	* 		Map<String,String> parameters = new Map<String,String>{
				'password' => 'Hunter2dog&cat',
				'username' => 'user@example.com'
		        }
		        buildParameters(parameters);

			Output: ?password=Hunter2dog%26cat&username=user%40example.com
    	*/
	public static String buildURLParameters(Map<String,String> parameters) {
		System.PageReference pageReference = new System.PageReference('');
		pageReference.getParameters().putAll(parameters);

		return pageReference.getUrl();

	}
}
