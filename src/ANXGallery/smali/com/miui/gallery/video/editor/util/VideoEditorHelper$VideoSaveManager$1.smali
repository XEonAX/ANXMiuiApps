.class Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;
.super Ljava/lang/Object;
.source "VideoEditorHelper.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;->handleVideoSave(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

.field final synthetic val$outputPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->val$outputPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    .line 366
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;->access$700(Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;)Lcom/miui/gallery/video/editor/util/VideoEditorHelper;

    move-result-object v1

    .line 367
    .local v1, "helper":Lcom/miui/gallery/video/editor/util/VideoEditorHelper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->this$0:Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;

    invoke-static {v2}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;->access$800(Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    invoke-static {v1}, Lcom/miui/gallery/video/editor/util/VideoEditorHelper;->access$300(Lcom/miui/gallery/video/editor/util/VideoEditorHelper;)Landroid/app/Activity;

    move-result-object v0

    .line 369
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->val$outputPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/gallery/scanner/MediaScanner;->scanSingleFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->val$outputPath:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/miui/gallery/util/MediaStoreUtils;->insert(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 371
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/gallery/video/editor/util/VideoEditorHelper$VideoSaveManager$1;->val$outputPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
