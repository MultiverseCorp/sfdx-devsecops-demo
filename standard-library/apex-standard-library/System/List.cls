global class List {
	public List<Object>(List<Object> listToCopy) {}
	public List<Object>(Set<Object> setToCopy) {}
	public Void add(Integer index, Object listElement) {}
	public Void addAll(List fromList) {}
	public Void addAll(Set fromSet) {}
	public Void clear() {}
	public List<Object> clone() {}
	public Boolean contains(Object listElement) {}
	public List<Object> deepClone(){}
	public List<Object> deepClone(Boolean preserveId){}
	public List<Object> deepClone(Boolean preserveId, Boolean preserveReadonlyTimestamps){}
	public List<Object> deepClone(Boolean preserveId, Boolean preserveReadonlyTimestamps, Boolean preserveAutonumber){}
	public Boolean equals(List list2) {}
	public Object get(Integer index) {}
	public Schema.SObjectType getSObjectType() {}
	public Integer hashCode() {}
	public Integer indexOf(Object listElement) {}
	public Boolean isEmpty() {}
	public Iterator iterator() {}
	public Object remove(Integer index) {}
	public Void set(Integer index, Object listElement) {}
	public Integer size() {}
	public Void sort() {}
	public String toString() {}
}