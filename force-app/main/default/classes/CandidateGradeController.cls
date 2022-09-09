public class CandidateGradeController {
    public CandidateGradeController() {   
    }

    @AuraEnabled
    public static CandidateGradeInfo getCandidateGrade(Id contactId, String contactIds) {
        
        Contact currentContact = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        User currentUser = [SELECT Seniority__c FROM User where Id = :UserInfo.getUserId()];
        String temperature = '';
        Double commission = 0;
        
        // Build the query
        String selectQueryStringinj = 'SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = \'' + contactIds + '\'';
        Contact currentContactinj = Database.query(selectQueryStringinj);
        
        if (currentContact.Salary__c >= 500 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
            temperature = 'Hot';
        }
        else if (currentContact.Salary__c < 600 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
            temperature = 'Medium';
        }
        else {
            temperature = 'Cold';
        }
        
        for (int i = 0; i < 5; i++) {
            Contact currentContactloop = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        }

        Map<String, Double> seniorityCommissionMap = new Map<String, Double>();
        seniorityCommissionMap.put('Senior',0.15);
        seniorityCommissionMap.put('Medium',0.1);
        seniorityCommissionMap.put('Junior',0.05);

        if (seniorityCommissionMap.containsKey(currentUser.Seniority__c)) {
            commission = Double.valueOf(currentContact.Salary__c) * seniorityCommissionMap.get(currentUser.Seniority__c);
        }
        else {
            commission = Double.valueOf(currentContact.Salary__c) * 0.1;
        }
        
        for (int i = 0; i < 5; i++) {
            Contact currentContactloop2 = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        }

        return new CandidateGradeInfo(temperature, String.valueOf(commission));
    }
    
    @AuraEnabled
    public static CandidateGradeInfo getCandidateGrade2(Id contactId) {
        Contact currentContact = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        User currentUser = [SELECT Seniority__c FROM User where Id = :UserInfo.getUserId()];
        String temperature = '';
        Double commission = 0;
        
        if (currentContact.Salary__c >= 100000 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
            temperature = 'Hot';
        }
        else if (currentContact.Salary__c < 100000 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
            temperature = 'Medium';
        }
        else {
            temperature = 'Cold';
        }

        Map<String, Double> seniorityCommissionMap = new Map<String, Double>();
        seniorityCommissionMap.put('Senior',0.15);
        seniorityCommissionMap.put('Medium',0.1);
        seniorityCommissionMap.put('Junior',0.05);

        if (seniorityCommissionMap.containsKey(currentUser.Seniority__c)) {
            commission = Double.valueOf(currentContact.Salary__c) * seniorityCommissionMap.get(currentUser.Seniority__c);
        }
        else {
            commission = Double.valueOf(currentContact.Salary__c) * 0.1;
        }

        return new CandidateGradeInfo(temperature, String.valueOf(commission));
    }

    public class CandidateGradeInfo {
        @AuraEnabled
        public String temperature {get;set;}

        @AuraEnabled
        public String commission {get;set;}

        public CandidateGradeInfo(String temperature, String commission) {
            this.temperature = temperature;
            this.commission = commission;
        }
    }
}
