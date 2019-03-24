package miui.os;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.miui.internal.server.CoreService;
import com.miui.internal.server.DropBoxManagerService;
import com.miui.internal.server.IDropBoxManagerService;
import com.miui.internal.server.IDropBoxManagerService.Stub;
import com.miui.internal.util.PackageConstants;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.zip.GZIPInputStream;
import miui.util.AppConstants;
import miui.util.SoftReferenceSingleton;

public class DropBoxManager {
    public static final String ACTION_DROPBOX_ENTRY_ADDED = "miui.intent.action.DROPBOX_ENTRY_ADDED";
    private static final int DR = 8;
    private static final int DS = 100;
    public static final String EXTRA_TAG = "tag";
    public static final String EXTRA_TIME = "time";
    public static final int IS_EMPTY = 1;
    public static final int IS_GZIPPED = 4;
    public static final int IS_TEXT = 2;
    private static final String TAG = "DropBoxManager";
    private static final SoftReferenceSingleton<DropBoxManager> s = new SoftReferenceSingleton<DropBoxManager>() {
        /* renamed from: cK */
        protected DropBoxManager createInstance() {
            return new DropBoxManager();
        }
    };
    private ServiceConnection DT;
    private ArrayBlockingQueue<Entry> DU;

    public static class Entry implements Parcelable, Closeable {
        public static final Creator<Entry> CREATOR = new Creator() {
            /* renamed from: P */
            public Entry[] newArray(int i) {
                return new Entry[i];
            }

            /* renamed from: e */
            public Entry createFromParcel(Parcel parcel) {
                String readString = parcel.readString();
                long readLong = parcel.readLong();
                int readInt = parcel.readInt();
                if ((readInt & 8) != 0) {
                    return new Entry(readString, readLong, parcel.createByteArray(), readInt & -9);
                }
                return new Entry(readString, readLong, parcel.readFileDescriptor(), readInt);
            }
        };
        private final long DW;
        private final byte[] DX;
        private final ParcelFileDescriptor DY;
        private final String ae;
        private final int mB;

        public Entry(String str, long j) {
            if (str != null) {
                this.ae = str;
                this.DW = j;
                this.DX = null;
                this.DY = null;
                this.mB = 1;
                return;
            }
            throw new NullPointerException("tag == null");
        }

        public Entry(String str, long j, String str2) {
            if (str == null) {
                throw new NullPointerException("tag == null");
            } else if (str2 != null) {
                this.ae = str;
                this.DW = j;
                this.DX = str2.getBytes();
                this.DY = null;
                this.mB = 2;
            } else {
                throw new NullPointerException("text == null");
            }
        }

        public Entry(String str, long j, byte[] bArr, int i) {
            if (str != null) {
                Object obj = null;
                Object obj2 = (i & 1) != 0 ? 1 : null;
                if (bArr == null) {
                    obj = 1;
                }
                if (obj2 == obj) {
                    this.ae = str;
                    this.DW = j;
                    this.DX = bArr;
                    this.DY = null;
                    this.mB = i;
                    return;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Bad flags: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            throw new NullPointerException("tag == null");
        }

        public Entry(String str, long j, ParcelFileDescriptor parcelFileDescriptor, int i) {
            if (str != null) {
                Object obj = null;
                Object obj2 = (i & 1) != 0 ? 1 : null;
                if (parcelFileDescriptor == null) {
                    obj = 1;
                }
                if (obj2 == obj) {
                    this.ae = str;
                    this.DW = j;
                    this.DX = null;
                    this.DY = parcelFileDescriptor;
                    this.mB = i;
                    return;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Bad flags: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            throw new NullPointerException("tag == null");
        }

        public Entry(String str, long j, File file, int i) throws IOException {
            if (str == null) {
                throw new NullPointerException("tag == null");
            } else if ((i & 1) == 0) {
                this.ae = str;
                this.DW = j;
                this.DX = null;
                this.DY = ParcelFileDescriptor.open(file, 268435456);
                this.mB = i;
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Bad flags: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }

        public void close() {
            try {
                if (this.DY != null) {
                    this.DY.close();
                }
            } catch (IOException e) {
            }
        }

        public String getTag() {
            return this.ae;
        }

        public long getTimeMillis() {
            return this.DW;
        }

        public int getFlags() {
            return this.mB & -5;
        }

        /* JADX WARNING: Removed duplicated region for block: B:39:0x005d A:{SYNTHETIC, Splitter: B:39:0x005d} */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x0052 A:{SYNTHETIC, Splitter: B:32:0x0052} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public String getText(int i) {
            Throwable th;
            if ((this.mB & 2) == 0) {
                return null;
            }
            if (this.DX != null) {
                return new String(this.DX, 0, Math.min(i, this.DX.length));
            }
            InputStream inputStream;
            try {
                inputStream = getInputStream();
                if (inputStream == null) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    return null;
                }
                try {
                    byte[] bArr = new byte[i];
                    int i2 = 0;
                    int i3 = i2;
                    while (i2 >= 0) {
                        i3 += i2;
                        if (i3 >= i) {
                            break;
                        }
                        i2 = inputStream.read(bArr, i3, i - i3);
                    }
                    String str = new String(bArr, 0, i3);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    return str;
                } catch (IOException e3) {
                    if (inputStream != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                    }
                    throw th;
                }
            } catch (IOException e4) {
                inputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                    }
                }
                return null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e6) {
                    }
                }
                throw th;
            }
        }

