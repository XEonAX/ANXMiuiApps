.class public Lcom/miui/screenrecorder/glec/STextureRender;
.super Ljava/lang/Object;
.source "STextureRender.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final TAG:Ljava/lang/String; = "STextureRendering"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"


# instance fields
.field private mHeight:I

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextureID:I

.field private mWidth:I

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I

.field private muSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_COORDS:[F

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 28
    sget-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_COORDS:[F

    .line 29
    invoke-static {v0}, Lcom/miui/screenrecorder/glec/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 30
    sget-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_TEX_COORDS:[F

    .line 31
    invoke-static {v0}, Lcom/miui/screenrecorder/glec/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 30
    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mMVPMatrix:[F

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mSTMatrix:[F

    .line 61
    const/16 v0, -0x3039

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mTextureID:I

    .line 76
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mSTMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "mwidth"    # I
    .param p2, "mHeight"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/miui/screenrecorder/glec/STextureRender;-><init>()V

    .line 71
    iput p1, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mWidth:I

    .line 72
    iput p2, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mHeight:I

    .line 73
    return-void
.end method

.method public static initTex()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/16 v4, 0x2600

    const/4 v1, 0x1

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 118
    new-array v0, v1, [I

    .line 119
    .local v0, "tex":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 120
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 121
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 124
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 126
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 128
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 130
    aget v1, v0, v3

    return v1
.end method


# virtual methods
.method public drawFrame()V
    .locals 8

    .prologue
    const/16 v2, 0x1406

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 138
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 141
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 144
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    sget-object v5, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 148
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 151
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maTextureHandle:I

    const/16 v4, 0x10

    sget-object v5, Lcom/miui/screenrecorder/glec/STextureRender;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    move v1, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 154
    iget-object v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 155
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->muMVPMatrixHandle:I

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mMVPMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 156
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->muSTMatrixHandle:I

    iget-object v1, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mSTMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 160
    const/4 v0, 0x5

    invoke-static {v0, v3, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 163
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 164
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 165
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 167
    return-void
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mTextureID:I

    return v0
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

    invoke-static {v0, v1}, Lcom/miui/screenrecorder/glec/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    .line 90
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maPositionHandle:I

    .line 96
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->maTextureHandle:I

    .line 97
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->muMVPMatrixHandle:I

    .line 98
    iget v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->muSTMatrixHandle:I

    .line 101
    invoke-static {}, Lcom/miui/screenrecorder/glec/STextureRender;->initTex()I

    move-result v0

    iput v0, p0, Lcom/miui/screenrecorder/glec/STextureRender;->mTextureID:I

    .line 111
    return-void
.end method
