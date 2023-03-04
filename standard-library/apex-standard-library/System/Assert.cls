global class Assert {
	public static void areEqual(Object expected, Object actual, String msg) {}
	public static void areEqual(Object expected, Object actual) {}
	public static void areNotEqual(Object notExpected, Object actual, String msg) {}
	public static void areNotEqual(Object notExpected, Object actual) {}
	public static void fail(String msg) {}
	public static void fail() {}
	public static void isFalse(Boolean condition, String msg) {}
	public static void isFalse(Boolean condition) {}
	public static void isInstanceOfType(Object instance, System.Type expectedType, String msg) {}
	public static void isInstanceOfType(Object instance, System.Type expectedType) {}
	public static void isNotInstanceOfType(Object instance, System.Type notExpectedType, String msg) {}
	public static void isNotInstanceOfType(Object instance, System.Type notExpectedType) {}
	public static void isNotNull(Object value, String msg) {}
	public static void isNotNull(Object value) {}
	public static void isNull(Object value, String msg) {}
	public static void isNull(Object value) {}
	public static void isTrue(Boolean condition, String msg) {}
	public static void isTrue(Boolean condition) {}
}