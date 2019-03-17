.class Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;
.super Ljava/lang/Object;
.source "MiuiCameraCaptureReceiver.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    iput-object p2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v6, 0x0

    .line 143
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    iget-object v2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->access$100(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v6

    .line 146
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/miui/gallery/permission/core/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    const-string v1, "MiuiCameraCaptureReceiver"

    const-string v2, "Can\'t access external storage, relate permission is ungranted"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-static {v1}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->access$200(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 153
    const-string v1, "external"

    iget-object v2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-static {v2}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->access$200(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, "mediaUri":Landroid/net/Uri;
    :goto_1
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    iget-object v2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->access$100(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->this$0:Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;

    invoke-static {v2}, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;->access$300(Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->preloadThumbnail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 155
    .end local v0    # "mediaUri":Landroid/net/Uri;
    :cond_3
    iget-object v1, p0, Lcom/miui/gallery/receiver/MiuiCameraCaptureReceiver$PreloadBigPhotoRunnable$1;->val$filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/gallery/util/MediaStoreUtils;->getFileMediaUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "mediaUri":Landroid/net/Uri;
    goto :goto_1
.end method
