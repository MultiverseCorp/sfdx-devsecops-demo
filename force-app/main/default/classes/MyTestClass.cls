@isTest
private class MyTestClass {

   // Methods for testing the new messaging system framework
   @isTest static void test1() {

        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        String[] toAddresses = new String[] {'user@acme.com'}; 
        String[] ccAddresses = new String[] {'smith@gmail.com'};

        mail.setToAddresses(toAddresses);
        mail.setCcAddresses(ccAddresses);

        mail.setReplyTo('support@acme.com');
        mail.setSenderDisplayName('Salesforce Support');
        mail.setSubject('New Case Created : ' + case.Id);

        mail.setBccSender(false);
        mail.setUseSignature(false);

        mail.setPlainTextBody('Your Case: ' + case.Id +' has been created.');
        mail.setHtmlBody('Your case:<b> ' + case.Id +' </b>has been created.<p>'+
            'To view your case <a href=https://yourInstance.salesforce.com/'+case.Id+'>click here.</a>');
        
        Messaging m;

        m.sendEmail(new Messaging.SingleEmailMessage[] { mail });
   }

   @isTest static void test2(String subject, String message) {
      CustomMessageSystem cms = new CustomMessageSystem (subject, message);
      
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        String[] toAddresses = new String[] {'user@acme.com'}; 
        String[] ccAddresses = new String[] {'smith@gmail.com'};

        mail.setToAddresses(toAddresses);
        mail.setCcAddresses(ccAddresses);

        mail.setReplyTo('support@acme.com');
        mail.setSenderDisplayName('Salesforce Support');
        mail.setSubject('New Case Created : ' + case.Id);

        mail.setBccSender(false);
        mail.setUseSignature(false);

        mail.setPlainTextBody('Your Case: ' + case.Id +' has been created.');
        mail.setHtmlBody('Your case:<b> ' + case.Id +' </b>has been created.<p>'+
            'To view your case <a href=https://yourInstance.salesforce.com/'+case.Id+'>click here.</a>');
      
      cms.sendEmail(new Messaging.SingleEmailMessage[] { mail });
   }

}
