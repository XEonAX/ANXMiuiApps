package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLTextureSizeShader;
import com.miui.gallery.editor.photo.widgets.glview.GLFBOManager;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLShaderGroup;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;
import com.nostra13.universalimageloader.core.ImageLoader;

class MosaicEffectProcessor {
    private final int mOriginTextureHeight;
    private final int mOriginTextureWidth;
    private float[] mTextureCood = new float[8];
    private final int mViewHeight;
    private final int mViewWidth;

    MosaicEffectProcessor(int originTextureWidth, int originTextureHeight, int viewWidth, int viewHeight) {
        this.mOriginTextureWidth = originTextureWidth;
        this.mOriginTextureHeight = originTextureHeight;
        this.mViewWidth = viewWidth;
        this.mViewHeight = viewHeight;
    }

    public void draw(GLFBOManager effectFBO, MosaicGLEntity mosaicGLEntity, int currentTexture, int originTexture, GLTextureShader standardShader) {
        draw(effectFBO, mosaicGLEntity, currentTexture, originTexture, standardShader, 1.0f);
    }

    public void draw(GLFBOManager effectFBO, MosaicGLEntity mosaicGLEntity, int currentTexture, int originTexture, GLTextureShader standardShader, float scale) {
        if (mosaicGLEntity != null) {
            switch (mosaicGLEntity.type) {
                case ORIGIN:
                    effectFBO.bind();
                    GLES20.glClear(16640);
                    drawOrigin(standardShader, originTexture);
                    effectFBO.unBind();
                    return;
                case RESOURCE:
                    effectFBO.bind();
                    GLES20.glClear(16640);
                    drawResource((MosaicGLResourceEntity) mosaicGLEntity, standardShader, scale);
                    effectFBO.unBind();
                    return;
                case EFFECT:
                    drawEffect(effectFBO, (MosaicGLEffectEntity) mosaicGLEntity, standardShader, currentTexture, scale);
                    return;
                default:
                    return;
            }
        }
    }

    private void drawOrigin(GLTextureShader standardShader, int originTexture) {
        standardShader.draw(originTexture);
    }

    private void drawEffect(GLFBOManager effectFBO, MosaicGLEffectEntity mosaicGLEntity, GLTextureShader standardShader, int currentTexture, float scale) {
        GLTextureSizeShader glSpecificShader = mosaicGLEntity.generateSpecificShader(this.mOriginTextureWidth, this.mOriginTextureHeight, this.mViewWidth, this.mViewHeight);
        if (glSpecificShader != null) {
            glSpecificShader.setScale(scale);
            if (glSpecificShader instanceof GLShaderGroup) {
                int effectedTexture = ((GLShaderGroup) glSpecificShader).getEffectedTexture(currentTexture);
                effectFBO.bind();
                GLES20.glClear(16640);
                standardShader.draw(effectedTexture);
                effectFBO.unBind();
            } else {
                effectFBO.bind();
                GLES20.glClear(16640);
                glSpecificShader.drawFBO(currentTexture);
                effectFBO.unBind();
            }
            glSpecificShader.destroy();
        }
    }

    private void drawResource(MosaicGLResourceEntity mosaicGLEntity, GLTextureShader standardShader, float scale) {
        int glTileMode;
        String tileMode = mosaicGLEntity.mTileMode;
        String resourcePath = mosaicGLEntity.mResourcePath;
        if (tileMode.equals("EDGE")) {
            glTileMode = 33071;
        } else if (tileMode.equals("REPEAT")) {
            glTileMode = 10497;
        } else {
            glTileMode = 10497;
        }
        Bitmap bitmap = ImageLoader.getInstance().loadImageSync(resourcePath);
        if (bitmap != null) {
            getTextureCood(this.mTextureCood, (((float) this.mOriginTextureWidth) / ((float) bitmap.getWidth())) / scale, (((float) this.mOriginTextureHeight) / ((float) bitmap.getHeight())) / scale);
            standardShader.draw(loadTexture(bitmap, glTileMode), GLTextureShader.CUBE, this.mTextureCood);
            GLES20.glDeleteTextures(1, new int[]{resourceTextureId}, 0);
        }
    }

    private static void getTextureCood(float[] dst, float widthSize, float heightSize) {
        dst[0] = 0.0f;
        dst[1] = heightSize;
        dst[2] = widthSize;
        dst[3] = heightSize;
        dst[4] = 0.0f;
        dst[5] = 0.0f;
        dst[6] = widthSize;
        dst[7] = 0.0f;
    }

    private static int loadTexture(Bitmap img, int tileMode) {
        int[] textures = new int[1];
        GLES20.glGenTextures(1, textures, 0);
        GLES20.glBindTexture(3553, textures[0]);
        GLES20.glTexParameterf(3553, 10240, 9729.0f);
        GLES20.glTexParameterf(3553, 10241, 9729.0f);
        GLES20.glTexParameterf(3553, 10242, (float) tileMode);
        GLES20.glTexParameterf(3553, 10243, (float) tileMode);
        GLUtils.texImage2D(3553, 0, img, 0);
        img.recycle();
        return textures[0];
    }
}
