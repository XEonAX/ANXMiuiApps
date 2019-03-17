.class public Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;
.super Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;
.source "BeautyImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;
    }
.end annotation


# instance fields
.field private mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

.field private mBufferSize:I

.field private mContext:Landroid/content/Context;

.field private mFirstRenderFinished:Z

.field private mHasRawYuv:Z

.field private mInitRenderCallback:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;

.field private mPicData:[B

.field private mRenderRecordIndex:I

.field private mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    .line 48
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mFirstRenderFinished:Z

    .line 57
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 59
    sget-object v0, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;->CENTER_INSIDE:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->scaleType:Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView$ScaleType;

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getYUVBeautyRender()Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    .line 61
    iput-boolean v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mHasRawYuv:Z

    .line 62
    return-void
.end method

.method private getTmpRecordFile(I)Ljava/io/File;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 222
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "beauty-records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beauty_record_temp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getYUVBeautyRender()Lcom/miui/filtersdk/filter/YUVBeautyFilter;
    .locals 3

    .prologue
    .line 118
    new-instance v1, Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    invoke-direct {v1}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;-><init>()V

    .line 119
    .local v1, "filter":Lcom/miui/filtersdk/filter/YUVBeautyFilter;
    sget-object v2, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v2}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v0

    .line 120
    .local v0, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setRotation(I)V

    .line 121
    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .line 122
    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->setBeautyProcessor(Lcom/miui/filtersdk/beauty/BeautyProcessor;)V

    .line 123
    return-object v1
.end method

.method private readRecordBuffer()V
    .locals 10

    .prologue
    .line 193
    const/4 v7, 0x0

    .line 195
    .local v7, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getTmpRecordFile(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v8, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .local v8, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 197
    .local v0, "fileChannel":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 198
    .local v9, "out":Ljava/nio/MappedByteBuffer;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    invoke-virtual {v9, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v7, v8

    .line 204
    .end local v0    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .end local v9    # "out":Ljava/nio/MappedByteBuffer;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_2
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v1

    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 199
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method private refreshDisplay()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->requestRender()V

    .line 93
    return-void
.end method


# virtual methods
.method public clearAllRecords()Z
    .locals 6

    .prologue
    .line 207
    const/4 v2, 0x1

    .line 208
    .local v2, "res":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    if-ge v1, v3, :cond_1

    .line 209
    invoke-direct {p0, v1}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getTmpRecordFile(I)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    const-string v3, "BeautyImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete beauty record file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v2, 0x0

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return v2
.end method

.method public getBmpFromCurrBuffer(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "compare"    # Landroid/graphics/Bitmap;

    .prologue
    .line 151
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    invoke-static {p1, v0, v1, v2}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->updateBmpWithYuvBuffer(Landroid/graphics/Bitmap;II[B)V

    .line 152
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 78
    const/4 v0, 0x0

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 79
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->gLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->gLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    .line 83
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mFirstRenderFinished:Z

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mInitRenderCallback:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mInitRenderCallback:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;->onRenderFinish()V

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mFirstRenderFinished:Z

    .line 89
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 73
    sget-object v0, Lcom/miui/filtersdk/utils/Rotation;->NORMAL:Lcom/miui/filtersdk/utils/Rotation;

    invoke-virtual {v0}, Lcom/miui/filtersdk/utils/Rotation;->asInt()I

    move-result v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->adjustSize(IZZ)V

    .line 74
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/widgets/base/MagicBaseView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 67
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    invoke-virtual {v0}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->init()V

    .line 68
    return-void
.end method

.method public reloadTexture(Z)V
    .locals 5
    .param p1, "coverRawBuffer"    # Z

    .prologue
    const/4 v4, 0x0

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->genYUVTextures([BII)V

    .line 129
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->clearBeautyParameters()V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 134
    .local v0, "image":[B
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->genYUVTextures([BII)V

    goto :goto_0
.end method

.method public renderNextBuffer()V
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    .line 187
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->readRecordBuffer()V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->reloadTexture(Z)V

    .line 189
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->refreshDisplay()V

    .line 190
    return-void
.end method

.method public renderPreviousBuffer()V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    .line 176
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    if-gez v0, :cond_0

    .line 178
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->readRecordBuffer()V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->reloadTexture(Z)V

    .line 182
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->refreshDisplay()V

    .line 183
    return-void
.end method

.method public setInitRenderCallback(Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mInitRenderCallback:Lcom/miui/gallery/editor/photo/widgets/BeautyImageView$InitRenderCallback;

    .line 172
    return-void
.end method

.method public setPicData(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->setPicData(Landroid/graphics/Bitmap;Z)V

    .line 97
    return-void
.end method

.method public setPicData(Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "refresh"    # Z

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    .line 102
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mHasRawYuv:Z

    if-nez v0, :cond_0

    .line 103
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBufferSize:I

    .line 104
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    .line 105
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    invoke-static {p1, v0, v1, v2}, Lcom/miui/arcsoftbeauty/ArcsoftBeautyJni;->encodeYUV420SP(Landroid/graphics/Bitmap;II[B)V

    .line 106
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->writeRecordFile()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mHasRawYuv:Z

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->reloadTexture(Z)V

    .line 112
    if-eqz p2, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->refreshDisplay()V

    .line 115
    :cond_1
    return-void
.end method

.method public updateBeautyProcessor(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parametesMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->clearBeautyParameters()V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v0, p1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public writeRecordFile()V
    .locals 10

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mYUVFilter:Lcom/miui/filtersdk/filter/YUVBeautyFilter;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    iget v2, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageWidth:I

    iget v3, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->imageHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/filtersdk/filter/YUVBeautyFilter;->genYUVTextures([BII)V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->clearBeautyParameters()V

    .line 157
    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/miui/gallery/editor/photo/app/miuibeautify/MiuiBeautyFragment;->BEAUTY_RECORDS_MAX:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    .line 158
    const/4 v7, 0x0

    .line 160
    .local v7, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mRenderRecordIndex:I

    invoke-direct {p0, v0}, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->getTmpRecordFile(I)Ljava/io/File;

    move-result-object v0

    const-string v1, "rw"

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .local v8, "memmapFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mBufferSize:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 162
    .local v9, "out":Ljava/nio/MappedByteBuffer;
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/BeautyImageView;->mPicData:[B

    invoke-virtual {v9, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    invoke-static {v8}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    move-object v7, v8

    .line 168
    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .end local v9    # "out":Ljava/nio/MappedByteBuffer;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v7}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 163
    .end local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "memmapFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "memmapFile":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method
