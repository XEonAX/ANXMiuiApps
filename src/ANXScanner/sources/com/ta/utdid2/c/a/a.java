package com.ta.utdid2.c.a;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: FastXmlSerializer */
class a implements XmlSerializer {
    private static final String[] a;
    /* renamed from: a */
    private OutputStream f78a;
    /* renamed from: a */
    private Writer f79a;
    /* renamed from: a */
    private ByteBuffer f80a = ByteBuffer.allocate(8192);
    /* renamed from: a */
    private CharsetEncoder f81a;
    /* renamed from: a */
    private final char[] f82a = new char[8192];
    private boolean f;
    private int mPos;

    a() {
    }

    static {
        String[] strArr = new String[64];
        strArr[34] = "&quot;";
        strArr[38] = "&amp;";
        strArr[60] = "&lt;";
        strArr[62] = "&gt;";
        a = strArr;
    }

    private void append(char c) throws IOException {
        int i = this.mPos;
        if (i >= 8191) {
            flush();
            i = this.mPos;
        }
        this.a[i] = c;
        this.mPos = i + 1;
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 > 8192) {
            int i3 = i + i2;
            while (i < i3) {
                int i4 = i + 8192;
                a(str, i, i4 < i3 ? 8192 : i3 - i);
                i = i4;
            }
            return;
        }
        int i5 = this.mPos;
        if (i5 + i2 > 8192) {
            flush();
            i5 = this.mPos;
        }
        str.getChars(i, i + i2, this.a, i5);
        this.mPos = i5 + i2;
    }

    private void append(char[] buf, int i, int length) throws IOException {
        if (length > 8192) {
            int i2 = i + length;
            int i3 = i;
            while (i3 < i2) {
                i = i3 + 8192;
                append(buf, i3, i < i2 ? 8192 : i2 - i3);
                i3 = i;
            }
            i = i3;
            return;
        }
        int i4 = this.mPos;
        if (i4 + length > 8192) {
            flush();
            i4 = this.mPos;
        }
        System.arraycopy(buf, i, this.a, i4, length);
        this.mPos = i4 + length;
    }

    private void append(String str) throws IOException {
        a(str, 0, str.length());
    }

    private void a(String str) throws IOException {
        int i = 0;
        int length = str.length();
        char length2 = (char) a.length;
        String[] strArr = a;
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt < length2) {
                String str2 = strArr[charAt];
                if (str2 != null) {
                    if (i < i2) {
                        a(str, i, i2 - i);
                    }
                    i = i2 + 1;
                    append(str2);
                }
            }
            i2++;
        }
        if (i < i2) {
            a(str, i, i2 - i);
        }
    }

    private void a(char[] cArr, int i, int i2) throws IOException {
        char length = (char) a.length;
        String[] strArr = a;
        int i3 = i + i2;
        int i4 = i;
        while (i < i3) {
            char c = cArr[i];
            if (c < length) {
                String str = strArr[c];
                if (str != null) {
                    if (i4 < i) {
                        append(cArr, i4, i - i4);
                    }
                    i4 = i + 1;
                    append(str);
                }
            }
            i++;
        }
        if (i4 < i) {
            append(cArr, i4, i - i4);
        }
    }

    public XmlSerializer attribute(String namespace, String name, String value) throws IOException, IllegalArgumentException, IllegalStateException {
        append(' ');
        if (namespace != null) {
            append(namespace);
            append(':');
        }
        append(name);
        append("=\"");
        a(value);
        append('\"');
        return this;
    }

    public void cdsect(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void comment(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void docdecl(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void endDocument() throws IOException, IllegalArgumentException, IllegalStateException {
        flush();
    }

    public XmlSerializer endTag(String namespace, String name) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f) {
            append(" />\n");
        } else {
            append("</");
            if (namespace != null) {
                append(namespace);
                append(':');
            }
            append(name);
            append(">\n");
        }
        this.f = false;
        return this;
    }

    public void entityRef(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    private void b() throws IOException {
        int position = this.a.position();
        if (position > 0) {
            this.a.flip();
            this.a.write(this.a.array(), 0, position);
            this.a.clear();
        }
    }

    public void flush() throws IOException {
        if (this.mPos > 0) {
            if (this.a != null) {
                CharBuffer wrap = CharBuffer.wrap(this.a, 0, this.mPos);
                CoderResult encode = this.a.encode(wrap, this.a, true);
                while (!encode.isError()) {
                    if (encode.isOverflow()) {
                        b();
                        encode = this.a.encode(wrap, this.a, true);
                    } else {
                        b();
                        this.a.flush();
                    }
                }
                throw new IOException(encode.toString());
            }
            this.a.write(this.a, 0, this.mPos);
            this.a.flush();
            this.mPos = 0;
        }
    }

    public int getDepth() {
        throw new UnsupportedOperationException();
    }

    public boolean getFeature(String name) {
        throw new UnsupportedOperationException();
    }

    public String getName() {
        throw new UnsupportedOperationException();
    }

    public String getNamespace() {
        throw new UnsupportedOperationException();
    }

    public String getPrefix(String namespace, boolean generatePrefix) throws IllegalArgumentException {
        throw new UnsupportedOperationException();
    }

    public Object getProperty(String name) {
        throw new UnsupportedOperationException();
    }

    public void ignorableWhitespace(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void processingInstruction(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void setFeature(String name, boolean state) throws IllegalArgumentException, IllegalStateException {
        if (!name.equals("http://xmlpull.org/v1/doc/features.html#indent-output")) {
            throw new UnsupportedOperationException();
        }
    }

    public void setOutput(OutputStream os, String encoding) throws IOException, IllegalArgumentException, IllegalStateException {
        if (os == null) {
            throw new IllegalArgumentException();
        }
        try {
            this.a = Charset.forName(encoding).newEncoder();
            this.a = os;
        } catch (Throwable e) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(encoding).initCause(e));
        } catch (Throwable e2) {
            throw ((UnsupportedEncodingException) new UnsupportedEncodingException(encoding).initCause(e2));
        }
    }

    public void setOutput(Writer writer) throws IOException, IllegalArgumentException, IllegalStateException {
        this.a = writer;
    }

    public void setPrefix(String prefix, String namespace) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void setProperty(String name, Object value) throws IllegalArgumentException, IllegalStateException {
        throw new UnsupportedOperationException();
    }

    public void startDocument(String encoding, Boolean standalone) throws IOException, IllegalArgumentException, IllegalStateException {
        append("<?xml version='1.0' encoding='utf-8' standalone='" + (standalone.booleanValue() ? "yes" : "no") + "' ?>\n");
    }

    public XmlSerializer startTag(String namespace, String name) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f) {
            append(">\n");
        }
        append('<');
        if (namespace != null) {
            append(namespace);
            append(':');
        }
        append(name);
        this.f = true;
        return this;
    }

    public XmlSerializer text(char[] buf, int start, int len) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f) {
            append(">");
            this.f = false;
        }
        a(buf, start, len);
        return this;
    }

    public XmlSerializer text(String text) throws IOException, IllegalArgumentException, IllegalStateException {
        if (this.f) {
            append(">");
            this.f = false;
        }
        a(text);
        return this;
    }
}
