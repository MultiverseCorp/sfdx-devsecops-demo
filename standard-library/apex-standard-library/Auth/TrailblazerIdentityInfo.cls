global class TrailblazerIdentityInfo {
	global TrailblazerIdentityInfo() { }
	global Object clone() { }
	global static Auth.TrailblazerIdentityAdditionalInfo getAdditionalUserInfo(String orgId, String userId) { }
	global static List<Auth.TrailblazerIdentityAdditionalInfo> getAdditionalUserInfos(List<String> orgIds, List<String> userIds) { }

}