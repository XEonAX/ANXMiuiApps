package com.miui.gallery.editor.photo.core.imports.mosaic.shader;

import android.opengl.GLES20;
import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;

public abstract class GLTextureSizeShader extends GLTextureShader {
    protected int mGLAttrScale;
    protected int mGLAttrTextureHeight;
    protected int mGLAttrTextureWidth;
    protected float mScale;
    protected int mTextureHeight;
    protected int mTextureWidth;

    public GLTextureSizeShader(String vertexShader, String fragmentShader, int textureWidth, int textureHeight) {
        super(vertexShader, fragmentShader);
        this.mScale = 1.0f;
        this.mTextureWidth = textureWidth;
        this.mTextureHeight = textureHeight;
    }

    public GLTextureSizeShader(String fragmentShader, int textureWidth, int textureHeight) {
        this("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", fragmentShader, textureWidth, textureHeight);
    }

    protected void init(String vertexShader, String fragmentShader) {
        super.init(vertexShader, fragmentShader);
        this.mGLAttrTextureWidth = GLES20.glGetUniformLocation(getProgram(), "textureWidth");
        this.mGLAttrTextureHeight = GLES20.glGetUniformLocation(getProgram(), "textureHeight");
        this.mGLAttrScale = GLES20.glGetUniformLocation(getProgram(), "scale");
    }

    public void setScale(float scale) {
        this.mScale = scale;
    }

    protected void onPreDraw() {
        super.onPreDraw();
        GLES20.glUniform1i(this.mGLAttrTextureWidth, this.mTextureWidth);
        GLES20.glUniform1i(this.mGLAttrTextureHeight, this.mTextureHeight);
        GLES20.glUniform1f(this.mGLAttrScale, this.mScale);
    }
}
