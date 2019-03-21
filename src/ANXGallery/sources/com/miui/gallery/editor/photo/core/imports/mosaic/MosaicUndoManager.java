package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.opengl.GLES20;
import com.miui.gallery.editor.photo.widgets.glview.GLFBOManager;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;

class MosaicUndoManager {
    private final int mBitmapHeight;
    private final int mBitmapWidth;
    private final LinkedList<GLFBOManager> mBufferItems = new LinkedList();
    private CaptureListener mCaptureListener;
    private final LinkedList<MosaicOperationItem> mMosaicOperationItems = new LinkedList();
    private final Stack<GLFBOManager> mReuseBufferItem = new Stack();
    private final LinkedList<GLFBOManager> mRevokedBufferItems = new LinkedList();
    private final LinkedList<RevokedItem> mRevokedOperationItems = new LinkedList();
    private final int mViewHeight;
    private final int mViewWidth;

    interface CaptureListener {
        void onCapture();
    }

    static class RevokedItem {
        final MosaicGLEntity mosaicGLEntity;
        final PaintingItem paintingItem;

        RevokedItem(MosaicGLEntity mosaicGLEntity, PaintingItem paintingItem) {
            this.mosaicGLEntity = mosaicGLEntity;
            this.paintingItem = paintingItem;
        }
    }

    MosaicUndoManager(int width, int height, int viewWidth, int viewHeight) {
        this.mBitmapWidth = width;
        this.mBitmapHeight = height;
        this.mViewWidth = viewWidth;
        this.mViewHeight = viewHeight;
    }

    public void record(PaintingItem paintingItem, MosaicGLEntity mosaicGLEntity, boolean fromUser) {
        if (fromUser) {
            clearRevokedItem();
        }
        if (this.mMosaicOperationItems.isEmpty()) {
            addNewOperationItem(paintingItem, mosaicGLEntity);
            return;
        }
        MosaicOperationItem last = (MosaicOperationItem) this.mMosaicOperationItems.getLast();
        if (last.mosaicGLEntity == mosaicGLEntity) {
            last.add(paintingItem);
        } else {
            addNewOperationItem(paintingItem, mosaicGLEntity);
        }
    }

    public LinkedList<MosaicOperationItem> exportRecord() {
        return this.mMosaicOperationItems;
    }

    public List<String> generateSample() {
        List<String> sample = new ArrayList();
        Iterator it = this.mMosaicOperationItems.iterator();
        while (it.hasNext()) {
            sample.add(((MosaicOperationItem) it.next()).mosaicGLEntity.name);
        }
        return sample;
    }

    public void capture(GLFBOManager mDisplayManager, GLTextureShader standardDrawable) {
        GLFBOManager bufferItem;
        if (this.mBufferItems.size() < 6) {
            if (this.mReuseBufferItem.isEmpty()) {
                bufferItem = new GLFBOManager(this.mBitmapWidth, this.mBitmapHeight, this.mViewWidth, this.mViewHeight);
            } else {
                bufferItem = (GLFBOManager) this.mReuseBufferItem.pop();
            }
            bufferItem.bind();
            GLES20.glClear(16640);
            standardDrawable.drawFBO(mDisplayManager.getTextureId());
            bufferItem.unBind();
            this.mBufferItems.add(bufferItem);
        } else {
            bufferItem = (GLFBOManager) this.mBufferItems.removeFirst();
            bufferItem.bind();
            GLES20.glClear(16640);
            standardDrawable.drawFBO(mDisplayManager.getTextureId());
            bufferItem.unBind();
            this.mBufferItems.add(bufferItem);
        }
        if (this.mCaptureListener != null) {
            this.mCaptureListener.onCapture();
        }
    }

    private void clearRevokedItem() {
        this.mRevokedOperationItems.clear();
        while (!this.mRevokedBufferItems.isEmpty()) {
            this.mReuseBufferItem.push(this.mRevokedBufferItems.removeLast());
        }
    }

    public boolean isEmpty() {
        if (this.mMosaicOperationItems.isEmpty()) {
            return true;
        }
        if (this.mMosaicOperationItems.size() == 1) {
            return ((MosaicOperationItem) this.mMosaicOperationItems.getLast()).isEmpty();
        }
        return false;
    }

    public boolean canRevoke() {
        return this.mBufferItems.size() > 1 && !this.mMosaicOperationItems.isEmpty();
    }

    public boolean canRevert() {
        return (this.mRevokedBufferItems.isEmpty() || this.mRevokedOperationItems.isEmpty()) ? false : true;
    }

    public GLFBOManager doRevoke() {
        if (!canRevoke()) {
            return null;
        }
        MosaicOperationItem last = (MosaicOperationItem) this.mMosaicOperationItems.getLast();
        this.mRevokedOperationItems.add(new RevokedItem(last.mosaicGLEntity, last.removeLast()));
        if (last.isEmpty()) {
            this.mMosaicOperationItems.removeLast();
        }
        this.mRevokedBufferItems.add(this.mBufferItems.removeLast());
        if (this.mBufferItems.isEmpty()) {
            return null;
        }
        return (GLFBOManager) this.mBufferItems.getLast();
    }

    public GLFBOManager doRevert() {
        if (!canRevert()) {
            return null;
        }
        RevokedItem revokedItem = (RevokedItem) this.mRevokedOperationItems.removeLast();
        record(revokedItem.paintingItem, revokedItem.mosaicGLEntity, false);
        GLFBOManager bufferItem = (GLFBOManager) this.mRevokedBufferItems.removeLast();
        this.mBufferItems.add(bufferItem);
        return bufferItem;
    }

    private void addNewOperationItem(PaintingItem paintingItem, MosaicGLEntity mosaicGLEntity) {
        MosaicOperationItem item = new MosaicOperationItem(mosaicGLEntity);
        item.add(paintingItem);
        this.mMosaicOperationItems.add(item);
    }

    public void setCaptureListener(CaptureListener captureListener) {
        this.mCaptureListener = captureListener;
    }

    public void clearBuffer() {
        while (!this.mBufferItems.isEmpty()) {
            ((GLFBOManager) this.mBufferItems.removeLast()).clear();
        }
        while (!this.mRevokedBufferItems.isEmpty()) {
            ((GLFBOManager) this.mRevokedBufferItems.removeLast()).clear();
        }
        while (!this.mReuseBufferItem.isEmpty()) {
            ((GLFBOManager) this.mReuseBufferItem.pop()).clear();
        }
    }
}
