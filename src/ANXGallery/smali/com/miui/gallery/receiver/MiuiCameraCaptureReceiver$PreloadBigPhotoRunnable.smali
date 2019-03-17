.class Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;
.super Ljava/lang/Object;
.source "MiuiCameraCaptureReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadBigPhotoRunnable"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mIsTempFile:Z

.field private mMediaStoreId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mMediaStoreId:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$1;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->isCanceled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mMediaStoreId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mIsTempFile:Z

    return v0
.end method

.method private isCanceled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mFilePath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 135
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mMediaStoreId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mFilePath:Ljava/lang/String;

    .line 140
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;-><init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mediaStoreId"    # J
    .param p4, "isTempFile"    # Z

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mFilePath:Ljava/lang/String;

    .line 129
    iput-wide p2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mMediaStoreId:J

    .line 130
    iput-boolean p4, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->mIsTempFile:Z

    .line 131
    return-void
.end method
