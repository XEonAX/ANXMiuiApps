package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class BadVersionException extends KeyczarException {
    private static final long serialVersionUID = 7164364283899332453L;

    public BadVersionException(byte b) {
        super(Messages.getString("BadVersionNumber", Byte.valueOf(b)));
    }
}
