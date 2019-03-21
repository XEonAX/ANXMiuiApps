package com.nexstreaming.nexeditorsdk;

import android.graphics.Bitmap;
import com.nexstreaming.nexeditorsdk.nexEngine.nexErrorCode;

public interface nexExportListener {
    void onExportDone(Bitmap bitmap);

    void onExportFail(nexErrorCode nexerrorcode);

    void onExportProgress(int i);
}
