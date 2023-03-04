global class Set {
	public Set<Object>(List<Object> listToCopy) {}
	public Set<Object>(Set<Object> setToCopy) {}
	public Void addAll(List fromList) {}
	public Void addAll(Set fromSet) {}
	public Void clear() {}
	public Set<Object> clone() {}
	public Boolean contains(Object element) {}
	public Boolean containsAll(Set<Object> setToCompare) {}
	public Set<Object> deepClone(){}
	public Set<Object> deepClone(Boolean preserveId){}
	public Set<Object> deepClone(Boolean preserveId, Boolean preserveReadonlyTimestamps){}
	public Set<Object> deepClone(Boolean preserveId, Boolean preserveReadonlyTimestamps, Boolean preserveAutonumber){}
	public Boolean equals(Set<Object> set2) {}	
	public Integer hashCode() {}
	public Boolean isEmpty() {}
	public Iterator iterator() {}
	public Object remove(Integer index) {}
	public Boolean removeAll(List<Object> listOfElementsToRemove) {}
	public Boolean removeAll(Set<Object> setOfElementsToRemove) {}
	public Boolean retainAll(List<Object> listOfElementsToRetain) {}
	public Boolean retainAll(Set setOfElementsToRetain) {}
	public Integer size() {}
	public String toString() {}
}