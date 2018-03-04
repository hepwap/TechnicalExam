package com.spingboot.model;

public class Name {
	private String last;

	private String middle;

	private String first;

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getMiddle() {
		return middle;
	}

	public void setMiddle(String middle) {
		this.middle = middle;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	@Override
	public String toString() {
		return "Name [last = " + last + ", middle = " + middle + ", first = " + first + "]";
	}
}