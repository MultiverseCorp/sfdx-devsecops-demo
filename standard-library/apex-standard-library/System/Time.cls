global class Time {
	public Time addHours(Integer additionalHours) {}
	public Time addMilliseconds(Integer additionalMilliseconds) {}
	public Time addMinutes(Integer additionalMinutes) {}
	public Time addSeconds(Integer additionalSeconds) {}
	public Integer hour() {}
	public Integer millisecond() {}
	public Integer minute() {}
	public static Time newInstance(Integer hour, Integer minutes, Integer seconds, Integer milliseconds) {}
	public Integer second() {}
}