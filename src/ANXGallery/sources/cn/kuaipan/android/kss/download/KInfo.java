package cn.kuaipan.android.kss.download;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import cn.kuaipan.android.utils.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class KInfo {
    private final Bundle mData = new Bundle();
    private final File mFile;
    private final Properties mProp = new Properties();

    public KInfo(File file) {
        this.mFile = file;
    }

    public String getHash() {
        return this.mData.getString("hash");
    }

    public void setHash(String sha1) {
        this.mData.putString("hash", sha1);
    }

    public boolean loadToMap(LoadMap map) {
        return map.load(this.mData.getBundle("load_map"));
    }

    public void setLoadMap(LoadMap map) {
        Bundle b = new Bundle();
        map.save(b);
        this.mData.putBundle("load_map", b);
    }

    public void delete() {
        this.mFile.delete();
    }

    public void save() {
        IOException e;
        Throwable th;
        this.mProp.put("data", bundleToString(this.mData));
        OutputStream out = null;
        try {
            OutputStream out2 = new FileOutputStream(this.mFile);
            try {
                this.mProp.store(out2, null);
                out2.flush();
                try {
                    out2.close();
                    out = out2;
                } catch (Throwable th2) {
                    out = out2;
                }
            } catch (IOException e2) {
                e = e2;
                out = out2;
                try {
                    Log.w("KInfo", "Failed save kinfo to " + this.mFile, e);
                    try {
                        out.close();
                    } catch (Throwable th3) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        out.close();
                    } catch (Throwable th5) {
                    }
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                out = out2;
                out.close();
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            Log.w("KInfo", "Failed save kinfo to " + this.mFile, e);
            out.close();
        }
    }

    public void load() {
        IOException e;
        Throwable th;
        if (this.mFile.exists()) {
            InputStream in = null;
            try {
                InputStream in2 = new FileInputStream(this.mFile);
                try {
                    this.mProp.load(in2);
                    String data = this.mProp.getProperty("data");
                    if (!TextUtils.isEmpty(data)) {
                        Bundle b = stringToBundle(data);
                        this.mData.clear();
                        this.mData.putAll(b);
                    }
                    try {
                        in2.close();
                        in = in2;
                    } catch (Throwable th2) {
                        in = in2;
                    }
                } catch (IOException e2) {
                    e = e2;
                    in = in2;
                    try {
                        Log.w("KInfo", "Failed load kinfo from " + this.mFile, e);
                        try {
                            in.close();
                        } catch (Throwable th3) {
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        try {
                            in.close();
                        } catch (Throwable th5) {
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    in = in2;
                    in.close();
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                Log.w("KInfo", "Failed load kinfo from " + this.mFile, e);
                in.close();
            }
        }
    }

    public static File getInfoFile(File savePath) {
        String dir = savePath.getParent();
        String name = savePath.getName() + ".kinfo";
        if (!name.startsWith(".")) {
            name = "." + name;
        }
        return new File(dir, name);
    }

    private static String bundleToString(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        Parcel parcel = Parcel.obtain();
        try {
            bundle.writeToParcel(parcel, 0);
            String encodeToString = Base64.encodeToString(parcel.marshall(), 0);
            return encodeToString;
        } finally {
            parcel.recycle();
        }
    }

    private static Bundle stringToBundle(String source) {
        byte[] input = Base64.decode(source, 0);
        Parcel parcel = Parcel.obtain();
        try {
            parcel.unmarshall(input, 0, input.length);
            parcel.setDataPosition(0);
            Bundle bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
            return bundle;
        } finally {
            parcel.recycle();
        }
    }
}
