package com.miui.gallery.model;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.miui.gallery.Config.BigPhotoConfig;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.data.LocationManager;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.SaveUriDialogFragment.OnCompleteListener;
import com.miui.gallery.util.BaseFileMimeUtil;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.StringUtils;
import com.miui.gallery.util.TalkBackUtil;
import com.miui.gallery.util.gifdecoder.NSGifDecode;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import java.io.File;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import miui.date.DateUtils;
import miui.graphics.BitmapFactory;

public class BaseDataItem implements Serializable {
    private static String TAG = "BaseDataItem";
    private transient ReentrantLock mCacheLock = new ReentrantLock();
    protected String mContentDescription;
    protected long mCreateTime = System.currentTimeMillis();
    private volatile transient long mDisplayBetterFileSize = -1;
    private volatile transient DisplayBetterPath mDisplayBetterPath = new DisplayBetterPath(this, null);
    protected int mDuration = -1;
    protected String mFilePath;
    protected int mHeight;
    protected boolean mIsSecret;
    protected long mKey;
    protected double mLatitude;
    protected long mLocalGroupId;
    protected String mLocation;
    protected double mLongitude;
    protected String mMicroPath;
    protected String mMimeType;
    protected volatile long mMotionOffset;
    protected byte[] mSecretKey;
    protected long mSize;
    protected volatile long mSpecialTypeFlags = -1;
    private volatile transient int mSupportOperations = -1;
    protected String mThumbPath;
    protected String mTitle;
    protected int mWidth;

    private interface Func<T> {
        T doFunc();
    }

    private class DisplayBetterPath {
        private String mPath;
        private int mType;

        private DisplayBetterPath() {
            this.mType = 0;
            this.mPath = null;
        }

        /* synthetic */ DisplayBetterPath(BaseDataItem x0, AnonymousClass1 x1) {
            this();
        }

        public String getPath() {
            return this.mPath;
        }

        public void setPath(int type, String path) {
            if (!TextUtils.isEmpty(path) && type >= this.mType) {
                this.mType = type;
                this.mPath = path;
            }
        }
    }

    public BaseDataItem setKey(long key) {
        this.mKey = key;
        return this;
    }

    public BaseDataItem setMicroPath(String microPath) {
        this.mMicroPath = microPath;
        setPathDisplayBetter(1, microPath);
        return this;
    }

    public BaseDataItem setThumbPath(String thumbPath) {
        this.mThumbPath = thumbPath;
        setPathDisplayBetter(2, thumbPath);
        return this;
    }

    public BaseDataItem setFilePath(String filePath) {
        this.mFilePath = filePath;
        setPathDisplayBetter(3, filePath);
        return this;
    }

    public BaseDataItem setMimeType(String mimeType) {
        this.mMimeType = mimeType;
        return this;
    }

    public BaseDataItem setCreateTime(long createTime) {
        this.mCreateTime = createTime;
        return this;
    }

    public BaseDataItem setLocation(String location) {
        this.mLocation = location;
        return this;
    }

    public BaseDataItem setSize(long size) {
        this.mSize = size;
        return this;
    }

    public BaseDataItem setLatitude(double latitude) {
        this.mLatitude = latitude;
        return this;
    }

    public BaseDataItem setLongitude(double longitude) {
        this.mLongitude = longitude;
        return this;
    }

    public BaseDataItem setSecretKey(byte[] secretKey) {
        if (secretKey != null) {
            this.mIsSecret = true;
        } else {
            this.mIsSecret = false;
        }
        this.mSecretKey = secretKey;
        return this;
    }

    public BaseDataItem setWidth(int width) {
        this.mWidth = width;
        return this;
    }

    public BaseDataItem setHeight(int height) {
        this.mHeight = height;
        return this;
    }

    public BaseDataItem setDuration(int duration) {
        this.mDuration = duration;
        return this;
    }

    public BaseDataItem setLocalGroupId(long localGroupId) {
        this.mLocalGroupId = localGroupId;
        return this;
    }

    public long getLocalGroupId() {
        return this.mLocalGroupId;
    }

    public long getKey() {
        return this.mKey;
    }

    public String getMicroPath() {
        return this.mMicroPath;
    }

    public String getThumnailPath() {
        return this.mThumbPath;
    }

    public String getOriginalPath() {
        return this.mFilePath;
    }

    public String getMimeType() {
        return this.mMimeType;
    }

    public boolean isImage() {
        return TextUtils.isEmpty(this.mMimeType) ? false : BaseFileMimeUtil.isImageFromMimeType(this.mMimeType);
    }

    public boolean isVideo() {
        return TextUtils.isEmpty(this.mMimeType) ? false : BaseFileMimeUtil.isVideoFromMimeType(this.mMimeType);
    }

