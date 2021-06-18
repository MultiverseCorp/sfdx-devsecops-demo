public class CandidateGradeController {
    public CandidateGradeController() {   
    }
    
    // un commento

    @AuraEnabled
    public static CandidateGradeInfo getCandidateGrade(Id contactId, String cid) {
        Contact currentContact = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        User currentUser = [SELECT Seniority__c FROM User where Id = :UserInfo.getUserId()];
        String temperature = '';
        Double commission = 0;
        
        System.debug(UserInfo.getSessionId());
        
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

        getUser(cid);

        for(integer i = 0; i < 100; i++) {
            DMLmethod(contactId);
        }

        return new CandidateGradeInfo(temperature, String.valueOf(commission));
    }

    @AuraEnabled
    public static User getUser(String id){
       return [SELECT Seniority__c FROM User where Id =: id]; //This can be a DML too
    }
    
    public static string DMLmethod(Id cId){
        Contact currentContact = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :cId];
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
