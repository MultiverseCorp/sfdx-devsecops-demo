@IsTest
public class MyClassTest {

    @testSetup
    static void testSetup() {

        //Account
	List<Account> lstAcc = new AccountTestModule.AccountBuilder()
        	.withName('Test Account')
                .withAccountNumber('2100213')
                .withBillingCountry('Germany')
                .withBillingId('AccBillingDE')
                .withRecordTypeBillingAccount()
                .withCountryCode('DE')
                .buildAndSave(1);

	//Contact
	List<Contact> lstCont = new ContactTestModule.ContactBuilder()
                .withAccountId(lstAcc[0].Id)
                .withFirstName('Test1')
                .withLastName('Contact')
                .withEmail('test1@email.com')
                .withEgcid('egcidDE')
                .build(3);
    }
}
