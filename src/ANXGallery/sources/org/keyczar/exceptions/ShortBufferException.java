package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class ShortBufferException extends KeyczarException {
    private static final long serialVersionUID = -3056628233532649L;

    public ShortBufferException(int i, int i2) {
        super(Messages.getString("InputBufferTooShort", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public ShortBufferException(Throwable th) {
        super(th);
    }
}
