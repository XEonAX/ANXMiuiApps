package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public interface VerifyingStream extends Stream {
    int digestSize();

    void initVerify() throws KeyczarException;

    void updateVerify(ByteBuffer byteBuffer) throws KeyczarException;

    boolean verify(ByteBuffer byteBuffer) throws KeyczarException;
}