    public boolean isGif() {
        return TextUtils.isEmpty(this.mMimeType) ? false : BaseFileMimeUtil.isGifFromMimeType(this.mMimeType);
    }

    public void setSpecialTypeFlags(long type) {
        this.mSpecialTypeFlags = type;
    }

    public void resetSpecialTypeFlags() {
        this.mSpecialTypeFlags = -1;
    }

    public long getSpecialTypeFlags() {
        return this.mSpecialTypeFlags;
    }

    public boolean isSpecialTypeRecognized() {
        return this.mSpecialTypeFlags != -1;
    }

    public boolean isSpecialType(long type) {
        return isSpecialTypeRecognized() && (this.mSpecialTypeFlags & type) != 0;
    }

    public boolean isMotionPhoto() {
        return isSpecialTypeRecognized() && (this.mSpecialTypeFlags & 32) != 0;
    }

    public void setMotionOffset(long offset) {
        this.mMotionOffset = offset;
    }

    public long getMotionOffset() {
        return this.mMotionOffset;
    }

    public boolean hasFace() {
        return false;
    }

    public String getLocation() {
        return LocationManager.getInstance().generateTitleLine(this.mLocation);
    }

    public long getSize() {
        return this.mSize;
    }

    public boolean isSecret() {
        return this.mIsSecret;
    }

    public byte[] getSecretKey() {
        return this.mSecretKey;
    }

    public FavoriteInfo getFavoriteInfo(boolean strictMode) {
        return new FavoriteInfo();
    }

    public PhotoDetailInfo getDetailInfo(Context context) {
        PhotoDetailInfo info = new PhotoDetailInfo();
        info.addDetail(1, Long.valueOf(getCreateTime()));
        info.addDetail(200, getOriginalPath());
        info.addDetail(2, FileUtils.getFileName(getOriginalPath()));
        info.addDetail(3, Long.valueOf(getSize()));
        info.addDetail(9, getLocation());
        double[] coordidate = new double[2];
        getCoordidate(coordidate);
        info.addDetail(6, coordidate);
        if (isVideo()) {
            info.addDetail(7, Integer.valueOf(getDuration()));
        } else {
            info.addDetail(4, Integer.valueOf(getWidth()));
            info.addDetail(5, Integer.valueOf(getHeight()));
        }
        return info;
    }

    public int getSupportOperations() {
        return ((Integer) safeRun(new Func<Integer>() {
            public Integer doFunc() {
                if (BaseDataItem.this.mSupportOperations < 0) {
                    BaseDataItem.this.mSupportOperations = BaseDataItem.this.initSupportOperations();
                }
                return Integer.valueOf(BaseDataItem.this.mSupportOperations);
            }
        })).intValue();
    }

    protected int initSupportOperations() {
        return 0;
    }

    public void removeSupportOperation(final int operation) {
        safeRun(new Func<Void>() {
            public Void doFunc() {
                if (BaseDataItem.this.mSupportOperations > 0) {
                    BaseDataItem.this.mSupportOperations = BaseDataItem.this.mSupportOperations & (operation ^ -1);
                }
                return null;
            }
        });
    }

    public String getTitle() {
        return this.mTitle;
    }

