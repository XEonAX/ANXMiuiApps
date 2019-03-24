package miui.net.http;

import android.util.Log;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import miui.net.http.Cache.Entry;
import miui.security.DigestUtils;
import miui.text.ExtraTextUtils;
import miui.util.AppConstants;
import miui.util.IOUtils;
import miui.util.SoftReferenceSingleton;
import org.keyczar.Keyczar;

public class DiskBasedCache implements Cache {
    private static final int Dh = 10485760;
    private static final float Di = 0.9f;
    private static final int Dj = 538182184;
    private static final String TAG = "DisBasedCache";
    private static final SoftReferenceSingleton<DiskBasedCache> s = new SoftReferenceSingleton<DiskBasedCache>() {
        /* renamed from: cE */
        protected DiskBasedCache createInstance() {
            DiskBasedCache diskBasedCache = new DiskBasedCache();
            diskBasedCache.initialize();
            return diskBasedCache;
        }
    };
    private final Map<String, DiskCacheEntry> Dd;
    private long De;
    private final File Df;
    private final int Dg;

    private static class CacheFileContentInputStream extends FilterInputStream {
        private DiskCacheEntry Dk;

        protected CacheFileContentInputStream(DiskCacheEntry diskCacheEntry) throws IOException {
            super(c(diskCacheEntry));
            if (this.in != null) {
                this.Dk = diskCacheEntry;
            }
        }

        private static InputStream c(DiskCacheEntry diskCacheEntry) throws IOException {
            diskCacheEntry.acquire();
            try {
                InputStream fileInputStream = new FileInputStream(diskCacheEntry.file);
                if (fileInputStream.skip(diskCacheEntry.offset) == diskCacheEntry.offset) {
                    return fileInputStream;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("skip failed for file ");
                stringBuilder.append(diskCacheEntry.file.getName());
                throw new IOException(stringBuilder.toString());
            } catch (Throwable th) {
                diskCacheEntry.release();
            }
        }

        public void close() throws IOException {
            this.Dk.release();
            super.close();
        }
    }

    private static class DiskCacheEntry {
        private volatile boolean Dl;
        private volatile int Dm;
        public String contentEncoding;
        public String contentType;
        public String etag;
        public File file;
        public String key;
        public long offset;
        public Map<String, String> responseHeaders;
        public long serverDate;
        public long size;
        public long softTtl;
        public long ttl;

        private DiskCacheEntry() {
        }

