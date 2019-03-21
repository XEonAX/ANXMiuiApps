package com.miui.gallery.editor.photo.widgets.base;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.util.AttributeSet;
import com.miui.filtersdk.utils.Rotation;
import com.miui.filtersdk.utils.TextureRotationUtil;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public abstract class MagicBaseView extends GLSurfaceView implements Renderer {
    protected FloatBuffer gLCubeBuffer;
    protected FloatBuffer gLTextureBuffer;
    protected int imageHeight;
    protected int imageWidth;
    protected ScaleType scaleType;
    protected int surfaceHeight;
    protected int surfaceWidth;
    protected int textureId;

    public enum ScaleType {
        CENTER_INSIDE,
        CENTER_CROP,
        FIT_XY
    }

    public MagicBaseView(Context context) {
        this(context, null);
    }

    public MagicBaseView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.textureId = -1;
        this.scaleType = ScaleType.FIT_XY;
        this.gLCubeBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.CUBE.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.gLCubeBuffer.put(TextureRotationUtil.CUBE).position(0);
        this.gLTextureBuffer = ByteBuffer.allocateDirect(TextureRotationUtil.TEXTURE_NO_ROTATION.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.gLTextureBuffer.put(TextureRotationUtil.TEXTURE_NO_ROTATION).position(0);
        setEGLContextClientVersion(2);
        setRenderer(this);
        setRenderMode(0);
    }

    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        GLES20.glDisable(3024);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glEnable(2884);
        GLES20.glEnable(2929);
    }

    public void onSurfaceChanged(GL10 gl, int width, int height) {
        GLES20.glViewport(0, 0, width, height);
        this.surfaceWidth = width;
        this.surfaceHeight = height;
    }

    public void onDrawFrame(GL10 gl) {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(16640);
    }

    protected void adjustSize(int rotation, boolean flipHorizontal, boolean flipVertical) {
        adjustSize(this.imageWidth, this.imageHeight, this.surfaceWidth, this.surfaceHeight, rotation, flipHorizontal, flipVertical, this.gLCubeBuffer, this.gLTextureBuffer);
    }

    protected void adjustSize(int imageWidth, int imageHeight, int outputWidth, int outputHeight, int rotation, boolean flipHorizontal, boolean flipVertical, FloatBuffer gLCubeBuffer, FloatBuffer gLTextureBuffer) {
        float[] textureCords = TextureRotationUtil.getRotation(Rotation.fromInt(rotation), flipHorizontal, flipVertical);
        float[] cube = TextureRotationUtil.CUBE;
        float ratioMax = Math.max(((float) outputWidth) / ((float) imageWidth), ((float) outputHeight) / ((float) imageHeight));
        int imageWidthNew = Math.round(((float) imageWidth) * ratioMax);
        float ratioWidth = ((float) imageWidthNew) / ((float) outputWidth);
        float ratioHeight = ((float) Math.round(((float) imageHeight) * ratioMax)) / ((float) outputHeight);
        if (this.scaleType == ScaleType.CENTER_INSIDE) {
            cube = new float[]{TextureRotationUtil.CUBE[0] / ratioHeight, TextureRotationUtil.CUBE[1] / ratioWidth, TextureRotationUtil.CUBE[2] / ratioHeight, TextureRotationUtil.CUBE[3] / ratioWidth, TextureRotationUtil.CUBE[4] / ratioHeight, TextureRotationUtil.CUBE[5] / ratioWidth, TextureRotationUtil.CUBE[6] / ratioHeight, TextureRotationUtil.CUBE[7] / ratioWidth};
        } else if (this.scaleType != ScaleType.FIT_XY && this.scaleType == ScaleType.CENTER_CROP) {
            float distHorizontal;
            float distVertical;
            if (Rotation.fromInt(rotation) == Rotation.ROTATION_90 || Rotation.fromInt(rotation) == Rotation.ROTATION_270) {
                distHorizontal = (1.0f - (1.0f / ratioWidth)) / 2.0f;
                distVertical = (1.0f - (1.0f / ratioHeight)) / 2.0f;
            } else {
                distVertical = (1.0f - (1.0f / ratioWidth)) / 2.0f;
                distHorizontal = (1.0f - (1.0f / ratioHeight)) / 2.0f;
            }
            textureCords = new float[8];
            textureCords[0] = addDistance(textureCords[0], distVertical);
            textureCords[1] = addDistance(textureCords[1], distHorizontal);
            textureCords[2] = addDistance(textureCords[2], distVertical);
            textureCords[3] = addDistance(textureCords[3], distHorizontal);
            textureCords[4] = addDistance(textureCords[4], distVertical);
            textureCords[5] = addDistance(textureCords[5], distHorizontal);
            textureCords[6] = addDistance(textureCords[6], distVertical);
            textureCords[7] = addDistance(textureCords[7], distHorizontal);
            textureCords = textureCords;
        }
        gLCubeBuffer.clear();
        gLCubeBuffer.put(cube).position(0);
        gLTextureBuffer.clear();
        gLTextureBuffer.put(textureCords).position(0);
    }

    private float addDistance(float coordinate, float distance) {
        return coordinate == 0.0f ? distance : 1.0f - distance;
    }
}
