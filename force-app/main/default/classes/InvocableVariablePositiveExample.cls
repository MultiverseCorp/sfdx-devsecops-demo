public class InvocableVariablePositiveExample {

    public class MyInvocableVariable {
        @InvocableVariable(
            label='Notes'
            description='Additional notes for processing.'
        )
        public String notes;
    }

    // Example Apex method with defaultValue and placeholderText modifiers
    @InvocableMethod(
        label='Process Account'
        description='Process an account record.'
    )
    public static void processAccount(List inputs) {
        // Your logic here
    }
}
