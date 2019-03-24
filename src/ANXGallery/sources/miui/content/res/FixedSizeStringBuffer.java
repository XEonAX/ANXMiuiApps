package miui.content.res;

import android.util.Log;
import java.lang.ref.SoftReference;
import java.util.LinkedList;
import java.util.NoSuchElementException;

public class FixedSizeStringBuffer {
    private static final int STRING_CAPACITY = 1000;
    private static final String TAG = "FixedSizeStringBuffer";
    private static LinkedList<SoftReference<FixedSizeStringBuffer>> sBufferPool = new LinkedList();
    private static final Object sMutex = new Object();
    private char[] mBuf;
    private int mLen = 0;

    public static FixedSizeStringBuffer getBuffer() {
        FixedSizeStringBuffer ret = null;
        synchronized (sMutex) {
            if (!sBufferPool.isEmpty()) {
                try {
                    SoftReference<FixedSizeStringBuffer> cache = (SoftReference) sBufferPool.remove();
                    ret = cache != null ? (FixedSizeStringBuffer) cache.get() : null;
                } catch (NoSuchElementException e) {
                    String str = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("sBufferPool remove() throw exception: ");
                    stringBuilder.append(e.toString());
                    Log.e(str, stringBuilder.toString());
                    sBufferPool = new LinkedList();
                }
            }
        }
        if (ret == null) {
            ret = new FixedSizeStringBuffer(1000);
        }
        ret.setLength(0);
        return ret;
    }

    public static void freeBuffer(FixedSizeStringBuffer buffer) {
        synchronized (sMutex) {
            sBufferPool.add(new SoftReference(buffer));
        }
    }

    private FixedSizeStringBuffer(int size) {
        this.mBuf = new char[size];
    }

    public void setLength(int length) {
        this.mLen = length;
    }

    public void move(int offset) {
        this.mLen += offset;
    }

    public void assign(String path) {
        assign(path, path.length());
    }

    public void assign(String path, int end) {
        if (end <= this.mBuf.length) {
            this.mLen = end;
            path.getChars(0, end, this.mBuf, 0);
        }
    }

    public void append(String path) {
        append(path, 0, path.length());
    }

    public void append(String path, int start, int end) {
        if ((end - start) + this.mLen <= this.mBuf.length) {
            path.getChars(start, end, this.mBuf, this.mLen);
            this.mLen += end - start;
        }
    }

    public String toString() {
        return String.valueOf(this.mBuf, 0, this.mLen);
    }
}
