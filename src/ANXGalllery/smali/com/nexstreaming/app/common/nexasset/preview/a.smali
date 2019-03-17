.class public Lcom/nexstreaming/app/common/nexasset/preview/a;
.super Landroid/opengl/GLSurfaceView;
.source "AssetPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/nexasset/preview/a$a;
    }
.end annotation


# static fields
.field private static final FRAME_RATE:J = 0x1eL

.field private static final FRAME_TIME:J = 0x21L

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAspectRatio:F

.field private mColor:F

.field private m_absTime:I

.field private m_assetPackageManager:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

.field public m_done:Z

.field private m_effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

.field private m_effectOptions:Ljava/lang/String;

.field private m_effectTime:J

.field private m_frameEnd:J

.field private m_frameStart:J

.field private m_handler:Landroid/os/Handler;

.field private m_isClipEffect:Z

.field private m_isRenderItem:Z

.field private m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

.field private m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

.field private m_pauseTime:J

.field private m_renderLock:Ljava/lang/Object;

.field private m_setEffect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

.field private m_setEffectOptions:Ljava/lang/String;

.field private m_setEffectTime:J

.field private m_showOnRender:Z

.field private m_startTime:J

.field private m_swapPlaceholders:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "NexThemePreviewView"

    sput-object v0, Lcom/nexstreaming/app/common/nexasset/preview/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    .line 35
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_handler:Landroid/os/Handler;

    .line 42
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    .line 43
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectOptions:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_done:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_renderLock:Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectTime:J

    .line 49
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    .line 50
    iput v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 56
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    .line 57
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mColor:F

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->init(ZII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    .line 35
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_handler:Landroid/os/Handler;

    .line 42
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    .line 43
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectOptions:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_done:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_renderLock:Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectTime:J

    .line 49
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    .line 50
    iput v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 56
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    .line 57
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mColor:F

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->init(ZII)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x3fe38e39

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    .line 35
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_handler:Landroid/os/Handler;

    .line 42
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    .line 43
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectOptions:Ljava/lang/String;

    .line 45
    iput-boolean v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_done:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_renderLock:Ljava/lang/Object;

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectTime:J

    .line 49
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    .line 50
    iput v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 56
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    .line 57
    iput-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mColor:F

    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->init(ZII)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_frameEnd:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_frameEnd:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_renderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nexstreaming/app/common/nexasset/preview/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/nexstreaming/app/common/nexasset/preview/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectOptions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_setEffectTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/nexstreaming/app/common/nexasset/preview/a;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_assetPackageManager:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_isRenderItem:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/nexstreaming/app/common/nexasset/preview/a;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    return p1
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->miliTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/nexstreaming/app/common/nexasset/preview/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/nexstreaming/app/common/nexasset/preview/a;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_frameStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_frameStart:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/nexstreaming/app/common/nexasset/preview/a;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mColor:F

    return v0
.end method

.method static synthetic access$402(Lcom/nexstreaming/app/common/nexasset/preview/a;F)F
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mColor:F

    return p1
.end method

.method static synthetic access$500(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/nexstreaming/app/common/nexasset/preview/a;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_startTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/nexstreaming/app/common/nexasset/preview/a;J)J
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_startTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_isClipEffect:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nexstreaming/app/common/nexasset/preview/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    return v0
.end method

.method static synthetic access$902(Lcom/nexstreaming/app/common/nexasset/preview/a;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    return p1
.end method

.method private destroyRenderer()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_renderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->deinit(Z)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    .line 169
    :cond_0
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(ZII)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_assetPackageManager:Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    .line 208
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEGLContextClientVersion(I)V

    .line 210
    invoke-virtual {p0, v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setZOrderOnTop(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 213
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/nexstreaming/app/common/nexasset/preview/a$1;

    invoke-direct {v1, p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a$1;-><init>(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;)V

    invoke-virtual {p0, v1}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 260
    new-instance v0, Lcom/nexstreaming/app/common/nexasset/preview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nexstreaming/app/common/nexasset/preview/a$a;-><init>(Lcom/nexstreaming/app/common/nexasset/preview/a;Lcom/nexstreaming/app/common/nexasset/preview/a$1;)V

    .line 261
    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 262
    invoke-virtual {p0, v2}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setRenderMode(I)V

    .line 263
    sget-object v1, Lcom/nexstreaming/app/common/nexasset/preview/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL View Created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->miliTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_startTime:J

    .line 267
    return-void
.end method

.method private makeRenderer()V
    .locals 8

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_done:Z

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    invoke-direct {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    .line 175
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->e()Lcom/nexstreaming/kminternal/nexvideoeditor/a;

    move-result-object v2

    .line 176
    iget-object v7, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    const/16 v4, 0x5a0

    const/16 v5, 0x32a

    const v6, 0x16e360

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;-><init>(Landroid/content/res/Resources;Lcom/nexstreaming/kminternal/nexvideoeditor/a;Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;III)V

    invoke-virtual {v7, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->init(Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;)V

    .line 177
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_swapPlaceholders:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_isClipEffect:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    const-string v1, "placeholder2.jpg"

    const-string v2, "placeholder1.jpg"

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setPlaceholders(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_nexThemeRenderer:Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;

    const-string v1, "placeholder1.jpg"

    const-string v2, "placeholder2.jpg"

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexThemeRenderer;->setPlaceholders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static miliTime()J
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public deinitRenderer()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    return v0
.end method

.method public getEffectOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTime()I
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    long-to-int v0, v0

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->makeRenderer()V

    .line 187
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 188
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->destroyRenderer()V

    .line 160
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 161
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 192
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 193
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 194
    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 195
    int-to-float v2, v0

    iget v3, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    mul-float/2addr v2, v3

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 196
    int-to-float v0, v1

    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setMeasuredDimension(II)V

    .line 202
    return-void

    .line 198
    :cond_1
    int-to-float v1, v0

    iget v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public resumeRendering()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setRenderMode(I)V

    .line 275
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->mAspectRatio:F

    .line 80
    return-void
.end method

.method public setEffect(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    if-ne p1, v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->miliTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_startTime:J

    .line 115
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getCategory()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    move-result-object v0

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;->effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemCategory;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_isClipEffect:Z

    .line 116
    invoke-interface {p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/f;->getType()Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    move-result-object v0

    sget-object v3, Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;->renderitem:Lcom/nexstreaming/app/common/nexasset/assetpackage/ItemType;

    if-ne v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_isRenderItem:Z

    .line 117
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effect:Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto :goto_1

    :cond_2
    move v1, v2

    .line 116
    goto :goto_2
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->a(Landroid/content/Context;)Lcom/nexstreaming/app/common/nexasset/assetpackage/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nexstreaming/app/common/nexasset/assetpackage/c;->c(Ljava/lang/String;)Lcom/nexstreaming/app/common/nexasset/assetpackage/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setEffect(Lcom/nexstreaming/app/common/nexasset/assetpackage/f;)V

    .line 106
    return-void
.end method

.method public setEffectOptions(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectOptions:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEffectTime(I)V
    .locals 4

    .prologue
    .line 121
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/nexstreaming/app/common/nexasset/preview/a;->miliTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_startTime:J

    .line 124
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    goto :goto_0
.end method

.method public setOverlayPathResolver(Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_overlayPathResolver:Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$d;

    .line 88
    return-void
.end method

.method public setPauseTime(I)V
    .locals 2

    .prologue
    .line 128
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_pauseTime:J

    .line 129
    return-void
.end method

.method public showOnRender()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_showOnRender:Z

    .line 155
    return-void
.end method

.method public stepBackward(I)V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 145
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 146
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    if-gez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 148
    :cond_0
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    if-le v0, v1, :cond_1

    .line 149
    iput v1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 150
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    .line 151
    return-void
.end method

.method public stepForward(I)V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 136
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 137
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    if-gez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 139
    :cond_0
    iget v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    if-le v0, v1, :cond_1

    .line 140
    iput v1, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_absTime:I

    .line 141
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nexstreaming/app/common/nexasset/preview/a;->m_effectTime:J

    .line 142
    return-void
.end method

.method public suspendRendering()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/app/common/nexasset/preview/a;->setRenderMode(I)V

    .line 271
    return-void
.end method
