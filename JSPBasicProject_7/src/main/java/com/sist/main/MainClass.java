package com.sist.main;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;

public class MainClass {

	public static void main(String[] args) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		String name="임현서";
		System.out.println(URLEncoder.encode(name,"UTF-8"));
	}

}
