package com.miui.gallery.editor.photo.widgets.glview.shader;

import android.opengl.GLES20;
import com.miui.gallery.editor.photo.core.imports.mosaic.shader.GLTextureSizeShader;
import com.miui.gallery.editor.photo.widgets.glview.GLFBOManager;
import java.util.ArrayList;
import java.util.List;

public class GLShaderGroup extends GLTextureSizeShader {
    private GLFBOManager[] mGLFBOManagers;
    protected List<GLTextureShader> mShaders = new ArrayList();
    protected int mTextureHeight;
    protected int mTextureWidth;
    private int mViewHeight;
    private int mViewWidth;

    public GLShaderGroup(int textureWidth, int textureHeight, int viewWidth, int viewHeight) {
        super(null, null, textureWidth, textureHeight);
        this.mTextureWidth = textureWidth;
        this.mTextureHeight = textureHeight;
        this.mViewWidth = viewWidth;
        this.mViewHeight = viewHeight;
    }

    protected void init(String vertexShader, String fragmentShader) {
    }

    protected void addShader(GLTextureShader glTextureShader) {
        this.mShaders.add(glTextureShader);
    }

    public int getEffectedTexture(int textureId) {
        onPreDraw();
        for (int i = 0; i < this.mShaders.size(); i++) {
            GLTextureShader glTextureShader = (GLTextureShader) this.mShaders.get(i);
            this.mGLFBOManagers[i].bind();
            GLES20.glClear(16640);
            if (i - 1 >= 0) {
                glTextureShader.drawFBO(this.mGLFBOManagers[i - 1].getTextureId());
            } else {
                glTextureShader.draw(textureId);
            }
            this.mGLFBOManagers[i].unBind();
        }
        return this.mGLFBOManagers[this.mGLFBOManagers.length - 1].getTextureId();
    }

    public void draw(int textureId, float[] glPosition, float[] textureCood) {
    }

    protected void notifyShaderAdded() {
        this.mGLFBOManagers = new GLFBOManager[this.mShaders.size()];
        for (int i = 0; i < this.mGLFBOManagers.length; i++) {
            this.mGLFBOManagers[i] = new GLFBOManager(this.mTextureWidth, this.mTextureHeight, this.mViewWidth, this.mViewHeight);
        }
    }

    protected void onPreDraw() {
    }

    public void destroy() {
        for (GLTextureShader glTextureShader : this.mShaders) {
            glTextureShader.destroy();
        }
        if (this.mGLFBOManagers != null) {
            for (GLFBOManager glfboManager : this.mGLFBOManagers) {
                if (glfboManager != null) {
                    glfboManager.clear();
                }
            }
        }
    }
}
