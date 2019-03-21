package cn.kuaipan.android.http.multipart;

import android.text.TextUtils;
import java.util.Arrays;
import org.apache.http.NameValuePair;
import org.apache.http.util.LangUtils;

public class ByteArrayValuePair implements Cloneable, NameValuePair {
    private final byte[] data;
    private final String filename;
    private final String name;

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.filename;
    }

    public byte[] getData() {
        return this.data;
    }

    public String toString() {
        StringBuilder buffer = new StringBuilder(this.name);
        if (!(this.filename == null || this.data == null)) {
            buffer.append("=File[name=");
            buffer.append(this.filename);
            buffer.append(", data=");
            buffer.append(Arrays.toString(this.data));
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
        if (!(object instanceof ByteArrayValuePair)) {
            return false;
        }
        ByteArrayValuePair that = (ByteArrayValuePair) object;
        if (!(TextUtils.equals(this.name, that.name) && TextUtils.equals(this.filename, that.filename) && Arrays.equals(this.data, that.data))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.name), this.filename), Arrays.hashCode(this.data));
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
