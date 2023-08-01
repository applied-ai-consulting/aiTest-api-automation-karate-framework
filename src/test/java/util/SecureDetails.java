package util;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.util.Base64;

public class SecureDetails {
	
	private final static byte[] IS_KEY_BYTES = new byte[] { 'K', 'e', 'y', 'C', '0', 'r', 't', 'e', 'x', 'D', 'e', 't',
			'@', 'i', 'l', 's' };
			private final static String SECURE_TYPE = "AES";
			private final static Key IS_KEY = new SecretKeySpec(IS_KEY_BYTES, SECURE_TYPE);

			public static String getEncryptedString(String stringToBeEncoded) {
			String encryptedString = null;
			try {
			Cipher enCipher = Cipher.getInstance(SECURE_TYPE);
			enCipher.init(Cipher.ENCRYPT_MODE, IS_KEY);
			byte[] encryptedBytes = enCipher.doFinal(stringToBeEncoded.getBytes());
			encryptedString = Base64.getEncoder().encodeToString(encryptedBytes);
			} catch (Exception e) {
			//log.error(ENCODE_ERROR + e.getMessage());
			}
			return encryptedString;
			}

			public String getDecryptedString(String stringToBeDecoded) {
			String decryptedString = null;
			try {
			Cipher decipher = Cipher.getInstance(SECURE_TYPE);
			decipher.init(Cipher.DECRYPT_MODE, IS_KEY);
			byte[] decryptedBytes = Base64.getDecoder().decode(stringToBeDecoded);
			byte[] decryptedData = decipher.doFinal(decryptedBytes);
			decryptedString = new String(decryptedData);
			} catch (Exception e) {
			//log.error(DECODE_ERROR + e.getMessage());
			}
			return decryptedString;
			}

			public static void main(String[] args) {
			// String encryptString = EMPTY_STRING; // Add string to be encrypted/ decrypted
			// within the quotes
//			 System.out.println("Encrypted Text : " + getEncryptedString("test));
			// System.out.println("Decrypted Text : " + getDecryptedString("test"));
	}
			
}
