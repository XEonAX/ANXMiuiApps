package org.keyczar.exceptions;

import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;

public class UnsupportedTypeException extends KeyczarException {
    private static final long serialVersionUID = 1;

    public UnsupportedTypeException(KeyType keyType) {
        super(Messages.getString("InvalidTypeInInput", keyType));
    }
}
