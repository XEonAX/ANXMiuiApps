package cn.kuaipan.android.http.multipart;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class FilePartSource implements PartSource {
    private File file = null;
    private String fileName = null;

    public FilePartSource(File file) throws FileNotFoundException {
        this.file = file;
        if (file == null) {
            return;
        }
        if (!file.isFile()) {
            throw new FileNotFoundException("File is not a normal file.");
        } else if (file.canRead()) {
            this.fileName = file.getName();
        } else {
            throw new FileNotFoundException("File is not readable.");
        }
    }

    public long getLength() {
        if (this.file != null) {
            return this.file.length();
        }
        return 0;
    }

    public String getFileName() {
        return this.fileName == null ? "noname" : this.fileName;
    }

    public InputStream createInputStream() throws IOException {
        if (this.file != null) {
            return new FileInputStream(this.file);
        }
        return new ByteArrayInputStream(new byte[0]);
    }
}
