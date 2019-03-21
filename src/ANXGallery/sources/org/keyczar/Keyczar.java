package org.keyczar;

import java.util.HashMap;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.EncryptedReader;
import org.keyczar.interfaces.KeyczarReader;
import org.keyczar.util.Util;

public abstract class Keyczar {
    public static final String DEFAULT_ENCODING = "UTF-8";
    public static final byte[] FORMAT_BYTES = new byte[]{(byte) 0};
    public static final byte FORMAT_VERSION = (byte) 0;
    public static final int HEADER_SIZE = 5;
    public static final int KEY_HASH_SIZE = 4;
    final HashMap<KeyHash, KeyczarKey> hashMap;
    final KeyMetadata kmd;
    KeyVersion primaryVersion;
    final HashMap<KeyVersion, KeyczarKey> versionMap;

    private class KeyHash {
        private byte[] data;

        private KeyHash(byte[] bArr) {
            if (bArr.length != 4) {
                throw new IllegalArgumentException();
            }
            this.data = bArr;
        }

        public boolean equals(Object obj) {
            return (obj instanceof KeyHash) && obj.hashCode() == hashCode();
        }

        public int hashCode() {
            return Util.toInt(this.data);
        }
    }

    abstract boolean isAcceptablePurpose(KeyPurpose keyPurpose);

    public Keyczar(KeyczarReader keyczarReader) throws KeyczarException {
        this.versionMap = new HashMap();
        this.hashMap = new HashMap();
        this.kmd = KeyMetadata.read(keyczarReader.getMetadata());
        if (!isAcceptablePurpose(this.kmd.getPurpose())) {
            throw new KeyczarException(Messages.getString("Keyczar.UnacceptablePurpose", this.kmd.getPurpose()));
        } else if (!this.kmd.isEncrypted() || (keyczarReader instanceof EncryptedReader)) {
            for (KeyVersion keyVersion : this.kmd.getVersions()) {
                if (keyVersion.getStatus() == KeyStatus.PRIMARY) {
                    if (this.primaryVersion != null) {
                        throw new KeyczarException(Messages.getString("Keyczar.SinglePrimary", new Object[0]));
                    }
                    this.primaryVersion = keyVersion;
                }
                KeyczarKey readKey = KeyczarKey.readKey(this.kmd.getType(), keyczarReader.getKey(keyVersion.getVersionNumber()));
                this.hashMap.put(new KeyHash(readKey.hash()), readKey);
                this.versionMap.put(keyVersion, readKey);
            }
        } else {
            throw new KeyczarException(Messages.getString("Keyczar.NeedEncryptedReader", new Object[0]));
        }
    }

    public Keyczar(String str) throws KeyczarException {
        this(new KeyczarFileReader(str));
    }

    public String toString() {
        return this.kmd.toString();
    }

    void addKey(KeyVersion keyVersion, KeyczarKey keyczarKey) {
        this.hashMap.put(new KeyHash(keyczarKey.hash()), keyczarKey);
        this.versionMap.put(keyVersion, keyczarKey);
        this.kmd.addVersion(keyVersion);
    }

    KeyczarKey getPrimaryKey() {
        if (this.primaryVersion == null) {
            return null;
        }
        return (KeyczarKey) this.versionMap.get(this.primaryVersion);
    }

    KeyczarKey getKey(byte[] bArr) {
        return (KeyczarKey) this.hashMap.get(new KeyHash(bArr));
    }
}
