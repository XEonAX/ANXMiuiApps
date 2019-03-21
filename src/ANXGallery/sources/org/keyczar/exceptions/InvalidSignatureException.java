package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class InvalidSignatureException extends KeyczarException {
    private static final long serialVersionUID = -9209043556761224393L;

    public InvalidSignatureException() {
        super(Messages.getString("InvalidSignatureException", new Object[0]));
    }
}
