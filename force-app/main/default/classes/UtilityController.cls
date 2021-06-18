public without sharing class UtilityController {
    @AuraEnabled
    public static List<SObject> findRecords(String searchKey, String objectName, String searchField, String filterCondition, String filterFields) {
        String key = '%' + searchKey + '%';
        
        String queryString = 'SELECT ' + filterFields + ' , ' + searchField + ' FROM ' + objectName + ' WHERE ' + searchField + ' LIKE :key ';
        
        if (filterCondition != null && filterCondition != '') {
            queryString += filterCondition;
        }

        List<SObject> sObjectList = Database.query(queryString);
        return sObjectList;
    }
}
