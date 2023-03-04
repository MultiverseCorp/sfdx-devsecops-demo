global class SObject {

	public void addError(String errorMsg) { }
	public void addError(String errorMsg, Boolean escape) { }
	public void addError(Exception exceptionError) { }
	public void addError(Exception exceptionError, Boolean escape) {}
	public void clear() {}
	public SObject clone() {}
	public SObject clone(Boolean preserveId) {}
	public SObject clone(Boolean preserveId, Boolean isDeepClone) {}
	public SObject clone(Boolean preserveId, Boolean isDeepClone, Boolean preserveReadonlyTimestamps) {}
	public SObject clone(Boolean preserveId, Boolean isDeepClone, Boolean preserveReadonlyTimestamps, Boolean preserveAutonumber) {}
	public Object get(String fieldName) {}
	public Object get(Schema.sObjectField field) {}
	public Id getCloneSourceId() {}
	public Database.DMLOptions getOptions() {}
	public Map<String,Object> getPopulatedFieldsAsMap() {}
	public SObject getSObject(String fieldName) {}
	public SObject getSObject(Schema.SObjectField fieldName) {}
	public SObject[] getSObjects(String fieldName) {}
	public SObject[] getSObjects(Schema.SObjectType fieldName) {}
	public Schema.SObjectType getSObjectType() {}
	public String getQuickActionName() {}
	public Boolean isSet(String fieldName) {}
	public Boolean isSet(Schema.SObjectField field) {}
	public Object put(String fieldName, Object value) {}
	public Object put(Schema.SObjectField fieldName, Object value) {}
	public SObject putSObject(String fieldName, SObject value) {}
	public SObject putSObject(Schema.SObjectType fieldName, SObject value) {}
	public void recalculateFormulas() {}
	public void setOptions(database.DMLOptions DMLOptions) {}

}