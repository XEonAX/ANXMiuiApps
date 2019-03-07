.class public Lcom/miui/screenrecorder/glec/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "EncodeDecodeSurface"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/miui/screenrecorder/glec/GlUtil;->IDENTITY_MATRIX:[F

    .line 39
    sget-object v0, Lcom/miui/screenrecorder/glec/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 110
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "EncodeDecodeSurface"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3
    .param p0, "location"    # I
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 124
    if-gez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "coords"    # [F

    .prologue
    .line 170
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 171
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 173
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    return-object v1
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    const/16 v3, 0x2601

    const/4 v2, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 139
    new-array v10, v2, [I

    .line 142
    .local v10, "textureHandles":[I
    invoke-static {v2, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 143
    aget v9, v10, v1

    .line 144
    .local v9, "textureHandle":I
    const-string v2, "glGenTextures"

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 147
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 151
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 153
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 155
    const-string v2, "loadImageTexture"

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 158
    const/16 v7, 0x1401

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, p3

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 160
    const-string v0, "loadImageTexture"

    invoke-static {v0}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 162
    return v9
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 54
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/miui/screenrecorder/glec/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 55
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/miui/screenrecorder/glec/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 64
    .local v2, "program":I
    const-string v5, "glCreateProgram"

    invoke-static {v5}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 65
    if-nez v2, :cond_3

    .line 66
    const-string v5, "EncodeDecodeSurface"

    const-string v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 69
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 70
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 71
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 73
    new-array v0, v7, [I

    .line 74
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 75
    aget v4, v0, v4

    if-eq v4, v7, :cond_0

    .line 76
    const-string v4, "EncodeDecodeSurface"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v4, "EncodeDecodeSurface"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 79
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 91
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/screenrecorder/glec/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 92
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 94
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 95
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 96
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 97
    const-string v2, "EncodeDecodeSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v2, "EncodeDecodeSurface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 100
    const/4 v1, 0x0

    .line 102
    :cond_0
    return v1
.end method

.method public static logVersionInfo()V
    .locals 3

    .prologue
    .line 182
    const-string v0, "EncodeDecodeSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "EncodeDecodeSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "EncodeDecodeSurface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