        public static DiskCacheEntry a(File file) {
            Throwable th;
            InputStream fileInputStream;
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    if (b(fileInputStream) != DiskBasedCache.Dj) {
                        IOUtils.closeQuietly(fileInputStream);
                        return null;
                    }
                    DiskCacheEntry diskCacheEntry = new DiskCacheEntry();
                    diskCacheEntry.key = d(fileInputStream);
                    diskCacheEntry.etag = d(fileInputStream);
                    if ("".equals(diskCacheEntry.etag)) {
                        diskCacheEntry.etag = null;
                    }
                    diskCacheEntry.contentType = d(fileInputStream);
                    if ("".equals(diskCacheEntry.contentType)) {
                        diskCacheEntry.contentType = null;
                    }
                    diskCacheEntry.contentEncoding = d(fileInputStream);
                    if ("".equals(diskCacheEntry.contentEncoding)) {
                        diskCacheEntry.contentEncoding = null;
                    }
                    diskCacheEntry.serverDate = c(fileInputStream);
                    diskCacheEntry.ttl = c(fileInputStream);
                    diskCacheEntry.softTtl = c(fileInputStream);
                    diskCacheEntry.responseHeaders = e(fileInputStream);
                    diskCacheEntry.offset = fileInputStream.getChannel().position();
                    diskCacheEntry.file = file;
                    diskCacheEntry.size = file.length();
                    IOUtils.closeQuietly(fileInputStream);
                    return diskCacheEntry;
                } catch (IOException e) {
                    IOUtils.closeQuietly(fileInputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (IOException e2) {
                fileInputStream = null;
                IOUtils.closeQuietly(fileInputStream);
                return null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                IOUtils.closeQuietly(fileInputStream);
                throw th;
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x010f  */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x0134  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static DiskCacheEntry a(File file, String str, Entry entry) {
            Throwable e;
            String str2;
            StringBuilder stringBuilder;
            InputStream inputStream = entry.data;
            OutputStream fileOutputStream;
            try {
                entry.data = null;
                fileOutputStream = new FileOutputStream(file);
                try {
                    a(fileOutputStream, (int) DiskBasedCache.Dj);
                    a(fileOutputStream, str);
                    a(fileOutputStream, entry.etag == null ? "" : entry.etag);
                    a(fileOutputStream, entry.contentType == null ? "" : entry.contentType);
                    a(fileOutputStream, entry.contentEncoding == null ? "" : entry.contentEncoding);
                    a(fileOutputStream, entry.serverDate);
                    a(fileOutputStream, entry.ttl);
                    a(fileOutputStream, entry.softTtl);
                    a(entry.responseHeaders, fileOutputStream);
                    fileOutputStream.flush();
                    DiskCacheEntry diskCacheEntry = new DiskCacheEntry();
                    diskCacheEntry.key = str;
                    diskCacheEntry.etag = entry.etag;
                    diskCacheEntry.contentType = entry.contentType;
                    diskCacheEntry.contentEncoding = entry.contentEncoding;
                    diskCacheEntry.serverDate = entry.serverDate;
                    diskCacheEntry.ttl = entry.ttl;
                    diskCacheEntry.softTtl = entry.softTtl;
                    diskCacheEntry.responseHeaders = entry.responseHeaders;
                    diskCacheEntry.file = file;
                    diskCacheEntry.offset = fileOutputStream.getChannel().position();
                    IOUtils.copy(inputStream, fileOutputStream);
                    fileOutputStream.flush();
                    diskCacheEntry.size = fileOutputStream.getChannel().position();
                    if (entry.length <= 0) {
                        entry.length = diskCacheEntry.size - diskCacheEntry.offset;
                    } else if (entry.length != diskCacheEntry.size - diskCacheEntry.offset) {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append("length not match ");
                        stringBuilder2.append(entry.length);
                        stringBuilder2.append(":");
                        stringBuilder2.append(diskCacheEntry.size - diskCacheEntry.offset);
                        throw new IOException(stringBuilder2.toString());
                    }
                    fileOutputStream.close();
                    entry.data = new CacheFileContentInputStream(diskCacheEntry);
                    IOUtils.closeQuietly(inputStream);
                    IOUtils.closeQuietly(null);
                    return diskCacheEntry;
                } catch (IOException e2) {
                    e = e2;
                    StringBuilder stringBuilder3;
                    try {
                        str2 = DiskBasedCache.TAG;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("Cannot save cache to disk file ");
                        stringBuilder.append(file);
                        Log.w(str2, stringBuilder.toString(), e);
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly(fileOutputStream);
                        if (!file.delete()) {
                            return null;
                        }
                        str = DiskBasedCache.TAG;
                        stringBuilder3 = new StringBuilder();
                        stringBuilder3.append("Cannot delete file ");
                        stringBuilder3.append(file);
                        Log.e(str, stringBuilder3.toString());
                        return null;
                    } catch (Throwable th) {
                        e = th;
                        IOUtils.closeQuietly(inputStream);
                        IOUtils.closeQuietly(fileOutputStream);
                        if (!file.delete()) {
                            stringBuilder3 = new StringBuilder();
                            stringBuilder3.append("Cannot delete file ");
                            stringBuilder3.append(file);
                            Log.e(DiskBasedCache.TAG, stringBuilder3.toString());
                        }
                        throw e;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                fileOutputStream = null;
                str2 = DiskBasedCache.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot save cache to disk file ");
                stringBuilder.append(file);
                Log.w(str2, stringBuilder.toString(), e);
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly(fileOutputStream);
                if (!file.delete()) {
                }
            } catch (Throwable th2) {
                e = th2;
                fileOutputStream = null;
                IOUtils.closeQuietly(inputStream);
                IOUtils.closeQuietly(fileOutputStream);
                if (file.delete()) {
                }
                throw e;
            }
        }

        public Entry cF() {
            try {
                Entry entry = new Entry();
                entry.data = new FileInputStream(this.file);
                if (entry.data.skip(this.offset) != this.offset) {
                    return null;
                }
                entry.length = this.size - this.offset;
                entry.etag = this.etag;
                entry.contentType = this.contentType;
                entry.contentEncoding = this.contentEncoding;
                entry.serverDate = this.serverDate;
                entry.ttl = this.ttl;
                entry.softTtl = this.softTtl;
                entry.responseHeaders = this.responseHeaders;
                return entry;
            } catch (IOException e) {
                return null;
            }
        }

        public synchronized void acquire() {
            this.Dm++;
        }

        public synchronized boolean cG() {
            return this.Dm > 0;
        }

        public synchronized void release() {
            this.Dm--;
            if (this.Dm <= 0 && this.Dl && !this.file.delete()) {
                String str = DiskBasedCache.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot delete file ");
                stringBuilder.append(this.file);
                Log.e(str, stringBuilder.toString());
            }
        }

        public synchronized void delete() {
            if (this.Dm > 0) {
                this.Dl = true;
            } else if (!this.file.delete()) {
                String str = DiskBasedCache.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Cannot delete file ");
                stringBuilder.append(this.file);
                Log.e(str, stringBuilder.toString());
            }
        }

        private static int read(InputStream inputStream) throws IOException {
            int read = inputStream.read();
            if (read != -1) {
                return read;
            }
            throw new EOFException();
        }

        static void a(OutputStream outputStream, int i) throws IOException {
            outputStream.write(i & 255);
            outputStream.write((i >> 8) & 255);
            outputStream.write((i >> 16) & 255);
            outputStream.write((i >> 24) & 255);
        }

        static int b(InputStream inputStream) throws IOException {
            return (read(inputStream) << 24) | (((read(inputStream) | 0) | (read(inputStream) << 8)) | (read(inputStream) << 16));
        }

        static void a(OutputStream outputStream, long j) throws IOException {
            outputStream.write((byte) ((int) j));
            outputStream.write((byte) ((int) (j >>> 8)));
            outputStream.write((byte) ((int) (j >>> 16)));
            outputStream.write((byte) ((int) (j >>> 24)));
            outputStream.write((byte) ((int) (j >>> 32)));
            outputStream.write((byte) ((int) (j >>> 40)));
            outputStream.write((byte) ((int) (j >>> 48)));
            outputStream.write((byte) ((int) (j >>> 56)));
        }

        static long c(InputStream inputStream) throws IOException {
            return ((((((((((long) read(inputStream)) & 255) | 0) | ((((long) read(inputStream)) & 255) << 8)) | ((((long) read(inputStream)) & 255) << 16)) | ((((long) read(inputStream)) & 255) << 24)) | ((((long) read(inputStream)) & 255) << 32)) | ((((long) read(inputStream)) & 255) << 40)) | ((((long) read(inputStream)) & 255) << 48)) | ((255 & ((long) read(inputStream))) << 56);
        }

        static void a(OutputStream outputStream, String str) throws IOException {
            byte[] bytes = str.getBytes(Keyczar.DEFAULT_ENCODING);
            a(outputStream, (long) bytes.length);
            outputStream.write(bytes, 0, bytes.length);
        }

        static String d(InputStream inputStream) throws IOException {
            int c = (int) c(inputStream);
            if (c < 0 || c > 8192) {
                throw new IOException("Malformed data structure encountered");
            }
            byte[] bArr = new byte[c];
            int i = 0;
            while (i < c) {
                int read = inputStream.read(bArr, i, c - i);
                if (read == -1) {
                    break;
                }
                i += read;
            }
            if (i == c) {
                return new String(bArr, Keyczar.DEFAULT_ENCODING);
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected ");
            stringBuilder.append(c);
            stringBuilder.append(" bytes but read ");
            stringBuilder.append(i);
            stringBuilder.append(" bytes");
            throw new IOException(stringBuilder.toString());
        }

        static void a(Map<String, String> map, OutputStream outputStream) throws IOException {
            if (map == null || map.size() == 0) {
                a(outputStream, 0);
                return;
            }
            a(outputStream, map.size());
            for (Map.Entry entry : map.entrySet()) {
                a(outputStream, (String) entry.getKey());
                a(outputStream, (String) entry.getValue());
            }
        }

        static Map<String, String> e(InputStream inputStream) throws IOException {
            int b = b(inputStream);
            Map<String, String> hashMap = new HashMap();
            for (int i = 0; i < b; i++) {
                hashMap.put(d(inputStream).intern(), d(inputStream).intern());
            }
            return hashMap;
        }
    }

    public static DiskBasedCache getDefault() {
        return (DiskBasedCache) s.get();
    }

    public DiskBasedCache() {
        this(null, Dh);
    }

    public DiskBasedCache(File file) {
        this(file, Dh);
    }

    public DiskBasedCache(File file, int i) {
        this.Dd = new ConcurrentHashMap(16, 0.75f);
        this.De = 0;
        if (file == null) {
            file = new File(AppConstants.getCurrentApplication().getCacheDir(), "miui.net.http");
        }
        this.Df = file;
        this.Dg = i;
    }

    public Entry get(String str) {
        DiskCacheEntry diskCacheEntry = (DiskCacheEntry) this.Dd.get(str);
        if (diskCacheEntry == null) {
            return null;
        }
        return diskCacheEntry.cF();
    }

    public boolean put(String str, Entry entry) {
        DiskCacheEntry a = DiskCacheEntry.a(D(str), str, entry);
        if (a == null) {
            return false;
        }
        h(a.size);
        a(a);
        return true;
    }

    public void initialize() {
        this.Dd.clear();
        this.De = 0;
        if (this.Df.exists()) {
            File[] listFiles = this.Df.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    DiskCacheEntry a = DiskCacheEntry.a(file);
                    if (a != null) {
                        a(a);
                    } else if (!file.delete()) {
                        String str = TAG;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Cannot delete file ");
                        stringBuilder.append(file);
                        Log.e(str, stringBuilder.toString());
                    }
                }
                return;
            }
            return;
        }
        if (!this.Df.mkdirs()) {
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("Cannot create directory ");
            stringBuilder2.append(this.Df);
            Log.e(str2, stringBuilder2.toString());
        }
    }

    public void invalidate(String str, boolean z) {
        DiskCacheEntry diskCacheEntry = (DiskCacheEntry) this.Dd.get(str);
        if (diskCacheEntry != null) {
            diskCacheEntry.softTtl = 0;
            if (z) {
                diskCacheEntry.ttl = 0;
            }
        }
    }

    public void remove(String str) {
        DiskCacheEntry diskCacheEntry = (DiskCacheEntry) this.Dd.get(str);
        if (diskCacheEntry != null) {
            diskCacheEntry.delete();
            b(diskCacheEntry);
        }
    }

    public void clear() {
        for (Map.Entry value : this.Dd.entrySet()) {
            ((DiskCacheEntry) value.getValue()).delete();
        }
        this.Dd.clear();
        this.De = 0;
    }

    private File D(String str) {
        return new File(this.Df, ExtraTextUtils.toHexReadable(DigestUtils.get((CharSequence) str, "MD5")));
    }

    /* JADX WARNING: Missing block: B:43:0x00df, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void h(long j) {
        if (this.De + j >= ((long) this.Dg)) {
            long currentTimeMillis = System.currentTimeMillis();
            synchronized (this.Dd) {
                if (this.De + j < ((long) this.Dg)) {
                    return;
                }
                DiskCacheEntry diskCacheEntry;
                Iterator it = this.Dd.entrySet().iterator();
                while (it.hasNext()) {
                    diskCacheEntry = (DiskCacheEntry) ((Map.Entry) it.next()).getValue();
                    if (diskCacheEntry.ttl < currentTimeMillis) {
                        diskCacheEntry.delete();
                        this.De -= diskCacheEntry.size;
                        it.remove();
                    }
                }
                if (this.De + j < ((long) this.Dg)) {
                    return;
                }
                it = this.Dd.entrySet().iterator();
                while (it.hasNext()) {
                    diskCacheEntry = (DiskCacheEntry) ((Map.Entry) it.next()).getValue();
                    if (diskCacheEntry.softTtl < currentTimeMillis) {
                        diskCacheEntry.delete();
                        this.De -= diskCacheEntry.size;
                        it.remove();
                        if (((float) (this.De + j)) < ((float) this.Dg) * Di) {
                            break;
                        }
                    }
                }
                if (this.De + j < ((long) this.Dg)) {
                    return;
                }
                Iterator it2 = this.Dd.entrySet().iterator();
                while (it2.hasNext()) {
                    DiskCacheEntry diskCacheEntry2 = (DiskCacheEntry) ((Map.Entry) it2.next()).getValue();
                    if (!diskCacheEntry2.cG()) {
                        diskCacheEntry2.delete();
                        it2.remove();
                        if (((float) (this.De + j)) < ((float) this.Dg) * Di) {
                            break;
                        }
                    }
                }
            }
        }
    }

    private void a(DiskCacheEntry diskCacheEntry) {
        synchronized (this.Dd) {
            DiskCacheEntry diskCacheEntry2 = (DiskCacheEntry) this.Dd.get(diskCacheEntry.key);
            if (diskCacheEntry2 == null) {
                this.De += diskCacheEntry.size;
            } else {
                this.De += diskCacheEntry.size - diskCacheEntry2.size;
            }
            this.Dd.put(diskCacheEntry.key, diskCacheEntry);
        }
    }

    private void b(DiskCacheEntry diskCacheEntry) {
        synchronized (this.Dd) {
            this.De -= diskCacheEntry.size;
            this.Dd.remove(diskCacheEntry.key);
        }
    }
}
