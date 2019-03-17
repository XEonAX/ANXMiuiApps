.class Lcom/miui/gallery/util/GalleryBackgroundService$1;
.super Ljava/lang/Object;
.source "GalleryBackgroundService.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/GalleryBackgroundService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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
.field final synthetic this$0:Lcom/miui/gallery/util/GalleryBackgroundService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/GalleryBackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/GalleryBackgroundService;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/gallery/util/GalleryBackgroundService$1;->this$0:Lcom/miui/gallery/util/GalleryBackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/GalleryBackgroundService$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 2
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 37
    invoke-static {}, Lcom/miui/gallery/util/MediaStoreUtils;->getLastMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 38
    .local v0, "lastMediaUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/activity/ExternalPhotoPageActivity;->preloadThumbnail(Ljava/lang/String;)V

    .line 41
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
