package org.keyczar.interfaces;

import java.nio.ByteBuffer;
import org.keyczar.exceptions.KeyczarException;

public interface SigningStream extends Stream {
    int digestSize();

    void initSign() throws KeyczarException;

    void sign(ByteBuffer byteBuffer) throws KeyczarException;

    void updateSign(ByteBuffer byteBuffer) throws KeyczarException;
}