        public InputStream getInputStream() throws IOException {
            InputStream byteArrayInputStream;
            if (this.DX != null) {
                byteArrayInputStream = new ByteArrayInputStream(this.DX);
            } else if (this.DY == null) {
                return null;
            } else {
                byteArrayInputStream = new AutoCloseInputStream(this.DY);
            }
            if ((this.mB & 4) != 0) {
                byteArrayInputStream = new GZIPInputStream(byteArrayInputStream);
            }
            return byteArrayInputStream;
        }

        public int describeContents() {
            return this.DY != null ? 1 : 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.ae);
            parcel.writeLong(this.DW);
            if (this.DY != null) {
                parcel.writeInt(this.mB & -9);
                this.DY.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(this.mB | 8);
            parcel.writeByteArray(this.DX);
        }
    }

    /* synthetic */ DropBoxManager(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static DropBoxManager getInstance() {
        return (DropBoxManager) s.get();
    }

    private DropBoxManager() {
        this.DT = new ServiceConnection() {
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IDropBoxManagerService asInterface = Stub.asInterface(iBinder);
                Entry entry;
                try {
                    entry = (Entry) DropBoxManager.this.DU.poll();
                    while (entry != null) {
                        asInterface.add(entry);
                        entry.close();
                        entry = (Entry) DropBoxManager.this.DU.poll();
                    }
                    AppConstants.getCurrentApplication().unbindService(this);
                } catch (Throwable e) {
                    Log.w(DropBoxManager.TAG, "Call remote method 'add' failed", e);
                } catch (Throwable th) {
                    entry.close();
                }
            }

            public void onServiceDisconnected(ComponentName componentName) {
            }
        };
        this.DU = new ArrayBlockingQueue(100);
    }

    public void addText(String str, String str2) {
        a(new Entry(str, 0, str2));
    }

    public void addData(String str, byte[] bArr, int i) {
        if (bArr != null) {
            a(new Entry(str, 0, bArr, i));
            return;
        }
        throw new NullPointerException("data == null");
    }

    public void addFile(String str, File file, int i) throws IOException {
        if (file != null) {
            a(new Entry(str, 0, file, i));
            return;
        }
        throw new NullPointerException("file == null");
    }

    private void a(Entry entry) {
        if (this.DU.offer(entry)) {
            cJ();
            return;
        }
        Log.w(TAG, "Fail to addEntry for queue is full");
        entry.close();
    }

    private boolean cJ() {
        Context currentApplication = AppConstants.getCurrentApplication();
        Intent intent = new Intent(CoreService.ACTION_BIND_SERVICE);
        intent.setPackage(PackageConstants.PACKAGE_NAME);
        intent.putExtra(CoreService.EXTRA_SERVICE_NAME, DropBoxManagerService.SERVICE_NAME);
        try {
            return currentApplication.bindService(intent, this.DT, 1);
        } catch (Throwable e) {
            Log.e(TAG, "Fail to bind service", e);
            return false;
        }
    }
}
