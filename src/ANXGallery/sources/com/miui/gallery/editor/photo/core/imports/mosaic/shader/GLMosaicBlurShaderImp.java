package com.miui.gallery.editor.photo.core.imports.mosaic.shader;

import android.opengl.GLES20;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLShaderGroup;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;

public class GLMosaicBlurShaderImp extends GLShaderGroup {
    private float mRatio = 1.7f;

    public GLMosaicBlurShaderImp(int textureWidth, int textureHeight, int viewWidth, int viewHeight) {
        super(textureWidth, textureHeight, viewWidth, viewHeight);
        addShader(new GLMosaicBlurShader(textureWidth, textureHeight));
        addShader(new GLMosaicBlurShader(textureWidth, textureHeight));
        notifyShaderAdded();
    }

    protected void onPreDraw() {
        GLTextureShader shader = (GLTextureShader) this.mShaders.get(0);
        float offset = Math.min((this.mRatio * this.mScale) / ((float) this.mTextureWidth), (this.mRatio * this.mScale) / ((float) this.mTextureHeight));
        int texelWidthOffsetLocation = GLES20.glGetUniformLocation(shader.getProgram(), "texelWidthOffset");
        int texelHeightOffsetLocation = GLES20.glGetUniformLocation(shader.getProgram(), "texelHeightOffset");
        shader.setFloat(texelWidthOffsetLocation, offset);
        shader.setFloat(texelHeightOffsetLocation, 0.0f);
        shader = (GLTextureShader) this.mShaders.get(1);
        texelWidthOffsetLocation = GLES20.glGetUniformLocation(shader.getProgram(), "texelWidthOffset");
        texelHeightOffsetLocation = GLES20.glGetUniformLocation(shader.getProgram(), "texelHeightOffset");
        shader.setFloat(texelWidthOffsetLocation, 0.0f);
        shader.setFloat(texelHeightOffsetLocation, offset);
    }
}
