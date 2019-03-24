package miui.io;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.AssetManager.AssetInputStream;
import android.net.Uri;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ResettableInputStream extends InputStream {
    private final String Aa;
    private final byte[] Ab;
    private IOException Ac;
    private Throwable Ad;
    private final Context mContext;
    private volatile InputStream yy;
    private final Object zV;
    private final Type zW;
    private final Uri zX;
    private final String zY;
    private final AssetManager zZ;

    private enum Type {
        File,
        Uri,
        Asset,
        ByteArray
    }

    public ResettableInputStream(String str) {
        this.zV = new Object() {
            protected void finalize() throws Throwable {
                try {
                    if (ResettableInputStream.this.Ad != null) {
                        Log.e("ResettableInputStream", "InputStream is opened but never closed here", ResettableInputStream.this.Ad);
                    }
                    ResettableInputStream.this.close();
                } finally {
                    super.finalize();
                }
            }
        };
        this.zW = Type.File;
        this.zY = str;
        this.mContext = null;
        this.zX = null;
        this.zZ = null;
        this.Aa = null;
        this.Ab = null;
    }

    public ResettableInputStream(Context context, Uri uri) {
        this.zV = /* anonymous class already generated */;
        if ("file".equals(uri.getScheme())) {
            this.zW = Type.File;
            this.zY = uri.getPath();
            this.mContext = null;
            this.zX = null;
            this.zZ = null;
            this.Aa = null;
            this.Ab = null;
            return;
        }
        this.zW = Type.Uri;
        this.mContext = context;
        this.zX = uri;
        this.zY = null;
        this.zZ = null;
        this.Aa = null;
        this.Ab = null;
    }

    public ResettableInputStream(AssetManager assetManager, String str) {
        this.zV = /* anonymous class already generated */;
        this.zW = Type.Asset;
        this.zZ = assetManager;
        this.Aa = str;
        this.zY = null;
        this.mContext = null;
        this.zX = null;
        this.Ab = null;
    }

    public ResettableInputStream(byte[] bArr) {
        this.zV = /* anonymous class already generated */;
        this.zW = Type.ByteArray;
        this.Ab = bArr;
        this.zY = null;
        this.mContext = null;
        this.zX = null;
        this.zZ = null;
        this.Aa = null;
    }

    private void cu() throws IOException {
        if (this.Ac != null) {
            throw this.Ac;
        } else if (this.yy == null) {
            synchronized (this.zV) {
                if (this.yy != null) {
                    return;
                }
                switch (this.zW) {
                    case Uri:
                        this.yy = this.mContext.getContentResolver().openInputStream(this.zX);
                        break;
                    case File:
                        this.yy = new FileInputStream(this.zY);
                        break;
                    case Asset:
                        this.yy = this.zZ.open(this.Aa);
                        break;
                    case ByteArray:
                        this.yy = new ByteArrayInputStream(this.Ab);
                        break;
                    default:
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append("Unkown type ");
                        stringBuilder.append(this.zW);
                        throw new IllegalStateException(stringBuilder.toString());
                }
                this.Ad = new Throwable();
            }
        }
    }

    public int available() throws IOException {
        cu();
        return this.yy.available();
    }

    /* JADX WARNING: Missing block: B:15:0x001c, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void close() throws IOException {
        if (this.yy != null) {
            synchronized (this.zV) {
                if (this.yy == null) {
                    return;
                }
                try {
                    this.yy.close();
                } finally {
                    this.Ad = null;
                    this.yy = null;
                    this.Ac = null;
                }
            }
        }
    }

    public void mark(int i) {
        try {
            cu();
            this.yy.mark(i);
        } catch (IOException e) {
            this.Ac = e;
        }
    }

    public boolean markSupported() {
        try {
            cu();
            return this.yy.markSupported();
        } catch (IOException e) {
            this.Ac = e;
            return super.markSupported();
        }
    }

    public int read() throws IOException {
        cu();
        return this.yy.read();
    }

    public int read(byte[] bArr) throws IOException {
        cu();
        return this.yy.read(bArr);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        cu();
        return this.yy.read(bArr, i, i2);
    }

    /* JADX WARNING: Missing block: B:19:0x0033, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void reset() throws IOException {
        if (this.yy != null) {
            if (this.yy instanceof FileInputStream) {
                ((FileInputStream) this.yy).getChannel().position(0);
            } else if ((this.yy instanceof AssetInputStream) || (this.yy instanceof ByteArrayInputStream)) {
                this.yy.reset();
            } else {
                close();
            }
        }
    }

    public long skip(long j) throws IOException {
        cu();
        return this.yy.skip(j);
    }
}
