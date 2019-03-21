package com.miui.gallery.assistant.algorithm;

import android.graphics.Bitmap;
import com.baidu.vis.ClassIfication.Predictor;
import com.baidu.vis.ClassIfication.Response;
import com.baidu.vis.ClassIfication.SDKExceptions.IlleagleLicense;
import com.baidu.vis.ClassIfication.SDKExceptions.NV21BytesLengthNotMatch;
import com.baidu.vis.ClassIfication.SDKExceptions.NotInit;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.library.LibraryManager;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;

public class BaiduSceneFilterAlgorithm extends Algorithm {
    private volatile boolean mIsInitialized = false;

    BaiduSceneFilterAlgorithm() {
        super(1005);
    }

    protected boolean onInitAlgorithm() {
        try {
            Predictor.getInstance();
            Predictor.init(GalleryApp.sGetAndroidContext(), "Gallery");
            try {
                String modlePath = LibraryManager.getInstance().getLibraryItemPath("model.mlm");
                if (FileUtils.isFileExist(modlePath)) {
                    Predictor.getInstance();
                    if (Predictor.initModelWithPath(GalleryApp.sGetAndroidContext(), modlePath) == 0) {
                        this.mIsInitialized = true;
                        return true;
                    }
                }
            } catch (NV21BytesLengthNotMatch nv21BytesLengthNotMatch) {
                nv21BytesLengthNotMatch.printStackTrace();
            } catch (IlleagleLicense illeagleLicense) {
                illeagleLicense.printStackTrace();
            } catch (Error e) {
                reportAlgorithmError(e);
                return false;
            }
            return false;
        } catch (Throwable loadNativeLibraryError) {
            Log.e(this.TAG, loadNativeLibraryError);
            return false;
        } catch (Throwable loadLicenseLibraryError) {
            Log.e(this.TAG, loadLicenseLibraryError);
            return false;
        } catch (Exception e2) {
            reportAlgorithmError(e2);
            return false;
        }
    }

    protected void onDestroyAlgorithm() {
        try {
            Predictor.getInstance();
            int releaseModel = Predictor.modelRelease();
            if (releaseModel != 0) {
                Log.e(this.TAG, "Model release fail:%d", Integer.valueOf(releaseModel));
            }
        } catch (IlleagleLicense illeagleLicense) {
            illeagleLicense.printStackTrace();
        } catch (NotInit notInit) {
            notInit.printStackTrace();
        } catch (Error e) {
            reportAlgorithmError(e);
        }
    }

    public synchronized Response predict(Bitmap bitmap) {
        Response predict;
        if (this.mIsInitialized) {
            try {
                Predictor.getInstance();
                predict = Predictor.predict((Object) bitmap);
            } catch (IlleagleLicense illeagleLicense) {
                illeagleLicense.printStackTrace();
            } catch (NotInit notInit) {
                notInit.printStackTrace();
            } catch (Error e) {
                reportAlgorithmError(e);
            }
        }
        predict = null;
        return predict;
    }
}
