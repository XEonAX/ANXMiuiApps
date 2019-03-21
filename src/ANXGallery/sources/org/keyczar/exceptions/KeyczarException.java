package org.keyczar.exceptions;

public class KeyczarException extends Exception {
    private static final long serialVersionUID = 7893435087558002323L;

    public KeyczarException(String str) {
        super(str);
    }

    public KeyczarException(String str, Throwable th) {
        super(str, th);
    }

    public KeyczarException(Throwable th) {
        super(th);
    }
}
