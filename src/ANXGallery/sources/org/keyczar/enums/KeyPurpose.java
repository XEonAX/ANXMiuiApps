package org.keyczar.enums;

import com.miui.gallery.assistant.jni.filter.BaiduSceneResult;

public enum KeyPurpose {
    DECRYPT_AND_ENCRYPT(0, "crypt"),
    ENCRYPT(1, "encrypt"),
    SIGN_AND_VERIFY(2, "sign"),
    VERIFY(3, "verify"),
    TEST(BaiduSceneResult.BANK_CARD, "test");
    
    private String name;
    private int value;

    private KeyPurpose(int i, String str) {
        this.value = i;
        this.name = str;
    }

    int getValue() {
        return this.value;
    }

    String getName() {
        return this.name;
    }

    public static KeyPurpose getPurpose(int i) {
        switch (i) {
            case 0:
                return DECRYPT_AND_ENCRYPT;
            case 1:
                return ENCRYPT;
            case 2:
                return SIGN_AND_VERIFY;
            case 3:
                return VERIFY;
            case BaiduSceneResult.BANK_CARD /*127*/:
                return TEST;
            default:
                return null;
        }
    }

    public static KeyPurpose getPurpose(String str) {
        if (str != null) {
            if (str.equalsIgnoreCase(DECRYPT_AND_ENCRYPT.getName())) {
                return DECRYPT_AND_ENCRYPT;
            }
            if (str.equalsIgnoreCase(ENCRYPT.getName())) {
                return ENCRYPT;
            }
            if (str.equalsIgnoreCase(SIGN_AND_VERIFY.getName())) {
                return SIGN_AND_VERIFY;
            }
            if (str.equalsIgnoreCase(VERIFY.getName())) {
                return VERIFY;
            }
            if (str.equalsIgnoreCase(TEST.getName())) {
                return TEST;
            }
        }
        return null;
    }
}
