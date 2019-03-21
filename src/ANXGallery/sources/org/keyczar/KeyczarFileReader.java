package org.keyczar;

import java.io.File;
import java.io.RandomAccessFile;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyczarReader;

public class KeyczarFileReader implements KeyczarReader {
    static final String META_FILE = "meta";
    private String location;

    public KeyczarFileReader(String str) {
        if (!(str == null || str.endsWith(File.separator))) {
            str = str + File.separator;
        }
        this.location = str;
    }

    public String getKey(int i) throws KeyczarException {
        return readFile(this.location + i);
    }

    public String getKey() throws KeyczarException {
        return getKey(KeyMetadata.read(getMetadata()).getPrimaryVersion().getVersionNumber());
    }

    public String getMetadata() throws KeyczarException {
        return readFile(this.location + META_FILE);
    }

    private String readFile(String str) throws KeyczarException {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
            byte[] bArr = new byte[((int) randomAccessFile.length())];
            randomAccessFile.read(bArr);
            randomAccessFile.close();
            return new String(bArr);
        } catch (Throwable e) {
            throw new KeyczarException(Messages.getString("KeyczarFileReader.FileError", str), e);
        }
    }
}
