public class InvocableVariableNegativeExample {

    public class MyInvocableVariable {
        @InvocableVariable(
            label='Notes'
            description='Additional notes for processing.'
            placeholderText='Enter notes here...'
            defaultValue='Account notes'
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
