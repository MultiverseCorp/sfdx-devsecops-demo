public class DMLsInLoops {
    public static void insertsInForLoops() {
        // direct method call:

        for (Integer i = 0; i < 10; i++) {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = 'test_' + i) });
        }

        // with one additional method call:

        for (Integer i = 0; i < 10; i++) {
            parentInsert1('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            new TestDML().insert1('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            ITestDML t = new TestDML();
            t.insert1('test_' + i);
        }

        // with two additional method calls:

        for (Integer i = 0; i < 10; i++) {
            parentInsert2('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            parentInsert2_child('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            new TestDML().insert2('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            ITestDML t = new TestDML();
            t.insert2('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            new TestDML().insert2_parent('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            new TestDML().insert2_other('test_' + i);
        }

        for (Integer i = 0; i < 10; i++) {
            ITestDML t = new TestDML();
            t.insert2_other('test_' + i, new TestDML2());
        }
    }

    public static void insertsInForEachLoops() {
        // direct method call:

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = name) });
        }

        // with one additional method call:

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            parentInsert1(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            new TestDML().insert1(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            ITestDML t = new TestDML();
            t.insert1(name);
        }

        // with two additional method calls:

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            parentInsert2(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            parentInsert2_child(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            new TestDML().insert2(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            ITestDML t = new TestDML();
            t.insert2(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            new TestDML().insert2_parent(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            new TestDML().insert2_other(name);
        }

        for (String name : new List<String> { 'test_1', 'test_2' }) {
            ITestDML t = new TestDML();
            t.insert2_other(name, new TestDML2());
        }
    }

    public static void insertsInWhileLoops() {
        // direct method call:

        Integer i = 0;
        while (i < 10) {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = 'test_' + i) });
            i++;
        }

        // with one additional method call:

        i = 0;
        while (i < 10) {
            parentInsert1('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            new TestDML().insert1('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            ITestDML t = new TestDML();
            t.insert1('test_' + i);
            i++;
        }

        // with two additional method calls:

        i = 0;
        while (i < 10) {
            parentInsert2('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            parentInsert2_child('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            new TestDML().insert2('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            ITestDML t = new TestDML();
            t.insert2('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            new TestDML().insert2_parent('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            new TestDML().insert2_other('test_' + i);
            i++;
        }

        i = 0;
        while (i < 10) {
            ITestDML t = new TestDML();
            t.insert2_other('test_' + i, new TestDML2());
            i++;
        }
    }

    public static void insertsInDoWhileLoops() {
        // direct method call:

        Integer i = 0;
        do {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = 'test_' + i) });
            i++;
        } while (i < 10);

        // with one additional method call:

        i = 0;
        do {
            parentInsert1('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            new TestDML().insert1('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            ITestDML t = new TestDML();
            t.insert1('test_' + i);
            i++;
        } while (i < 10);

        // with two additional method calls:

        i = 0;
        do {
            parentInsert2('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            parentInsert2_child('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            new TestDML().insert2('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            ITestDML t = new TestDML();
            t.insert2('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            new TestDML().insert2_parent('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            new TestDML().insert2_other('test_' + i);
            i++;
        } while (i < 10);

        i = 0;
        do {
            ITestDML t = new TestDML();
            t.insert2_other('test_' + i, new TestDML2());
            i++;
        } while (i < 10);
    }

    private static void parentInsert1(String name) {
        Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = name) });
    }

    private static void parentInsert2(String name) {
        parentInsert1(name);
    }

    private static void parentInsert2_child(String name) {
        new TestDML().insert1(name);
    }

    private interface ITestDML {
        void insert1(String name);
        void insert2(String name);
        void insert2_other(String name);
        void insert2_other(String name, ITestDML other);
    }

    private class TestDML implements ITestDML {
        public void insert1(String name) {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = name) });
        }

        public void insert2(String name) {
            insert1(name);
        }

        public void insert2_parent(String name) {
            parentInsert1(name);
        }

        public void insert2_other(String name) {
            new TestDML2().insert1(name);
        }

        public void insert2_other(String name, ITestDML other) {
            other.insert1(name);
        }
    }

    private class TestDML2 implements ITestDML {
        public void insert1(String name) {
            Framework.SObjectService.insertRecords(new List<SObject> { new Account(Name = name) });
        }

        public void insert2(String name) {
            insert1(name);
        }

        public void insert2_other(String name) {
            new TestDML().insert1(name);
        }

        public void insert2_other(String name, ITestDML other) {
            other.insert1(name);
        }
    }
}
