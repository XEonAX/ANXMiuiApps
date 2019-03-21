package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.opengl.GLES20;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;
import java.nio.FloatBuffer;
import java.util.List;

public class BaseOriginalFilterGroup extends BaseOriginalFilter implements IFilterEmptyValidate {
    private List<BaseOriginalFilter> mFilters;
    private int[] mGroupFrameBufferTextures = null;
    private int[] mGroupFrameBuffers = null;
    private int mGroupFrameHeight = -1;
    private int mGroupFrameWidth = -1;

    public BaseOriginalFilterGroup(List<BaseOriginalFilter> filters) {
        super("", "");
        this.mFilters = filters;
    }

    public BaseOriginalFilterGroup() {
        super("", "");
    }

    public void onDestroy() {
        super.onDestroy();
        for (BaseOriginalFilter filter : this.mFilters) {
            filter.destroy();
        }
        destroyGroupFrameBuffers();
    }

    public void init() {
        for (BaseOriginalFilter filter : this.mFilters) {
            filter.init();
        }
    }

    public void onInputSizeChanged(int width, int height) {
        int i;
        super.onInputSizeChanged(width, height);
        int size = this.mFilters.size();
        for (i = 0; i < size; i++) {
            ((BaseOriginalFilter) this.mFilters.get(i)).onInputSizeChanged(width, height);
        }
        if (!(this.mGroupFrameBuffers == null || (this.mGroupFrameWidth == width && this.mGroupFrameHeight == height && this.mGroupFrameBuffers.length == size - 1))) {
            destroyGroupFrameBuffers();
            this.mGroupFrameWidth = width;
            this.mGroupFrameHeight = height;
        }
        if (this.mGroupFrameBuffers == null) {
            this.mGroupFrameBuffers = new int[(size - 1)];
            this.mGroupFrameBufferTextures = new int[(size - 1)];
            for (i = 0; i < size - 1; i++) {
                GLES20.glGenFramebuffers(1, this.mGroupFrameBuffers, i);
                GLES20.glGenTextures(1, this.mGroupFrameBufferTextures, i);
                GLES20.glBindTexture(3553, this.mGroupFrameBufferTextures[i]);
                GLES20.glTexImage2D(3553, 0, 6408, width, height, 0, 6408, 5121, null);
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                GLES20.glBindFramebuffer(36160, this.mGroupFrameBuffers[i]);
                GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mGroupFrameBufferTextures[i], 0);
                GLES20.glBindTexture(3553, 0);
                GLES20.glBindFramebuffer(36160, 0);
            }
        }
    }

    public void onDisplaySizeChanged(int width, int height) {
        super.onDisplaySizeChanged(width, height);
        for (int i = 0; i < this.mFilters.size(); i++) {
            ((BaseOriginalFilter) this.mFilters.get(i)).onDisplaySizeChanged(width, height);
        }
    }

    public void initFrameBuffers(int width, int height) {
        for (int i = 0; i < this.mFilters.size(); i++) {
            ((BaseOriginalFilter) this.mFilters.get(i)).initFrameBuffers(width, height);
        }
    }

    public int onDrawFrame(int textureId, FloatBuffer cubeBuffer, FloatBuffer textureBuffer) {
        if (this.mGroupFrameBuffers == null || this.mGroupFrameBufferTextures == null) {
            return -1;
        }
        int size = this.mFilters.size();
        int previousTexture = textureId;
        for (int i = 0; i < size; i++) {
            boolean isNotLast;
            BaseOriginalFilter filter = (BaseOriginalFilter) this.mFilters.get(i);
            if (i < size - 1) {
                isNotLast = true;
            } else {
                isNotLast = false;
            }
            if (isNotLast) {
                GLES20.glViewport(0, 0, this.mInputWidth, this.mInputHeight);
                GLES20.glBindFramebuffer(36160, this.mGroupFrameBuffers[i]);
                filter.onDrawFrame(previousTexture, this.mGLCubeBuffer, this.mGLTextureBuffer);
                GLES20.glBindFramebuffer(36160, 0);
                previousTexture = this.mGroupFrameBufferTextures[i];
            } else {
                filter.onDrawFrame(previousTexture, cubeBuffer, textureBuffer);
            }
        }
        return 1;
    }

    public int onDrawToTexture(int textureId, FloatBuffer cubeBuffer, FloatBuffer textureBuffer) {
        int size = this.mFilters.size();
        int previousTexture = textureId;
        int i = 0;
        while (i < size) {
            BaseOriginalFilter filter = (BaseOriginalFilter) this.mFilters.get(i);
            if (i < size + -1) {
                previousTexture = filter.onDrawToTexture(previousTexture, this.mGLCubeBuffer, this.mGLTextureBuffer);
            } else {
                previousTexture = filter.onDrawToTexture(previousTexture, cubeBuffer, textureBuffer);
            }
            i++;
        }
        return previousTexture;
    }

    private void destroyGroupFrameBuffers() {
        if (this.mGroupFrameBufferTextures != null) {
            GLES20.glDeleteTextures(this.mGroupFrameBufferTextures.length, this.mGroupFrameBufferTextures, 0);
            this.mGroupFrameBufferTextures = null;
        }
        if (this.mGroupFrameBuffers != null) {
            GLES20.glDeleteFramebuffers(this.mGroupFrameBuffers.length, this.mGroupFrameBuffers, 0);
            this.mGroupFrameBuffers = null;
        }
    }

    public boolean isEmpty() {
        for (BaseOriginalFilter filter : this.mFilters) {
            if (filter instanceof IFilterEmptyValidate) {
                if (!((IFilterEmptyValidate) filter).isEmpty()) {
                }
            }
            return false;
        }
        return true;
    }
}
