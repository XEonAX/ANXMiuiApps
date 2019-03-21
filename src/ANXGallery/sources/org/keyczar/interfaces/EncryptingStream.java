package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public interface EncryptingStream extends Stream {
    int doFinalEncrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException;

    SigningStream getSigningStream() throws KeyczarException;

    int initEncrypt(ByteBuffer byteBuffer) throws KeyczarException;

    int maxOutputSize(int i);

    int updateEncrypt(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws KeyczarException;
}
