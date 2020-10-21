public with sharing class SomeTestsForClayton {

    public static Integer divideNumberByZero() {
        integer a = 1 / 0;
        return a;
    }
    public static void soqlInLoopExample() {
        List<Account> accts = [Select Id, Name from Account Limit 100 ];
        for (Account a : accts) {
            List<Contact> contacts =  [Select Id,AccountId from Contact where AccountId = :a.Id];
            for (Contact c : contacts) {
                if (c.AccountId == a.Id) {
                  System.debug('Just printing Debug...');
                }
            }
        }
    }

    public static void soqlInLoopCallingAnotherMethod() {
        List<Account> accts = [Select Id, Name from Account Limit 100 ];
        for (Account a : accts) {
            List<Contact> contacts =  getContactsByAccountId(a.Id);
            for (Contact c : contacts) {
                if (c.AccountId == a.Id) {
                  System.debug('Just  Debug...');
                }
            }
        }
    }

	private static List<Contact> contacts getContactsByAccountId(Id aId) {
		List<Contact> contacts = [Select Id, AccountId from Contact where AccountId = :aId];
		return contacts; 
	}

    public static void infiniteLoopExample () {
        for (Integer i= 0; i<-1; i++) {
            System.debug('I am inside Infinite Loop');
        }
    }

    @AuraEnabled
    public static List<User> soqlInjectionExampleMixedApproach(String str) {
        String name =  str ;
        String squery = 'Select Id, Name from User Where UserName like  \'%' + name + '%'; 
	String squery2 = 'Select Id, Name from User Where UserName like  \'%' + name + '%'; 
	//This is a new comment
        List<User> users =  Database.query(squery);
        return users;
    }

    @AuraEnabled
    public static List<User> soqlInjectionExampleWithParam(String str) {
        String squery = 'Select Id, Name from User Where UserName like  \'%' + str + '%'; 
		List<User> users =  Database.query(squery);
        return users;
    }

    public static List<Account> soqlWithOutWhereClause() {
       List<Account> accounts = [Select Id, Name from Account ];
        return accounts;
    }
   
	public static List<Asset> soqlWithMultipleLevelRelationships() {
        List<Asset> assets = [Select Id, Contact__r.Account.Name, Contact__r.Name, NE__Order_Config__r.NE__Order_Header__r.DA_Contact__r.Account.CreatedBy.CreatedBy.Name from Asset Limit 100000];
         return assets;
     }
	 
     public static List<Asset> soqlWithMoreThen50KRecords() {
        List<Asset> assets = [Select Id, Name from Asset Limit 100000];
         return assets;
     }
}
