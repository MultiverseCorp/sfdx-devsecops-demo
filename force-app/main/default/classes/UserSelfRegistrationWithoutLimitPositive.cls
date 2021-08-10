public class UserSelfRegistrationWithoutLimitPositive {

    @AuraEnabled
    public void addUser(String username, String email) {
        User u = new User(
            Email = email,
            Username = username
        );
        insert u;
    }

    @AuraEnabled
    public void addOrUpdateUser(String username, String email) {
        User u = new User(
            Email = email,
            Username = username
        );
        upsert u;
    }

    @AuraEnabled
    public void updateUser(String username, String email) {
        User u = [SELECT Id, Name, Email FROM User WHERE Email = :email];
        update u;
    }


    @AuraEnabled
    public void addLead(String firstName, String lastName, String email) {
        Lead l = new Lead(
            Email = email,
            FirstName = firstName,
            LastName = lastName,
        );
        insert l;
    }
}