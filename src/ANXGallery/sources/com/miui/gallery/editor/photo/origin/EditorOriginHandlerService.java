package com.miui.gallery.editor.photo.origin;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.miui.gallery.editor.photo.app.DraftManager;
import com.miui.gallery.editor.photo.origin.EditorOriginFunc.Stub;
import com.miui.gallery.util.Log;

public class EditorOriginHandlerService extends Service {
    private Stub mBinder = new Stub() {
        public boolean handlerOrigin(OriginRenderData originRenderData) throws RemoteException {
            Log.d("EditorOriginHandlerService", "handlerOrigin start");
            DraftManager draftManager = new DraftManager(EditorOriginHandlerService.this, originRenderData.mSource, originRenderData.mBundle);
            draftManager.setRenderDataList(originRenderData.mRenderDataList);
            boolean success = draftManager.export(originRenderData.mOut);
            draftManager.release();
            Log.d("EditorOriginHandlerService", "handlerOrigin end");
            return success;
        }
    };

    public void onCreate() {
        super.onCreate();
        Log.d("EditorOriginHandlerService", "onCreate");
    }

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d("EditorOriginHandlerService", "onDestroy");
    }
}
