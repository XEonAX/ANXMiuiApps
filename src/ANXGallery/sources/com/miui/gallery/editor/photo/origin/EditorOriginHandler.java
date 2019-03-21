package com.miui.gallery.editor.photo.origin;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.editor.photo.app.DraftManager;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.origin.EditorOriginFunc.Stub;
import com.miui.gallery.editor.photo.utils.BigBitmapLoadUtils;
import com.miui.gallery.util.Log;
import java.util.List;

public class EditorOriginHandler {
    private EditorOriginFunc mBinder;
    private Context mContext;
    private int mHandlerMode;
    private ServiceConnection mServiceConnection = new ServiceConnection() {
        public void onServiceConnected(ComponentName name, IBinder service) {
            EditorOriginHandler.this.mBinder = Stub.asInterface(service);
        }

        public void onServiceDisconnected(ComponentName name) {
            EditorOriginHandler.this.mBinder = null;
        }
    };
    private Uri mSource;

    public EditorOriginHandler(Context context, Uri source) {
        this.mContext = context;
        this.mSource = source;
        if (GalleryApp.isEditorProcess()) {
            this.mHandlerMode = 2;
        } else if (useDoubleProcess()) {
            this.mHandlerMode = 1;
        } else {
            this.mHandlerMode = 0;
        }
        Log.d("EditorOriginHandler", "editor handler mode:%d", Integer.valueOf(this.mHandlerMode));
    }

    private boolean useDoubleProcess() {
        if (BigBitmapLoadUtils.getMaxMemory(this.mContext) < 512) {
            return true;
        }
        return false;
    }

    public boolean doExport(DraftManager draftManager, Uri out) {
        if (!needTransProcess() || draftManager.isPreviewSameWithOrigin()) {
            return draftManager.export(out);
        }
        return doOriginHandler(out, draftManager.getRenderDataList(), draftManager.getBundle());
    }

    public boolean isInMainProcess() {
        return this.mHandlerMode == 0;
    }

    public boolean needTransProcess() {
        return this.mHandlerMode == 1;
    }

    public void onStart() {
        if (needTransProcess()) {
            bindEditorService();
        }
    }

    public void onDestroy() {
        if (needTransProcess()) {
            unbindEditorService();
        }
    }

    private void bindEditorService() {
        try {
            this.mContext.bindService(new Intent(this.mContext, EditorOriginHandlerService.class), this.mServiceConnection, 5);
        } catch (Throwable e) {
            Log.e("EditorOriginHandler", e);
        }
    }

    private void unbindEditorService() {
        try {
            this.mContext.unbindService(this.mServiceConnection);
        } catch (Throwable e) {
            Log.e("EditorOriginHandler", e);
        }
    }

    public boolean doOriginHandler(Uri out, List<RenderData> renderDataList, Bundle bundle) {
        if (this.mBinder != null) {
            try {
                Log.d("EditorOriginHandler", "doOriginHandler");
                return this.mBinder.handlerOrigin(new OriginRenderData(renderDataList, this.mSource, out, bundle));
            } catch (Throwable e) {
                Log.e("EditorOriginHandler", e);
            }
        }
        return false;
    }
}
