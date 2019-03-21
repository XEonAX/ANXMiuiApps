package com.miui.gallery.editor.photo.widgets.glview;

import android.opengl.GLES20;
import android.util.Log;

public class GLFBOManager {
    private int mFramebufferId;
    private int mHeight;
    private int mTextureId;
    private int mViewHeight;
    private int mViewWidth;
    private int mWidth;

    public GLFBOManager(int width, int height, int viewWidth, int viewHeight) {
        this(width, height, viewWidth, viewHeight, true);
    }

    public GLFBOManager(int width, int height, int viewWidth, int viewHeight, boolean alpha) {
        this.mWidth = width;
        this.mHeight = height;
        this.mViewWidth = viewWidth;
        this.mViewHeight = viewHeight;
        init(alpha);
    }

    private void init(boolean alpha) {
        int[] frameBuffers = new int[1];
        GLES20.glGenFramebuffers(1, frameBuffers, 0);
        this.mFramebufferId = frameBuffers[0];
        int[] textures = new int[1];
        GLES20.glGenTextures(1, textures, 0);
        this.mTextureId = textures[0];
        GLES20.glBindTexture(3553, this.mTextureId);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, 33071.0f);
        GLES20.glTexParameterf(3553, 10243, 33071.0f);
        if (alpha) {
            GLES20.glTexImage2D(3553, 0, 6408, this.mWidth, this.mHeight, 0, 6408, 5121, null);
        } else {
            GLES20.glTexImage2D(3553, 0, 6407, this.mWidth, this.mHeight, 0, 6407, 5121, null);
        }
    }

    public void bind() {
        GLES20.glBindFramebuffer(36160, this.mFramebufferId);
        GLES20.glBindTexture(3553, this.mTextureId);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mTextureId, 0);
        if (GLES20.glCheckFramebufferStatus(36160) != 36053) {
            Log.i("FBOManager", "Framebuffer error");
        }
        GLES20.glViewport(0, 0, this.mWidth, this.mHeight);
    }

    public void unBind() {
        GLES20.glBindFramebuffer(36160, 0);
        GLES20.glBindTexture(3553, 0);
        GLES20.glViewport(0, 0, this.mViewWidth, this.mViewHeight);
    }

    public int getTextureId() {
        return this.mTextureId;
    }

    public void clear() {
        GLES20.glDeleteFramebuffers(1, new int[]{this.mFramebufferId}, 0);
        GLES20.glDeleteTextures(1, new int[]{this.mTextureId}, 0);
    }
}
