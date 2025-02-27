@IsTest
private class MyClassTest {

    static testMethod void testGetMethodPositive(){
        RestRequest request = new RestRequest();
        request.requestUri ='/services/data/v61.0/ui-api/list-ui/00BR0000000Wc0rMAC';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account acct = MyFirstRestAPIClass.doGet();
        System.assert(acct != null);
        System.assertEquals('Test', acct.Name);

    }

    static testMethod void testGetMethodNegative(){
            RestRequest request = new RestRequest();
            request.requestUri ='/services/data/v61.0/ui-api/list-info/00BR0000000Wc0rMAC';
            request.httpMethod = 'GET';
            RestContext.request = request;
            Account acct = MyFirstRestAPIClass.doGet();
            System.assert(acct != null);
            System.assertEquals('Test', acct.Name);

        }

    static testMethod void testGetMethod(){
        Account acc = new Account();
        acc.Name='Test';
        acc.AccountNumber ='12345';
        insert acc;

        RestRequest request = new RestRequest();
        request.requestUri ='/services/apexrest/api/Account/12345';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account acct = MyFirstRestAPIClass.doGet();
        System.assert(acct != null);
        System.assertEquals('Test', acct.Name);

    }

    static testMethod void testPostMethod(){
        RestRequest request = new RestRequest();
        request.requestUri ='/services/apexrest/api/Account/12345';
        request.httpMethod = 'POST';
        RestContext.request = request;
        String strId = MyFirstRestAPIClass.doPost('Amit','2345678','12345');
        System.assert(strId !=null );
    }

    static testMethod void testDeleteMethod(){
        Account acc = new Account();
        acc.Name='Test';
        acc.AccountNumber ='12345';
        insert acc;

        RestRequest request = new RestRequest();
        request.requestUri ='/services/apexrest/api/Account/12345';
        request.httpMethod = 'DELETE';
        RestContext.request = request;
        MyFirstRestAPIClass.doDelete();

        List<Account> ListAcct = [SELECT Id FROM Account WHERE Id=:acc.id];
        System.assert(ListAcct.size() ==0 );
    }




}
