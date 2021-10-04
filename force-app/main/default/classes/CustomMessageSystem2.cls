public class CustomMessageSystem2 {
    @AuraEnabled
    public String subject {get;set;}

    @AuraEnabled
    public String message {get;set;}

    public CustomMessageSystem2(String subject, String message) {
        this.subject = subject;
        this.message = message;
    }
    
    public void sendEmail(Messaging.Email[] emails){
        //My custom code for sending email here
    }
}
