.class public Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;
.super Ljava/lang/Object;
.source "GLTextureShader.java"


# static fields
.field public static final CUBE:[F

.field public static final CUBE_REVERSE:[F

.field public static final TEXTURE_NO_ROTATION:[F


# instance fields
.field private mGLAttribPosition:I

.field private mGLAttribTextureCoordinate:I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mGLProgId:I

.field private mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field private mGLUniformTexture:I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    .line 39
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE_REVERSE:[F

    return-void

    .line 33
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 39
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 45
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    .line 68
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 160
    return-void
.end method

.method public draw(I)V
    .locals 1
    .param p1, "textureId"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 90
    return-void
.end method

.method public draw(I[F)V
    .locals 1
    .param p1, "textureId"    # I
    .param p2, "glPosition"    # [F

    .prologue
    .line 97
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F[F)V

    .line 98
    return-void
.end method

.method public draw(I[F[F)V
    .locals 7
    .param p1, "textureId"    # I
    .param p2, "glPosition"    # [F
    .param p3, "textureCood"    # [F

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 101
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 103
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->onPreDraw()V

    .line 104
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->runPendingOnDrawTasks()V

    .line 106
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 109
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribPosition:I

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 111
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 114
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 117
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 118
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 119
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 120
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 123
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 124
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 125
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 127
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    return-void
.end method

.method public drawFBO(I)V
    .locals 1
    .param p1, "textureId"    # I

    .prologue
    .line 93
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE_REVERSE:[F

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->draw(I[F)V

    .line 94
    return-void
.end method

.method public getProgram()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    return v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-static {p1, p2}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    .line 72
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribPosition:I

    .line 73
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLUniformTexture:I

    .line 74
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLAttribTextureCoordinate:I

    .line 77
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 80
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->TEXTURE_NO_ROTATION:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->CUBE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    return-void
.end method

.method protected onPreDraw()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .prologue
    .line 134
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .prologue
    .line 146
    new-instance v0, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader$1;-><init>(Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;IF)V

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/glview/shader/GLTextureShader;->runOnDraw(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
