package com.edu.wepet.exception;

public class SitterCertificateException extends RuntimeException {

	public SitterCertificateException(String msg) {
		super(msg);
	}
	public SitterCertificateException(String msg, Throwable e) {
		super(msg, e);
	}
	
}
