public class CandidateGradeController {
    public CandidateGradeController() {   
    }

//Below method is a recursive method and should cause a warning.
public static customer_Obj__c solveQueueRic(List<customer_Obj__c> COset,Integer index,customer_Obj__c head){
    customer_Obj__c lg;
    if(index == 0){
        lg = COset[index];
        head = lg;
        return solveQueueRic(COset,index+1,head);//This is recursive call and clayton should flag it as warning.
    }
    if(index < COset.size()){
        lg = COset[index];
        if(lg.Createddate < COset[index].Createddate){
            head = lg;
        }
        return solveQueueRic(index+1,head);//This is not a recursive call and clayton should not flag this line as warning.
    }
    return head;
}

public static customer_Obj__c solveQueueRic(Integer index,customer_Obj__c head){
	if(index==1){
		return head;
	}
}


    // comment 22222 gianc
    @AuraEnabled
    public static CandidateGradeInfo getCandidateGrade(Id contactId) {
        
        Contact currentContact = [SELECT Name, Salary__c, NextAvailableDate__c FROM Contact where Id = :contactId];
        User currentUser = [SELECT Seniority__c FROM User where Id = :UserInfo.getUserId()];
        String temperature = '';
        Double commission = 0;
        
        if (currentContact.Salary__c >= 500 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
            temperature = 'Hot';
        }
        else if (currentContact.Salary__c < 500 && Date.today().daysBetween(currentContact.NextAvailableDate__c) < 90 ) {
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
