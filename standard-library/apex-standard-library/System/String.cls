global class String {
	public String abbreviate(Integer maxWidth) {}
	public String capitalize() {}
	public String center(Integer size, String paddingString) {}
	public Integer codePointAt(Integer index) {}
	public Integer codePointBefore(Integer index) {}
	public Integer codePointCount(Integer beginIndex, Integer endIndex) {}
	public Integer compareTo(String secondString) {}
	public Boolean contains(String substring) {}
	public Boolean containsIgnoreCase(String substring) {}
	public Boolean containsOnly(String inputString) {}
	public Boolean containsWhitespace() {}
	public String deleteWhitespace() {}
	public String difference(String secondString) {}
	public Boolean endsWith(String suffix) {}
	public Boolean equals(String secondString) {}
	public Boolean equals(Object stringOrId) {}
	public Boolean equalsIgnoreCase(String secondString) {}
	public String escapeEcmaScript() {}
	public String escapeHtml4() {}
	public static String escapeSingleQuotes(String stringToEscape) {}
	public String escapeUnicode() {}
	public String escapeXml() {}
	public static String format(String stringToFormat, List<Object> formattingArguments) {}
	public List<Integer> getChars() {}
	public Integer getLevenshteinDistance(String stringToCompare) {}
	public Integer indexOf(String substring) {}
	public Integer indexOfAny(String substring) {}
	public Integer indexOfChar(Integer character) {}
	public Integer indexOfChar(Integer character, Integer startIndex) {}
	public Integer indexOfDifference(String stringToCompare) {}
	public Integer indexOfIgnoreCase(String substring, Integer startPosition) {}
	public Boolean isAllLowerCase() {}
	public Boolean isAllUpperCase() {}
	public Boolean isAlpha() {}
	public Boolean isAlphaSpace() {}
	public Boolean isAlphanumeric() {}
	public Boolean isAsciiPrintable() {}
	public static Boolean isBlank(String inputString) {}
	public static Boolean isEmpty(String inputString) {}
	public static Boolean isNotBlank(String inputString) {}
	public static Boolean isNotEmpty(String inputString) {}
	public Boolean isNumeric() {}
	public Boolean isNumericSpace() {}
	public Boolean isWhitespace() {}
	public static String join(Object iterableObj, String separator) {}
	public Integer lastIndexOf(String substring) {}
	public Integer lastIndexOf(String substring, Integer endPosition) {}
	public Integer lastIndexOfChar(Integer character) {}
	public Integer lastIndexOfChar(Integer character, Integer endIndex) {}
	public Integer lastIndexOfIgnoreCase(String substring) {}
	public Integer lastIndexOfIgnoreCase(String substring, Integer endPosition) {}
	public String left(Integer length) {}
	public String leftPad(Integer length) {}
	public String leftPad(Integer length, String padStr) {}
	public Integer length() {}
	public String mid(Integer startIndex, Integer length) {}
	public String normalizeSpace() {}
	public Integer offsetByCodePoints(Integer index, Integer codePointOffset) {}
	public String remove(String substring) {}
	public String removeEnd(String substring) {}
	public String removeEndIgnoreCase(String substring) {}
	public String removeStart(String substring) {}
	public String removeStartIgnoreCase(String substring) {}
	public String repeat(Integer numberOfTimes) {}
	public String repeat(String separator, Integer numberOfTimes) {}
	public String replace(String target, String replacement) {}
	public String replaceAll(String regExp, String replacement) {}
	public String replaceFirst(String regExp, String replacement) {}
	public String reverse() {}
	public String right(Integer length) {}
	public String rightPad(Integer length) {}
	public String rightPad(Integer length, String padStr) {}
	public String[] split(String regExp) {}
	public String[] split(String regExp, Integer limit) {}
	public List<String> splitByCharacterType() {}
	public List<String> splitByCharacterTypeCamelCase() {}
	public Boolean startsWith(String prefix) {}
	public Boolean startsWithIgnoreCase(String prefix) {}
	public String stripHtmlTags(String htmlInput) {}
	public String substring(Integer startIndex) {}
	public String substring(Integer startIndex, Integer endIndex) {}
	public String substringAfter(String separator) {}
	public String substringAfterLast(String separator) {}
	public String substringBefore(String separator) {}
	public String substringBeforeLast(String separator) {}
	public String substringBetween(String tag) {}
	public String substringBetween(String open, String close) {}
	public String swapCase() {}
	public String toLowerCase() {}
	public String toLowerCase(String locale) {}
	public String toUpperCase() {}
	public String toUpperCase(String locale) {}
	public String trim() {}
	public String uncapitalize() {}
	public String unescapeCsv() {}
	public String unescapeEcmaScript() {}
	public String unescapeHtml3() {}
	public String unescapeHtml4() {}
	public String unescapeJava() {}
	public String unescapeUnicode() {}
	public String unescapeXml() {}
	public static String valueOf(Date dateToConvert) {}
	public static String valueOf(Datetime datetimeToConvert) {}
	public static String valueOf(Decimal decimalToConvert) {}
	public static String valueOf(Double doubleToConvert) {}
	public static String valueOf(Integer integerToConvert) {}
	public static String valueOf(Long longToConvert) {}
	public static String valueOf(Object toConvert) {}
	public static String valueOfGmt(Datetime datetimeToConvert) {}
}