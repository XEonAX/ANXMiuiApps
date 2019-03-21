package org.keyczar;

import org.keyczar.exceptions.KeyczarException;
import org.keyczar.interfaces.EncryptedReader;
import org.keyczar.interfaces.KeyczarReader;

public class KeyczarEncryptedReader implements EncryptedReader {
    private Crypter crypter;
    private KeyczarReader reader;

    public KeyczarEncryptedReader(KeyczarReader keyczarReader, Crypter crypter) {
        this.reader = keyczarReader;
        this.crypter = crypter;
    }

    public String getKey() throws KeyczarException {
        return this.crypter.decrypt(this.reader.getKey());
    }

    public String getKey(int i) throws KeyczarException {
        return this.crypter.decrypt(this.reader.getKey(i));
    }

    public String getMetadata() throws KeyczarException {
        return this.reader.getMetadata();
    }
}
