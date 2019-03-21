package com.baidu.vis.ClassIfication;

import android.content.Context;
import android.util.Log;
import com.baidu.vis.ClassIfication.SDKExceptions.IlleagleCpuArch;
import com.baidu.vis.ClassIfication.SDKExceptions.IlleagleLicense;
import com.baidu.vis.ClassIfication.SDKExceptions.MissingModleFileInAssetFolder;
import com.baidu.vis.ClassIfication.SDKExceptions.NV21BytesLengthNotMatch;
import com.baidu.vis.ClassIfication.SDKExceptions.NoSDCardPermission;
import com.baidu.vis.ClassIfication.SDKExceptions.NotInit;
import com.baidu.vis.ClassIfication.SDKExceptions.loadLicenseLibraryError;
import com.baidu.vis.ClassIfication.SDKExceptions.loadNativeLibraryError;
import java.io.File;

public class Predictor {
    private static final String TAG = "ClassIfication";
    private static boolean isInited = false;
    public static loadLicenseLibraryError loadLicenseLibraryError = null;
    public static loadNativeLibraryError loadNativeLibraryError = null;
    private static int mAuthorityStatus = 0;
    private static Predictor mInstance = null;
    private static final boolean sCheckAuthority = true;

    public static native int nativeModelInit(String str, Context context);

    public static native Response nativePredict(Object obj, String str, byte[] bArr, int i, int i2);

    public static native int nativeRelease();

    public static synchronized Predictor getInstance() {
        Predictor predictor;
        synchronized (Predictor.class) {
            if (mInstance == null) {
                mInstance = new Predictor();
            }
            predictor = mInstance;
        }
        return predictor;
    }

    public static synchronized int init(Context context, String apikey) throws loadNativeLibraryError, loadLicenseLibraryError {
        int i;
        synchronized (Predictor.class) {
            if (loadNativeLibraryError != null) {
                throw loadNativeLibraryError;
            } else if (loadLicenseLibraryError != null) {
                throw loadLicenseLibraryError;
            } else {
                i = mAuthorityStatus;
            }
        }
        return i;
    }

    public static synchronized int initModelWithPath(Context mContext, String modelPath) throws IlleagleLicense, NV21BytesLengthNotMatch {
        int ret;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            }
            Util.checkFile(modelPath);
            ret = nativeModelInit(modelPath, mContext);
            if (ret == 0) {
                isInited = true;
            }
        }
        return ret;
    }

    public static synchronized int initModel(Context mContext, String nnFileName) throws NoSDCardPermission, MissingModleFileInAssetFolder, IlleagleCpuArch, IlleagleLicense {
        int ret;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            }
            Util.copyAssets(mContext, nnFileName);
            ret = nativeModelInit(new File(mContext.getExternalFilesDir(null), nnFileName).getAbsolutePath(), mContext);
            if (ret == 0) {
                isInited = true;
            }
        }
        return ret;
    }

    public static synchronized int modelRelease() throws IlleagleLicense, NotInit {
        int nativeRelease;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            } else if (isInited) {
                nativeRelease = nativeRelease();
            } else {
                Log.d(TAG, "model not init");
                throw new NotInit();
            }
        }
        return nativeRelease;
    }

    public static synchronized Response predict(String imagePath) throws IlleagleLicense, NotInit, NV21BytesLengthNotMatch {
        Response nativePredict;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            } else if (isInited) {
                Util.checkFile(imagePath);
                nativePredict = nativePredict(null, imagePath, null, 0, 0);
            } else {
                Log.d(TAG, "model not init");
                throw new NotInit();
            }
        }
        return nativePredict;
    }

    public static synchronized Response predict(Object bmp1) throws IlleagleLicense, NotInit {
        Response nativePredict;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            } else if (isInited) {
                nativePredict = nativePredict(bmp1, "", null, 0, 0);
            } else {
                Log.d(TAG, "model not init");
                throw new NotInit();
            }
        }
        return nativePredict;
    }

    public static synchronized Response predict(byte[] rgbaBytes, int width, int height) throws IlleagleLicense, NotInit, NV21BytesLengthNotMatch {
        Response nativePredict;
        synchronized (Predictor.class) {
            if (mAuthorityStatus != 0) {
                Log.d(TAG, "license error : " + mAuthorityStatus);
                throw new IlleagleLicense();
            } else if (!isInited) {
                Log.d(TAG, "model not init");
                throw new NotInit();
            } else if (rgbaBytes.length == 0) {
                Log.d(TAG, "NV21Bytes Length NotMatch");
                throw new NV21BytesLengthNotMatch();
            } else {
                nativePredict = nativePredict(null, "", rgbaBytes, width, height);
            }
        }
        return nativePredict;
    }
}
