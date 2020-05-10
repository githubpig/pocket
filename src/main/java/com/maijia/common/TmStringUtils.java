package com.maijia.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

public class TmStringUtils {
	public static int DEFAULT_BUFFER_SIZE = 1024;

	public static String conversionSpecialCharacters(String string) {
		return string.replaceAll("\\\\", "/");
	}

	public static Boolean stringToBoolean(String booleanString) {
		if (TmStringUtils.isNotEmpty(booleanString)
				&& booleanString.equals("true")) {
			return true;
		} else {
			return false;
		}
	}
	public static boolean isNotEmpty(String str) {
		return !isEmpty(str);
	}
	public static boolean isEmpty(String str) {
		return str == null || str.length() == 0 || str.equals("")
				|| str.matches("\\s*");
	}
	public static String md5Base64(String str) {
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			return base64Encode(md5.digest(str.getBytes()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static String base64Encode(byte[] b) {
		if (b == null) {
			return null;
		}
		return new BASE64Encoder().encode(b);
	}
}