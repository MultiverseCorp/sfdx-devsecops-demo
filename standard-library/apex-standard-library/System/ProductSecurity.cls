global class ProductSecurity {
	global ProductSecurity() { }
	global Object clone() { }
	global static Boolean freezeCompromisedUser(String customerOrgId, String usersId, Boolean releaseConnection, List<String> ips) { }

}