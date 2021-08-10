public class ApexServerSidePayloadInjectionHttpRequestPositive {

    @AuraEnabled
    public static String checkValidity(String number,String name) {
        String JsonString = '{"name":"' + name + '","token":"' + accessToken + '","number":"' + number + '"}';

        HttpRequest req = new HttpRequest();
        req.setEndpoint('http://www.yahoo.com');
        req.setMethod('POST');

        req.setBody(JsonString);
        Http http = new Http();
        HTTPResponse res = http.send(req);
    }

    @AuraEnabled
    public static String checkValidity2(String number,String name, String endpoint) {
        String JsonString = '{"name":"' + name + '","token":"' + accessToken + '","number":"' + number + '"}';

        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('POST');

        req.setBody(JsonString);
        Http http = new Http();
        HTTPResponse res = http.send(req);
    }

}
