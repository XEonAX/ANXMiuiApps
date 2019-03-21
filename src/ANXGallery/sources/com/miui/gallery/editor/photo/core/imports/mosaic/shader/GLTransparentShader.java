package com.miui.gallery.editor.photo.core.imports.mosaic.shader;

import com.miui.gallery.editor.photo.widgets.glview.shader.GLTextureShader;

public class GLTransparentShader extends GLTextureShader {
    public GLTransparentShader() {
        super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = vec4(0,0,0,0);\n}");
    }

    public void draw() {
        super.draw(-1);
    }
}
