package com.edu.wepet.util;


import java.util.Base64;


public class Encoding {

	public Object encoding(String content) {
		String testText = content;	
		byte[] testToByte = testText.getBytes();
		
		//자바 8 기본 Base64 Encoder Decoder
		java.util.Base64.Encoder encode = Base64.getEncoder();
		
		//Base64 인코딩
		byte[] encodeByte = encode.encode(testToByte);
		
		System.out.println("인코딩 전: "+ testText);
		System.out.println("인코딩: "+ new String(encodeByte));
		
		
		return encodeByte;
	}
	
}