    public long getCreateTime() {
        return this.mCreateTime;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getDuration() {
        return this.mDuration;
    }

    public NSGifDecode createNSGifDecoder(JobContext jc) {
        if (!TextUtils.isEmpty(getOriginalPath())) {
            if (!isSecret()) {
                return NSGifDecode.create(getOriginalPath());
            }
            ParcelFileDescriptor fileDescriptor = null;
            NSGifDecode create;
            try {
                fileDescriptor = ParcelFileDescriptor.open(new File(getOriginalPath()), 805306368);
                create = NSGifDecode.create(fileDescriptor.getFileDescriptor(), getSecretKey());
                return create;
            } catch (Object e) {
                create = TAG;
                Log.e((String) create, "createNSGifDecoder failed %s", e);
            } finally {
                BaseMiscUtil.closeSilently(fileDescriptor);
            }
        }
        return null;
    }

    public boolean checkOriginalFileExist() {
        return FileUtils.isFileExist(getOriginalPath());
    }

    public void save(Activity activity, OnCompleteListener listener) {
    }

    public Uri getContentUriForExternal() {
        if (!TextUtils.isEmpty(this.mFilePath)) {
            return Uri.fromFile(new File(this.mFilePath));
        }
        if (TextUtils.isEmpty(this.mThumbPath)) {
            return null;
        }
        return Uri.fromFile(new File(this.mThumbPath));
    }

    public void getCoordidate(double[] latLong) {
        if (latLong != null) {
            latLong[0] = this.mLatitude;
            latLong[1] = this.mLongitude;
        }
    }

    public boolean equals(Object o) {
        if (o == null || !(o instanceof BaseDataItem)) {
            return false;
        }
        BaseDataItem other = (BaseDataItem) o;
        if (this.mKey == other.getKey() && StringUtils.nullToEmpty(other.getOriginalPath()).equals(StringUtils.nullToEmpty(getOriginalPath())) && StringUtils.nullToEmpty(other.getThumnailPath()).equals(StringUtils.nullToEmpty(getThumnailPath()))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return new Long(this.mKey).hashCode();
    }

    public boolean isModified(BaseDataItem item) {
        return (item == null || equals(item)) ? false : true;
    }

    public Uri getDownloadUri() {
        return null;
    }

    public ImageSize getMicroImageSize() {
        return ThumbConfig.get().sMicroTargetSize;
    }

    public ImageSize getBigPhotoImageSize() {
        return BigPhotoConfig.BIG_PHOTO_SIZE_DEFAULT;
    }

    private void refillBetterPath() {
        if (checkOriginalFileExist()) {
            setPathDisplayBetter(3, getOriginalPath());
        } else if (FileUtils.isFileExist(getThumnailPath())) {
            setPathDisplayBetter(2, getThumnailPath());
        } else if (FileUtils.isFileExist(getMicroPath())) {
            setPathDisplayBetter(1, getMicroPath());
        }
    }

    public String getPathDisplayBetter() {
        return (String) safeRun(new Func<String>() {
            public String doFunc() {
                return BaseDataItem.this.mDisplayBetterPath.getPath();
            }
        });
    }

    public long getDisplayBetterFileSize() {
        return ((Long) safeRun(new Func<Long>() {
            public Long doFunc() {
                return Long.valueOf(BaseDataItem.this.mDisplayBetterFileSize);
            }
        })).longValue();
    }

    protected void setPathDisplayBetter(final int type, final String path) {
        safeRun(new Func<Void>() {
            public Void doFunc() {
                BaseDataItem.this.mDisplayBetterPath.setPath(type, path);
                return null;
            }
        });
    }

    public String getViewTitle(Context context) {
        return DateUtils.formatDateTime(getCreateTime(), 896);
    }

    public String getViewSubTitle(Context context) {
        return DateUtils.formatDateTime(getCreateTime(), 44);
    }

    public String getContentDescription(Context context) {
        if (TextUtils.isEmpty(this.mContentDescription)) {
            this.mContentDescription = TalkBackUtil.getContentDescriptionForImage(context, this.mCreateTime, this.mLocation, this.mMimeType);
        }
        return this.mContentDescription;
    }

    public void reloadCache() {
        safeRun(new Func<Void>() {
            public Void doFunc() {
                BaseDataItem.this.invalidCache();
                BaseDataItem.this.onLoadCache();
                BaseDataItem.this.onCacheLoaded();
                return null;
            }
        });
    }

    protected void onCacheLoaded() {
        long originFileSize;
        String displayBetterPath = this.mDisplayBetterPath.getPath();
        this.mDisplayBetterFileSize = FileUtils.getFileSize(displayBetterPath);
        if (TextUtils.equals(this.mFilePath, displayBetterPath)) {
            originFileSize = this.mDisplayBetterFileSize;
        } else {
            originFileSize = FileUtils.getFileSize(this.mFilePath);
        }
        if (originFileSize <= 0) {
            return;
        }
        if (originFileSize != this.mSize || this.mWidth == 0 || this.mHeight == 0) {
            this.mSize = originFileSize;
            try {
                Options bitmapOptions = BitmapFactory.getBitmapSize(this.mFilePath);
                this.mWidth = bitmapOptions.outWidth;
                this.mHeight = bitmapOptions.outHeight;
            } catch (Throwable e) {
                Log.w(TAG, e);
            }
        }
    }

    protected void onLoadCache() {
        refillBetterPath();
        this.mSupportOperations = initSupportOperations();
    }

    protected void invalidCache() {
    }

    public String toString() {
        return "key: " + this.mKey + " path: " + this.mFilePath + " thumb: " + this.mThumbPath;
    }

    private boolean lock() {
        if (ThreadManager.isMainThread()) {
            boolean locked = false;
            try {
                locked = this.mCacheLock.tryLock(200, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            Log.d(TAG, "UI thread acquired %s", Boolean.valueOf(locked));
            return locked;
        }
        this.mCacheLock.lock();
        return true;
    }

    private void unlock() {
        this.mCacheLock.unlock();
    }

    private <T> T safeRun(Func<T> func) {
        if (!lock()) {
            return func.doFunc();
        }
        try {
            T doFunc = func.doFunc();
            return doFunc;
        } finally {
            unlock();
        }
    }
}
