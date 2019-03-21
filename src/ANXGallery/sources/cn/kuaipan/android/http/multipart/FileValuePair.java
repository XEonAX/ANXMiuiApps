package cn.kuaipan.android.http.multipart;

import android.text.TextUtils;
import java.io.File;
import org.apache.http.NameValuePair;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.LangUtils;

public class FileValuePair implements Cloneable, NameValuePair {
    private final File file;
    private final String name;

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.file.getName();
    }

    public File getFile() {
        return this.file;
    }

    public String toString() {
        int len = this.name.length();
        if (this.file != null) {
            len += this.file.getPath().length() + 12;
        }
        CharArrayBuffer buffer = new CharArrayBuffer(len);
        buffer.append(this.name);
        if (this.file != null) {
            buffer.append("=File[path=");
            buffer.append(this.file.getPath());
            buffer.append("]");
        }
        return buffer.toString();
    }

    public boolean equals(Object object) {
        boolean z = true;
        if (object == null) {
            return false;
        }
        if (this == object) {
            return true;
        }
        if (!(object instanceof FileValuePair)) {
            return false;
        }
        FileValuePair that = (FileValuePair) object;
        if (!(TextUtils.equals(this.name, that.name) && LangUtils.equals(this.file, that.file))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.file);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
