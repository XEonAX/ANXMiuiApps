package com.xiaomi.micloudsdk.utils;

import com.xiaomi.micloudsdk.exception.CipherException;

public interface CryptCoder {
    String decrypt(String str) throws CipherException;

    String encrypt(String str) throws CipherException;
}
