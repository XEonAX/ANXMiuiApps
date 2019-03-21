package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;

public class ShortCiphertextException extends KeyczarException {
    private static final long serialVersionUID = 7512790265291518499L;

    public ShortCiphertextException(int i) {
        super(Messages.getString("CiphertextTooShort", Integer.valueOf(i)));
    }
}
