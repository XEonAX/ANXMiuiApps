package com.miui.filtersdk.filter;

import android.opengl.GLES20;
import com.miui.filtersdk.filter.base.BaseBeautyFilter;
import com.miui.filtersdk.utils.OpenGlUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class YUVBeautyFilter extends BaseBeautyFilter {
    private int mGLUniformUVTexture;
    private int mGLUniformYTexture;
    private ByteBuffer mUVBuffer;
    private int mWindowHeight;
    private int mWindowWidth;
    private ByteBuffer mYBuffer;
    private int[] yuvTextureIds;

    public void init() {
        onInit();
        this.yuvTextureIds = new int[2];
        this.yuvTextureIds[0] = -1;
        this.yuvTextureIds[1] = -1;
        initBeauty();
    }

    protected void onInit() {
        this.mGLProgId = OpenGlUtils.loadProgram("attribute vec4 a_position;                         \nattribute vec2 a_texCoord;                         \nvarying vec2 v_texCoord;                           \nvoid main(){                                       \n   gl_Position = a_position;                       \n   v_texCoord = a_texCoord;                        \n}                                                  \n", "precision highp float;                             \nvarying vec2 v_texCoord;                           \nuniform sampler2D y_texture;                       \nuniform sampler2D uv_texture;                      \nvoid main (void){                                  \n   float r, g, b, y, u, v;                         \n   y = texture2D(y_texture, v_texCoord).r;         \n   u = texture2D(uv_texture, v_texCoord).a - 0.5;  \n   v = texture2D(uv_texture, v_texCoord).r - 0.5;  \n   r = y + 1.402 * v;\n   g = y - 0.34414 * u - 0.71414 * v;\n   b = y + 1.772 * u;\n   gl_FragColor = vec4(r, g, b, 1.0);              \n}                                                  \n");
        this.mGLAttribPosition = GLES20.glGetAttribLocation(this.mGLProgId, "a_position");
        this.mGLUniformYTexture = GLES20.glGetUniformLocation(this.mGLProgId, "y_texture");
        this.mGLUniformUVTexture = GLES20.glGetUniformLocation(this.mGLProgId, "uv_texture");
        this.mGLAttribTextureCoordinate = GLES20.glGetAttribLocation(this.mGLProgId, "a_texCoord");
        this.mIsInitialized = true;
    }

    private void initBeauty() {
        this.mBeautyProcessor.init(this.mWindowWidth, this.mWindowHeight);
    }

    public int onDrawFrame(int textureId, FloatBuffer vertexBuffer, FloatBuffer textureBuffer) {
        return onDrawFrame(this.yuvTextureIds, vertexBuffer, textureBuffer);
    }

    public int onDrawFrame(int[] textures, FloatBuffer vertexBuffer, FloatBuffer textureBuffer) {
        GLES20.glUseProgram(this.mGLProgId);
        runPendingOnDrawTasks();
        if (!isInitialized()) {
            return -1;
        }
        vertexBuffer.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribPosition, 2, 5126, false, 0, vertexBuffer);
        GLES20.glEnableVertexAttribArray(this.mGLAttribPosition);
        textureBuffer.position(0);
        GLES20.glVertexAttribPointer(this.mGLAttribTextureCoordinate, 2, 5126, false, 0, textureBuffer);
        GLES20.glEnableVertexAttribArray(this.mGLAttribTextureCoordinate);
        if (textures[0] != -1) {
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(3553, textures[0]);
            GLES20.glUniform1i(this.mGLUniformYTexture, 0);
        }
        if (textures[1] != -1) {
            GLES20.glActiveTexture(33985);
            GLES20.glBindTexture(3553, textures[1]);
            GLES20.glUniform1i(this.mGLUniformUVTexture, 1);
        }
        onDrawArraysPre();
        GLES20.glDrawArrays(5, 0, 4);
        GLES20.glDisableVertexAttribArray(this.mGLAttribPosition);
        GLES20.glDisableVertexAttribArray(this.mGLAttribTextureCoordinate);
        onDrawArraysAfter();
        return 1;
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    public void genYUVTextures(byte[] data, final int width, final int height) {
        this.mBeautyProcessor.beautify(data, 0, width, height, null, 0);
        int bufferSize = width * height;
        if (this.mYBuffer == null) {
            this.mYBuffer = ByteBuffer.allocateDirect(bufferSize);
            this.mYBuffer.order(ByteOrder.nativeOrder());
        }
        if (this.mUVBuffer == null) {
            this.mUVBuffer = ByteBuffer.allocateDirect(bufferSize / 2);
            this.mUVBuffer.order(ByteOrder.nativeOrder());
        }
        this.mYBuffer.put(data, 0, bufferSize).position(0);
        this.mUVBuffer.put(data, bufferSize, bufferSize >> 1).position(0);
        runOnDraw(new Runnable() {
            public void run() {
                OpenGlUtils.loadYuvToTextures(YUVBeautyFilter.this.mYBuffer, YUVBeautyFilter.this.mUVBuffer, width, height, YUVBeautyFilter.this.yuvTextureIds);
            }
        });
    }
}
