package com.miui.gallery.editor.photo.core.imports.mosaic.shader;

import android.opengl.GLES20;

public class GLMosaicTriangleShader extends GLTextureSizeShader {
    private int mGLAttrLength;
    private float mLength = 70.0f;

    public GLMosaicTriangleShader(int textureWidth, int textureHeight) {
        super("varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\n// len 是六边形的边长\nuniform highp float len;\n\nuniform int textureWidth;\nuniform int textureHeight;\n\nvoid main (void){\n    const highp float TR = 0.866025;  // .5*(3)^.5\n    const highp float PI = 3.1415927; // PI/6\n\n    highp vec2 texSize = vec2(float(textureWidth), float(textureHeight));\n\n    highp vec2 xy = vec2(textureCoordinate.x * texSize.x, textureCoordinate.y * texSize.y);\n\n    highp float rectWidth = 1.5*len;\n    highp float rectHeight = 0.5*len*sqrt(3.0);\n\n    int xStep = int(xy.x/rectWidth);\n    int yStep = int(xy.y/rectHeight);\n\n    highp float xStepF = float(xStep);\n    highp float yStepF = float(yStep);\n\n    highp vec2 v1, v2, vn;\n    if(xStep/2 * 2 == xStep) {\n        if(yStep/2 * 2 == yStep) {\n            v1 = vec2(rectWidth*xStepF, rectHeight*yStepF);\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*(yStepF+1.0));\n        } else {\n            v1 = vec2(rectWidth*xStepF, rectHeight*(yStepF+1.0));\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*yStepF);\n        }\n    } else {\n        if(yStep/2 * 2 == yStep) {\n            v1 = vec2(rectWidth*xStepF, rectHeight*(yStepF+1.0));\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*yStepF);\n        } else {\n            v1 = vec2(rectWidth*xStepF, rectHeight*yStepF);\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*(yStepF+1.0));\n        }\n    }\n    highp float s1 = sqrt( pow(v1.x-xy.x, 2.0) + pow(v1.y-xy.y, 2.0) );\n    highp float s2 = sqrt( pow(v2.x-xy.x, 2.0) + pow(v2.y-xy.y, 2.0) );\n\n    if(s1 < s2)\n        vn = v1;\n    else\n        vn = v2;\n\n    highp float a = atan((xy.y-vn.y), (xy.x-vn.x));//夹角\n    highp vec2 area1 = vec2(vn.x, vn.y-rectHeight/2.0);\n    highp vec2 area2 = vec2(vn.x-len/2.0, vn.y-rectHeight/2.0);\n    highp vec2 area3 = vec2(vn.x-len/2.0, vn.y+rectHeight/2.0);\n    highp vec2 area4 = vec2(vn.x, vn.y+rectHeight/2.0);\n    highp vec2 area5 = vec2(vn.x+len/2.0, vn.y+rectHeight/2.0);\n    highp vec2 area6 = vec2(vn.x+len/2.0, vn.y-rectHeight/2.0);\n\n    if(a>=PI/3.0 && a<PI/1.5)\n        vn = area1;\n    else if(a>=PI/1.5 && a<PI)\n        vn = area2;\n    else if(a>=-PI&&a<-PI/1.5)\n        vn = area3;\n    else if(a>=-PI/1.5&&a<-PI/3.0)\n        vn = area4;\n    else if(a>=-PI/3.0 && a<0.0)\n        vn = area5;\n    else if(a>=0.0 && a<PI/3.0)\n        vn = area6;\n\n    vn.x = vn.x/float(textureWidth);\n    vn.y = vn.y/float(textureHeight);\n    gl_FragColor = texture2D(inputImageTexture, vn);\n}", textureWidth, textureHeight);
    }

    protected void init(String vertexShader, String fragmentShader) {
        super.init(vertexShader, fragmentShader);
        this.mGLAttrLength = GLES20.glGetUniformLocation(getProgram(), "len");
    }

    protected void onPreDraw() {
        super.onPreDraw();
        GLES20.glUniform1f(this.mGLAttrLength, this.mLength * this.mScale);
    }
}
