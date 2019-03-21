package com.miui.gallery.editor.photo.core.imports.filter.render;

import android.opengl.GLES20;
import com.miui.filtersdk.filter.base.BaseOriginalFilter;

public class BoundLinesFilter extends BaseOriginalFilter {
    private int mBoundLocation;

    public BoundLinesFilter() {
        super("attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}", "precision highp float;\n\nuniform vec2 bound;\nuniform sampler2D inputImageTexture;\nvarying vec2 textureCoordinate;\n\nvoid main() {\n    if( (textureCoordinate.x > 0.0 + bound.x * 0.2 && textureCoordinate.x <= bound.x * 1.2 ) ||     (textureCoordinate.x < 1.0 - bound.x * 0.2 && textureCoordinate.x >= 1.0 - bound.x * 1.2) ||\n    (textureCoordinate.y > 0.0 + bound.y * 0.2 && textureCoordinate.y <= bound.y * 1.2 ) ||      (textureCoordinate.y < 1.0 - bound.y * 0.2 && textureCoordinate.y >= 1.0 - bound.y * 1.2 )){\n        gl_FragColor.rgb = vec3(0,0,0);\n        gl_FragColor.a = 0.20;\n    }\n    else{\n        gl_FragColor.rgb = vec3(0.0,0.0,0.0);\n        gl_FragColor.a = 0.0;\n    }\n }");
    }

    protected void onInit() {
        super.onInit();
        this.mBoundLocation = GLES20.glGetUniformLocation(getProgram(), "bound");
    }

    public void setImageSize(int imageWidth, int imageHeight) {
        if (imageWidth != 0 && imageHeight != 0) {
            float height;
            float width;
            if (((float) this.mOutputWidth) / ((float) imageWidth) > ((float) this.mOutputHeight) / ((float) imageHeight)) {
                height = (float) this.mOutputHeight;
                width = (((float) imageWidth) * height) / ((float) imageHeight);
            } else {
                width = (float) this.mOutputWidth;
                height = (((float) imageHeight) * width) / ((float) imageWidth);
            }
            setFloatVec2(this.mBoundLocation, new float[]{1.0f / width, 1.0f / height});
        }
    }
}
