@IsTest

public with sharing class CandidateControllerTest {
   
    @IsTest
    static void myCustomTest() {
        String s = "some value";
        // my custom test logic here...
        
        System.assert(!String.isEmpty(s), "Test message");
    }
}
