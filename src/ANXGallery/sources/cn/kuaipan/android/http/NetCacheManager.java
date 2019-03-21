package cn.kuaipan.android.http;

import android.content.Context;
import android.text.TextUtils;
import cn.kuaipan.android.exception.KscRuntimeException;
import cn.kuaipan.android.utils.FileUtils;
import cn.kuaipan.android.utils.TwoKeyHashMap;
import java.io.File;

public class NetCacheManager {
    private static final TwoKeyHashMap<Boolean, String, NetCacheManager> sCaches = new TwoKeyHashMap();
    private final Context mContext;
    private final String mDirName;
    private final boolean mExternal;
    private String mFolderPath;
    private int mLatestId = 0;

    public static synchronized NetCacheManager getInstance(Context context, boolean external) {
        NetCacheManager instance;
        synchronized (NetCacheManager.class) {
            instance = getInstance(context, external, null);
        }
        return instance;
    }

    public static synchronized NetCacheManager getInstance(Context context, boolean external, String dirName) {
        NetCacheManager result;
        synchronized (NetCacheManager.class) {
            if (TextUtils.isEmpty(dirName)) {
                dirName = "net_cache";
            }
            result = (NetCacheManager) sCaches.get(Boolean.valueOf(external), dirName);
            if (result == null) {
                result = new NetCacheManager(context, external, dirName);
                sCaches.put(Boolean.valueOf(external), dirName, result);
            }
        }
        return result;
    }

    private NetCacheManager(Context context, boolean external, String dirName) {
        if (context == null) {
            throw new NullPointerException("Context can't be null.");
        }
        this.mContext = context;
        this.mExternal = external;
        this.mDirName = dirName;
        final File folder = FileUtils.getCacheDir(context, dirName, external);
        if (folder != null) {
            this.mFolderPath = folder.getAbsolutePath();
            new Thread() {
                public void run() {
                    FileUtils.deleteChildren(folder);
                }
            }.start();
        }
    }

    public File assignCache() {
        File result;
        do {
            result = getNextCache();
        } while (result.exists());
        result.deleteOnExit();
        return result;
    }

    private File getNextCache() {
        synchronized (this) {
            this.mLatestId++;
        }
        String fileName = String.format("%08d.tmp", new Object[]{Integer.valueOf(id)});
        File folder = FileUtils.getCacheDir(this.mContext, this.mDirName, this.mExternal);
        if (folder == null) {
            throw new KscRuntimeException(500004);
        }
        this.mFolderPath = folder.getAbsolutePath();
        return new File(folder, fileName);
    }

    public void releaseCache(File file) {
        if (file != null && TextUtils.equals(this.mFolderPath, file.getParent())) {
            file.delete();
        }
    }
}
