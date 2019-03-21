package org.keyczar.i18n;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.keyczar.annotations.ForTesting;

public class Messages {
    private static Map<String, String> stringMap = new HashMap<String, String>() {
        {
            put("CiphertextTooShort", "Input of length {0} is too short to be valid ciphertext");
            put("InputBufferTooShort", "Input buffer is too short. Given: {0} bytes. Need: {1}");
            put("BadVersionNumber", "Received a bad version number: {0}");
            put("SignatureTooShort", "Input of length {0} is too short to be valid signature");
            put("NoPrimaryKeyFound", "No primary key found");
            put("InvalidSignatureException", "Invalid ciphertext signature.");
            put("KeyWithHashIdentifier", "Key with hash identifier {0} not found");
            put("Signer.Signing", "Signing {0} bytes ");
            put("InvalidTypeInInput", "Invalid type in input: {0}");
            put("InvalidPadding", "Invalid padding {0} specified for key");
            put("Verifier.Verifying", "Verifying {0} bytes");
            put("Base64Coder.IllegalLength", "Input source is of illegal length: {0}");
            put("Base64Coder.IllegalCharacter", "Illegal character in Base64 string: {0}");
            put("Encrypter.Encrypting", "Encrypting {0} bytes.");
            put("Crypter.Decrypting", "Decrypting {0} bytes.");
            put("HybridDecrypter.InvalidSessionKey ", "Invalid hybrid session key");
            put("HybridDecrypter.InvalidCiphertext ", "Invalid hybrid ciphertext");
            put("AesKey.InvalidPackedKey", "Invalid packed key");
            put("KeyczarFileReader.FileError", "Error reading file: {0}");
            put("KeyczarKey.PublicKeyExport", "Public keys of type {0} must be exported from private keys.");
            put("Keyczar.UnacceptablePurpose", "Unacceptable purpose: {0}");
            put("Keyczar.NeedEncryptedReader", "Must use an EncryptedReader to read  encrypted key sets.");
            put("Keyczar.SinglePrimary", "Key sets may only have a single primary version");
            put("Keyczar.ReadVersion", "Read version: {0}");
            put("Keyczar.SizeWarning", "WARNING: {0}-bit key size is less than the recommended default key size of {1} bits for {2} keys.");
            put("Keyczar.NewVersion", "Created new version: {0}");
            put("Keyczar.PromotedVersion", "Promoting version: {0}");
            put("Keyczar.CantPromotePrimary", "Can't promote a primary key.");
            put("Keyczar.DemotingVersion", "Demoting version: {0} ");
            put("Keyczar.CantDemoteScheduled", "Can't demote an inactive key.");
            put("Keyczar.CantRevoke", "Can't revoke key unless inactive.");
            put("Keyczar.NoSuchVersion", "No such version number: {0}");
        }
    };

    private Messages() {
    }

    @ForTesting
    public static void changeLocale(Locale locale) {
    }

    public static String getString(String str, Object... objArr) {
        String str2 = (String) stringMap.get(str);
        return str2 == null ? str : MessageFormat.format(str2, objArr);
    }
}
