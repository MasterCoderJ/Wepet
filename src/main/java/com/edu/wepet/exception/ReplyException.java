package com.edu.wepet.exception;

public class ReplyException extends RuntimeException{
	
	public ReplyException(String msg) {
		super(msg);
	}
	public ReplyException(String msg, Throwable e) {
		super(msg, e);
	}
}
