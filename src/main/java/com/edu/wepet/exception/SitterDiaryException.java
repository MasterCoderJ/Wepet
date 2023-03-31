package com.edu.wepet.exception;

public class SitterDiaryException extends RuntimeException {

	public SitterDiaryException(String msg) {
		super(msg);
	}
	public SitterDiaryException(String msg, Throwable e) {
		super(msg, e);
	}
	
}
