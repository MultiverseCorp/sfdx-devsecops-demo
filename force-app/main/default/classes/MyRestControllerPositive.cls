@RestResource(urlMapping='/accounts/*')
global with sharing class MyRestControllerPositive {
    @HttpGet
    global static void getAccounts() {
        RestResponse res = RestContext.response;
        try {
            List<Account> accounts = [SELECT Id, Name FROM Account];
            res.responseBody = Blob.valueOf(JSON.serialize(accounts));
            res.statusCode = 200;
            res.addHeader('not-valid-rfc-header/name', 'a value');
        } catch (Exception e) {
            res.responseBody = Blob.valueOf(e.getMessage());
            res.statusCode = 500;
        }
    }
}
