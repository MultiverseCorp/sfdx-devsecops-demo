@IsTest
public class MyClassTest {

    @testSetup
    static void testSetup() {

        //Account
        List<Account> lstAcc = DA_TestDataFactory.makeAccounts(1);
        lstAcc[0].BillingCountryCode = 'DE';
        lstAcc[0].Billing_Id__c = 'AccBillingDE';
        lstAcc[0].BillingStreet = 'BillingStreet2';
        //lstAcc[0].BillingState = 'BillingState2';
        lstAcc[0].BillingPostalCode = 'BillingPostalCode';
        lstAcc[0].BillingCity = 'BillingCity';
        insert lstAcc;

	//Contact
        List<Contact> lstCont = DA_TestDataFactory.makeContacts(lstAcc[0].Id, 3);
        lstCont[0].Billing_ID_Contacts__c = 'ConBillingDE';
        lstCont[0].MailingCountryCode = 'DE';
        lstCont[0].DA_EGCID__c = 'egcidDE';
        lstCont[0].Phone = '1234567890';
        lstCont[0].FirstName = 'FirstName';
        lstCont[0].LastName = 'LastName';
        lstCont[0].Salutation = 'Mr.';
        lstCont[0].MobilePhone = '07960670270';
        lstCont[0].DA_DateOfBirth__c = System.today().addYears(-20);

        lstCont[1].Billing_ID_Contacts__c = 'ConBillingGB';
        lstCont[1].MailingCountryCode = 'GB';
        lstCont[1].DA_EGCID__c = 'egcidGB';
        lstCont[1].Phone = '1234567890';
        lstCont[2].Billing_ID_Contacts__c = null;
        lstCont[2].MailingCountryCode = null;
        lstCont[2].DA_EGCID__c = null;
        lstCont[2].Phone = '1234567890';
        insert lstCont;
    }
}
