.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicShader;
.super Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;
.source "GLMosaicShader.java"


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I

    .prologue
    .line 30
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform int textureWidth;\nuniform int textureHeight;\nuniform highp float scale;\nhighp vec2 mosaicSize = vec2(50.0, 50.0);\n\nvoid main(void)\n{\n    //    highp vec4 color;\n\n    mosaicSize.x = mosaicSize.x * scale;\n    mosaicSize.y = mosaicSize.y * scale;\n\n    highp vec2 texSize = vec2(float(textureWidth), float(textureHeight));\n\n    highp vec2 xy = vec2(textureCoordinate.x * texSize.x, textureCoordinate.y * texSize.y);\n\n    highp vec2 xyMosaic = vec2(floor(xy.x / mosaicSize.x) * mosaicSize.x + mosaicSize.x/2.0,\n         floor(xy.y / mosaicSize.y) * mosaicSize.y + mosaicSize.y/2.0);\n\n    highp vec2 uvMosaic = vec2(xyMosaic.x / texSize.x, xyMosaic.y / texSize.y);\n    gl_FragColor = texture2D( inputImageTexture, uvMosaic );\n}"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;-><init>(Ljava/lang/String;II)V

    .line 31
    return-void
.end method
