global class GusOps {
	global GusOps() { }
	global Object clone() { }
	global static String executeCustomSqlScript(Id caseId, Set<Id> implPlanIds) { }
	global static String executeCustomSqlScript(Id caseId) { }
	global static void executeCustomSqlScriptFromValidInstances(Id caseId, Set<String> validInstances) { }
	global static void getInstancesFromCase(Id caseId, Set<String> implPlanIds, Set<String> validInstances, Set<String> invalidInstances) { }
	global static String getSqlScriptOutputUrl(Id caseId, String instanceName) { }
	global static String insertFailedAuditableActionResultForApexTest(Id caseId, String requestType) { }
	global static String insertSuccessfulAuditableActionResultForApexTest(Id caseId, String requestType) { }
	global static void validateSqlScriptCase(Id caseId) { }

}