package com.nexstreaming.nexeditorsdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Rect;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAsset;
import com.nexstreaming.app.common.nexasset.overlay.OverlayAssetFactory;
import com.nexstreaming.app.common.util.FileType;
import com.nexstreaming.kminternal.kinemaster.config.a;
import com.nexstreaming.nexeditorsdk.exception.ClipIsNotVideoException;
import com.nexstreaming.nexeditorsdk.exception.nexSDKException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class nexOverlayImage implements Cloneable {
    private static final String TAG = "nexOverlayImage";
    public static final int kOverlayType_Asset = 6;
    public static final int kOverlayType_ResourceImage = 1;
    public static final int kOverlayType_RunTimeImage = 4;
    public static final int kOverlayType_SolidColorImage = 5;
    public static final int kOverlayType_UserImage = 2;
    public static final int kOverlayType_UserVideo = 3;
    private static Map<String, nexOverlayImage> sOverlayImageItems;
    private int anchorPoint = 4;
    private OverlayAsset cachedOverlayAsset;
    private boolean mAssetManager;
    private int mBitmapHeight;
    private int mBitmapInSample = 1;
    private String mBitmapPath;
    private int mBitmapWidth;
    private int mHeight;
    private String mId;
    private runTimeMakeBitMap mMakeBitMap;
    public int mRecommandDuration = -1;
    protected int mResourceId;
    private int mSolidColor;
    private int mType;
    protected boolean mUpdate = false;
    private boolean mUpdateInfo;
    private VideoClipInfo mVideoClipInfo;
    private int mWidth;

    public interface runTimeMakeBitMap {
        int getBitmapID();

        boolean isAniMate();

        Bitmap makeBitmap();
    }

    public static class VideoClipInfo implements Cloneable {
        private boolean mHasAudio;
        private boolean mHasVideo;
        private int mHeight;
        private String mPath;
        private int mTotalTime;
        private int mWidth;

        public boolean hasVideo() {
            return this.mHasVideo;
        }

        public boolean hasAudio() {
            return this.mHasAudio;
        }

        public String getPath() {
            return this.mPath;
        }

        public int getTotalTime() {
            return this.mTotalTime;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getHeight() {
            return this.mHeight;
        }

        protected static VideoClipInfo clone(VideoClipInfo videoClipInfo) {
            VideoClipInfo videoClipInfo2;
            CloneNotSupportedException e;
            try {
                videoClipInfo2 = (VideoClipInfo) videoClipInfo.clone();
                try {
                    videoClipInfo2.mPath = videoClipInfo.mPath;
                } catch (CloneNotSupportedException e2) {
                    e = e2;
                    e.printStackTrace();
                    return videoClipInfo2;
                }
            } catch (CloneNotSupportedException e3) {
                CloneNotSupportedException cloneNotSupportedException = e3;
                videoClipInfo2 = null;
                e = cloneNotSupportedException;
                e.printStackTrace();
                return videoClipInfo2;
            }
            return videoClipInfo2;
        }
    }

    protected static nexOverlayImage clone(nexOverlayImage nexoverlayimage) {
        nexOverlayImage nexoverlayimage2;
        CloneNotSupportedException e;
        try {
            nexoverlayimage2 = (nexOverlayImage) nexoverlayimage.clone();
            try {
                if (nexoverlayimage.mVideoClipInfo != null) {
                    nexoverlayimage2.mVideoClipInfo = VideoClipInfo.clone(nexoverlayimage.mVideoClipInfo);
                }
                nexoverlayimage2.mId = nexoverlayimage.mId;
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return nexoverlayimage2;
            }
        } catch (CloneNotSupportedException e3) {
            CloneNotSupportedException cloneNotSupportedException = e3;
            nexoverlayimage2 = null;
            e = cloneNotSupportedException;
            e.printStackTrace();
            return nexoverlayimage2;
        }
        return nexoverlayimage2;
    }

    static boolean registerOverlayImage(nexOverlayImage nexoverlayimage) {
        if (sOverlayImageItems == null) {
            sOverlayImageItems = new HashMap();
        }
        if (sOverlayImageItems.containsKey(nexoverlayimage.getId())) {
            return false;
        }
        sOverlayImageItems.put(nexoverlayimage.getId(), nexoverlayimage);
        return true;
    }

    static boolean unregisterOverlayImage(String str) {
        if (sOverlayImageItems == null) {
            sOverlayImageItems = new HashMap();
        }
        sOverlayImageItems.remove(str);
        return true;
    }

    static void allClearRegisterOverlayImage() {
        if (sOverlayImageItems == null) {
            sOverlayImageItems = new HashMap();
        }
        sOverlayImageItems.clear();
    }

    static nexOverlayImage getOverlayImage(String str) {
        if (sOverlayImageItems == null) {
            sOverlayImageItems = new HashMap();
        }
        return (nexOverlayImage) sOverlayImageItems.get(str);
    }

    public String getId() {
        return this.mId;
    }

    private int getType() {
        if (this.mType == 0) {
            if (this.mAssetManager) {
                this.mType = 6;
                return this.mType;
            } else if (this.mMakeBitMap != null) {
                this.mType = 4;
                return this.mType;
            } else if (this.mVideoClipInfo != null) {
                this.mType = 3;
                return this.mType;
            } else if (this.mResourceId != 0) {
                this.mType = 1;
                return this.mType;
            } else if (this.mSolidColor != 0) {
                this.mType = 5;
                return this.mType;
            } else if (this.mBitmapPath != null) {
                this.mType = 2;
                return this.mType;
            }
        }
        return this.mType;
    }

    nexOverlayImage(String str, int i, int i2, runTimeMakeBitMap runtimemakebitmap) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = runtimemakebitmap;
        this.mBitmapPath = null;
        this.mWidth = i;
        this.mHeight = i2;
        this.mUpdateInfo = true;
        this.mBitmapWidth = this.mWidth;
        this.mBitmapHeight = this.mHeight;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
    }

    nexOverlayImage(String str, int i, int i2, String str2) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mBitmapPath = str2;
        this.mWidth = i;
        this.mHeight = i2;
        this.mUpdateInfo = true;
        this.mBitmapWidth = this.mWidth;
        this.mBitmapHeight = this.mHeight;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
        initSample();
    }

    nexOverlayImage(String str) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mBitmapPath = null;
        this.mUpdateInfo = false;
        this.mBitmapWidth = this.mWidth;
        this.mBitmapHeight = this.mHeight;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
    }

    nexOverlayImage(String str, boolean z) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mBitmapPath = null;
        this.mUpdateInfo = false;
        this.mBitmapWidth = this.mWidth;
        this.mBitmapHeight = this.mHeight;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
        this.mAssetManager = z;
    }

    public nexOverlayImage(String str, String str2) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mBitmapPath = str2;
        this.mUpdateInfo = true;
        this.mBitmapWidth = this.mWidth;
        this.mBitmapHeight = this.mHeight;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
        FileType fromFile = FileType.fromFile(str2);
        if (fromFile == null || !fromFile.isImage()) {
            this.mBitmapPath = null;
            nexClip supportedClip = nexClip.getSupportedClip(str2);
            if (supportedClip == null) {
                throw new ClipIsNotVideoException();
            } else if (supportedClip.getClipType() == 4) {
                this.mVideoClipInfo = new VideoClipInfo();
                this.mVideoClipInfo.mHasAudio = supportedClip.hasAudio();
                this.mVideoClipInfo.mHasVideo = supportedClip.hasVideo();
                this.mVideoClipInfo.mPath = supportedClip.getRealPath();
                this.mVideoClipInfo.mTotalTime = supportedClip.getTotalTime();
                this.mVideoClipInfo.mWidth = supportedClip.getWidth();
                this.mVideoClipInfo.mHeight = supportedClip.getHeight();
                return;
            } else {
                throw new ClipIsNotVideoException();
            }
        }
        this.mBitmapPath = str2;
        initSample();
    }

    public nexOverlayImage(String str, Context context, int i) {
        this.mId = str;
        this.mResourceId = i;
        this.mUpdateInfo = true;
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(context.getApplicationContext().getResources(), this.mResourceId, options);
        this.mWidth = options.outWidth;
        this.mHeight = options.outHeight;
        this.mMakeBitMap = null;
        this.mBitmapPath = null;
        this.mBitmapWidth = 0;
        this.mBitmapHeight = 0;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
    }

    public nexOverlayImage(String str, runTimeMakeBitMap runtimemakebitmap) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = runtimemakebitmap;
        this.mBitmapPath = null;
        this.mBitmapWidth = 0;
        this.mBitmapHeight = 0;
        this.mVideoClipInfo = null;
        this.mSolidColor = 0;
    }

    public nexOverlayImage(String str, nexClip nexclip) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mBitmapWidth = 0;
        this.mBitmapHeight = 0;
        if (nexclip.getClipType() == 4) {
            this.mVideoClipInfo = new VideoClipInfo();
            this.mVideoClipInfo.mHasAudio = nexclip.hasAudio();
            this.mVideoClipInfo.mHasVideo = nexclip.hasVideo();
            this.mVideoClipInfo.mPath = nexclip.getRealPath();
            this.mVideoClipInfo.mTotalTime = nexclip.getTotalTime();
            this.mVideoClipInfo.mWidth = nexclip.getWidth();
            this.mVideoClipInfo.mHeight = nexclip.getHeight();
            this.mSolidColor = 0;
            this.mBitmapPath = null;
        } else if (nexclip.getClipType() != 1) {
            this.mVideoClipInfo = null;
            this.mSolidColor = 0;
            this.mBitmapPath = null;
            throw new nexSDKException("Audio not supported!");
        } else if (nexclip.isSolid()) {
            this.mVideoClipInfo = null;
            this.mSolidColor = nexclip.getSolidColor();
            this.mBitmapPath = null;
        } else {
            this.mSolidColor = 0;
            this.mVideoClipInfo = null;
            this.mBitmapPath = nexclip.getRealPath();
            initSample();
        }
    }

    public nexOverlayImage(String str, int i) {
        this.mId = str;
        this.mResourceId = 0;
        this.mMakeBitMap = null;
        this.mWidth = 32;
        this.mHeight = 18;
        this.mBitmapPath = null;
        this.mBitmapWidth = 32;
        this.mBitmapHeight = 18;
        this.mSolidColor = i;
        this.mVideoClipInfo = null;
        this.mUpdateInfo = true;
    }

    public int getResourceId() {
        return this.mResourceId;
    }

    boolean isAniMate() {
        if (this.mMakeBitMap == null || !this.mMakeBitMap.isAniMate()) {
            return false;
        }
        return true;
    }

    private void updateInfo() {
        if (!this.mUpdateInfo) {
            switch (getType()) {
                case 1:
                case 5:
                    break;
                case 3:
                    this.mWidth = this.mVideoClipInfo.mWidth;
                    this.mHeight = this.mVideoClipInfo.mHeight;
                    this.mUpdateInfo = true;
                    break;
                case 6:
                    getUserBitmap();
                    this.mWidth = this.cachedOverlayAsset.getIntrinsicWidth();
                    this.mHeight = this.cachedOverlayAsset.getIntrinsicHeight();
                    break;
                default:
                    Bitmap userBitmap = getUserBitmap();
                    this.mWidth = userBitmap.getWidth();
                    this.mHeight = userBitmap.getHeight();
                    break;
            }
            this.mUpdateInfo = true;
        }
    }

    public int getWidth() {
        updateInfo();
        return this.mWidth;
    }

    public int getHeight() {
        updateInfo();
        return this.mHeight;
    }

    void getBound(Rect rect) {
        updateInfo();
        rect.left = 0 - (this.mWidth / 2);
        rect.top = 0 - (this.mHeight / 2);
        rect.right = (this.mWidth / 2) + 0;
        rect.bottom = (this.mHeight / 2) + 0;
    }

    OverlayAsset getOverlayAssetBitmap() throws IOException, XmlPullParserException {
        if (!this.mAssetManager) {
            return null;
        }
        if (this.cachedOverlayAsset == null) {
            this.cachedOverlayAsset = OverlayAssetFactory.forItem(this.mId);
        }
        return this.cachedOverlayAsset;
    }

    protected Bitmap getUserBitmap() {
        switch (getType()) {
            case 1:
                return BitmapFactory.decodeResource(a.a().b().getResources(), this.mResourceId);
            case 3:
                return null;
            case 4:
                return this.mMakeBitMap.makeBitmap();
            case 5:
                return getSolidRect();
            case 6:
                try {
                    getOverlayAssetBitmap();
                    return null;
                } catch (IOException e) {
                    e.printStackTrace();
                    return null;
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                    return null;
                }
            default:
                if (this.mBitmapWidth == 0) {
                    this.mBitmapWidth = 1280;
                }
                if (this.mBitmapHeight == 0) {
                    this.mBitmapHeight = 720;
                }
                return decodeSampledBitmapFromFile(this.mBitmapPath, this.mBitmapWidth, this.mBitmapHeight);
        }
    }

    @Deprecated
    public void setCrop(int i, int i2) {
        if (getType() == 2) {
            this.mBitmapWidth = i;
            this.mBitmapHeight = i2;
        }
    }

    @Deprecated
    public void resizeBitmap(int i, int i2) {
        if (getType() == 2) {
            this.mBitmapWidth = i;
            this.mBitmapHeight = i2;
        }
    }

    protected String getUserBitmapID() {
        if (getType() == 4 && this.mMakeBitMap != null) {
            return this.mId + this.mMakeBitMap.getBitmapID();
        }
        if (getType() != 2 || this.mBitmapPath == null) {
            return this.mId;
        }
        return this.mId + this.mBitmapPath.hashCode();
    }

    private int calculateInSampleSize(Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 <= i2 && i4 <= i) {
            return 1;
        }
        int round = Math.round(((float) i3) / ((float) i2));
        i3 = Math.round(((float) i4) / ((float) i));
        return round < i3 ? round : i3;
    }

    private Bitmap decodeSampledBitmapFromFile(String str, int i, int i2) {
        Options options = new Options();
        options.inSampleSize = this.mBitmapInSample;
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        if (decodeFile == null) {
            return null;
        }
        if (decodeFile.getWidth() == i || decodeFile.getHeight() == i2) {
            return decodeFile;
        }
        int round;
        int round2;
        float width = ((float) decodeFile.getWidth()) / ((float) i2);
        float height = ((float) decodeFile.getHeight()) / ((float) i);
        if (height > width) {
            round = Math.round(((float) decodeFile.getWidth()) * height);
            round2 = Math.round(((float) decodeFile.getHeight()) * height);
        } else {
            round = Math.round(((float) decodeFile.getWidth()) * width);
            round2 = Math.round(width * ((float) decodeFile.getHeight()));
        }
        return Bitmap.createScaledBitmap(decodeFile, round, round2, true);
    }

    public void releaseBitmap() {
    }

    boolean isVideo() {
        if (getType() == 3) {
            return true;
        }
        return false;
    }

    boolean isUpdated() {
        return this.mUpdate;
    }

    public VideoClipInfo getVideoClipInfo() {
        return this.mVideoClipInfo;
    }

    boolean isAssetManager() {
        if (getType() == 6) {
            return true;
        }
        return false;
    }

    private Bitmap getSolidRect() {
        int i = this.mSolidColor;
        int[] iArr = new int[576];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = i;
        }
        return Bitmap.createBitmap(iArr, 32, 18, Config.ARGB_8888);
    }

    private void initSample() {
        int i = 1280;
        int i2 = 720;
        if (this.mBitmapPath != null) {
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.mBitmapPath, options);
            if (options.outHeight <= options.outWidth) {
                i2 = 1280;
                i = 720;
            }
            options.inSampleSize = calculateInSampleSize(options, i2, i);
            this.mBitmapInSample = options.inSampleSize;
            BitmapFactory.decodeFile(this.mBitmapPath, options);
            this.mWidth = options.outWidth;
            this.mHeight = options.outHeight;
            this.mBitmapWidth = this.mWidth;
            this.mBitmapHeight = this.mHeight;
        }
    }

    public void setAnchorPoint(int i) {
        this.anchorPoint = i;
    }

    public int getAnchorPoint() {
        return this.anchorPoint;
    }

    public int getDefaultDuration() {
        if (this.mRecommandDuration < 0) {
            int i = 0;
            switch (getType()) {
                case 6:
                    try {
                        i = getOverlayAssetBitmap().getDefaultDuration();
                        break;
                    } catch (IOException e) {
                        e.printStackTrace();
                        break;
                    } catch (XmlPullParserException e2) {
                        e2.printStackTrace();
                        break;
                    }
            }
            this.mRecommandDuration = i;
        }
        return this.mRecommandDuration;
    }
}
