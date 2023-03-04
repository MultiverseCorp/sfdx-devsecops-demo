global class Datetime {
	public Datetime addHours(Integer additionalHours) {}
	public Datetime addMinutes(Integer additionalMinutes) {}
	public Datetime addMonths(Integer additionalMonths) {}
	public Datetime addSeconds(Integer additionalSeconds) {}
	public Datetime addYears(Integer additionalYears) {}
	public Date date() {}
	public Date dateGMT() {}
	public Integer day() {}
	public Integer dayGmt() {}
	public Integer dayOfYear() {}
	public Integer dayOfYearGmt() {}
	public String format() {}
	public String format(String dateFormatString) {}
	public String format(String dateFormatString, String timezone) {}
	public String formatGmt(String dateFormatString) {}
	public String formatLong() {}
	public static Datetime newInstanceGmt(Integer year, Integer month, Integer date, Integer hour, Integer minute, Integer second) {}
	public static Datetime now() {}
	public static Datetime parse(String datetimeString) {}
	public Integer second() {}
	public Integer secondGmt() {}
	public Time time() {}
	public Time timeGmt() {}
	public static Datetime valueOf(String dateTimeString) {}
	public static Datetime valueOf(Object fieldValue) {}
	public static Datetime valueOfGmt(String dateTimeString) {}
	public Integer year() {}
	public Integer yearGmt() {}
}