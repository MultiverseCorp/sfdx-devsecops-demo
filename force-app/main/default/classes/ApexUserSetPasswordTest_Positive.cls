public class ApexUserSetPasswordTest_Positive {

    public void updatedUserPasswordWithHardcodedOne(User u){
        System.setPassword(u.Id, "ridicously-smart-hardcoded-password")
    }

    @AuraEnabled
    public User createUserWithPassword(String aPassword){
        User u = new User();
        insert u;
        System.setPassword(u.Id, aPassword);
    }
}
