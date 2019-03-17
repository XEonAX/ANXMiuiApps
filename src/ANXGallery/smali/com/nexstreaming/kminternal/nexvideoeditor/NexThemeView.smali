.class public Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;
.super Landroid/view/TextureView;
.source "NexThemeView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;,
        Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final kEventType_Available:I = 0x1

.field public static final kEventType_Destroyed:I = 0x3

.field public static final kEventType_SizeChanged:I = 0x2

.field private static mAspectRatio:F


# instance fields
.field private actualSurface:Landroid/view/Surface;

.field private actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private isAvailable:Z

.field private mBlackOut:Z

.field private mClearListenerList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTime:I

.field private mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

.field private mHadNativeRenderSinceClear:Z

.field private mHandler:Landroid/os/Handler;

.field private mRenderType:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

.field private m_captureListener:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;

.field private m_height:I

.field private m_width:I

.field private nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

.field private postOnPrepareSurfaceRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "VideoEditor_ThemeView"

    sput-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    .line 31
    const v0, 0x3fe38e39

    sput v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 32
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mRenderType:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    .line 33
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHadNativeRenderSinceClear:Z

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mClearListenerList:Ljava/util/Queue;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mBlackOut:Z

    .line 37
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    .line 38
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_width:I

    .line 39
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_height:I

    .line 40
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_captureListener:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->init(ZII)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 32
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mRenderType:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    .line 33
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHadNativeRenderSinceClear:Z

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mClearListenerList:Ljava/util/Queue;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mBlackOut:Z

    .line 37
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    .line 38
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_width:I

    .line 39
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_height:I

    .line 40
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_captureListener:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    .line 168
    invoke-direct {p0, v1, v1, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->init(ZII)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 32
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->None:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mRenderType:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    .line 33
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHadNativeRenderSinceClear:Z

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mClearListenerList:Ljava/util/Queue;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mBlackOut:Z

    .line 37
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    .line 38
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_width:I

    .line 39
    iput v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_height:I

    .line 40
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_captureListener:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    .line 173
    invoke-direct {p0, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->init(ZII)V

    .line 174
    return-void
.end method

.method private diagString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAspectRatio()F
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    return v0
.end method

.method private init(ZII)V
    .locals 0

    .prologue
    .line 276
    invoke-virtual {p0, p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 314
    return-void
.end method

.method public static setAspectRatio(F)V
    .locals 0

    .prologue
    .line 187
    sput p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    .line 188
    return-void
.end method

.method private updateActualSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_0

    .line 60
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 61
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    goto :goto_0
.end method


# virtual methods
.method public capture(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_captureListener:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$a;

    .line 147
    return-void
.end method

.method public isSurfaceAvailable()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    return v0
.end method

.method linkToEditor(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;)V
    .locals 3

    .prologue
    .line 178
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToEditor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->diagString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " editor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    .line 180
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 184
    :cond_0
    return-void

    .line 178
    :cond_1
    const-string v0, "not-null"

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 208
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 209
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 211
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 212
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 216
    if-ne v0, v4, :cond_0

    if-ne v2, v4, :cond_0

    move v0, v1

    move v2, v3

    .line 238
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->setMeasuredDimension(II)V

    .line 240
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMeasure(%X %X %d %d %f)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x4

    sget v3, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 220
    :cond_0
    if-ne v0, v4, :cond_1

    .line 221
    int-to-float v0, v3

    int-to-float v2, v1

    sget v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v2, v0

    .line 222
    int-to-float v0, v2

    sget v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    goto :goto_0

    .line 225
    :cond_1
    if-ne v2, v4, :cond_2

    .line 226
    int-to-float v0, v1

    int-to-float v2, v3

    sget v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    mul-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 227
    int-to-float v2, v0

    sget v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    .line 230
    :cond_2
    int-to-float v0, v1

    int-to-float v2, v3

    sget v4, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    mul-float/2addr v2, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 232
    int-to-float v0, v3

    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v3

    goto :goto_0

    .line 235
    :cond_3
    int-to-float v0, v1

    sget v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->updateActualSurface(Landroid/graphics/SurfaceTexture;)V

    .line 77
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_width:I

    .line 78
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_height:I

    .line 79
    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureAvailable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->diagString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-nez v0, :cond_0

    const-string v0, "(editor is null)"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 82
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w()V

    .line 83
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 84
    invoke-virtual {p0, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 79
    :cond_0
    const-string v0, "(editor is SET)"

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;->onEventNotify(ILjava/lang/Object;III)V

    .line 91
    :cond_3
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    .line 92
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceTextureDestroyed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->diagString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-nez v0, :cond_2

    const-string v0, "(editor is null)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 120
    :cond_0
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 121
    iput-object v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    .line 122
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;->onEventNotify(ILjava/lang/Object;III)V

    .line 125
    :cond_1
    iput-boolean v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->isAvailable:Z

    .line 126
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_2
    const-string v0, "(editor is SET)"

    goto :goto_0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->updateActualSurface(Landroid/graphics/SurfaceTexture;)V

    .line 97
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_width:I

    .line 98
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->m_height:I

    .line 100
    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->diagString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-nez v0, :cond_2

    const-string v0, "(editor is null)"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->actualSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Landroid/view/Surface;)V

    .line 103
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mEditor:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->w()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;->onEventNotify(ILjava/lang/Object;III)V

    .line 108
    :cond_1
    return-void

    .line 100
    :cond_2
    const-string v0, "(editor is SET)"

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public postOnPrepareSurface(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->postOnPrepareSurfaceRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public requestDraw(I)V
    .locals 3

    .prologue
    .line 349
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDraw("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;->Native:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mRenderType:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$RenderType;

    .line 351
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mCurrentTime:I

    .line 353
    return-void
.end method

.method public setBlackOut(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->mBlackOut:Z

    .line 151
    return-void
.end method

.method protected setNotify(Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView;->nexThemeViewCallback:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeView$b;

    .line 56
    return-void
.end method
