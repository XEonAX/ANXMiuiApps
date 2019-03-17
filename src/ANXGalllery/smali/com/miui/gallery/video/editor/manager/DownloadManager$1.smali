.class Lcom/miui/gallery/video/editor/manager/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/manager/DownloadManager;->download(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;Lcom/miui/gallery/net/download/Request$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/manager/DownloadManager;

.field final synthetic val$downloadHelper:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

.field final synthetic val$isActiveNetworkMetered:Z

.field final synthetic val$listener:Lcom/miui/gallery/net/download/Request$Listener;

.field final synthetic val$resource:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/manager/DownloadManager;Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;ZLcom/miui/gallery/net/download/Request$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/manager/DownloadManager;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->this$0:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$downloadHelper:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    iput-object p3, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$resource:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    iput-boolean p4, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$isActiveNetworkMetered:Z

    iput-object p5, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 8
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 36
    aget-object v2, p1, v7

    check-cast v2, Lcom/miui/gallery/net/resource/DownloadInfo;

    .line 37
    .local v2, "info":Lcom/miui/gallery/net/resource/DownloadInfo;
    const-string v3, "DownloadManager"

    const-string v4, "download %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/miui/gallery/net/resource/DownloadInfo;->sha1:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$downloadHelper:Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;

    iget-object v4, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$resource:Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;

    invoke-interface {v3, v4}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IDownloadListener;->getDownloadPath(Lcom/miui/gallery/video/editor/model/VideoEditorBaseModel;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string v3, "DownloadManager"

    const-string/jumbo v4, "the file already exist and its path is : %s"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    :cond_0
    new-instance v0, Lcom/miui/gallery/net/download/Request;

    iget-object v3, v2, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lcom/miui/gallery/net/download/Request;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    .line 44
    .local v0, "downloadRequest":Lcom/miui/gallery/net/download/Request;
    iget-object v3, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->this$0:Lcom/miui/gallery/video/editor/manager/DownloadManager;

    invoke-static {v3}, Lcom/miui/gallery/video/editor/manager/DownloadManager;->access$000(Lcom/miui/gallery/video/editor/manager/DownloadManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v3, Lcom/miui/gallery/net/download/Verifier$Sha1;

    iget-object v4, v2, Lcom/miui/gallery/net/resource/DownloadInfo;->sha1:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/miui/gallery/net/download/Verifier$Sha1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/download/Request;->setVerifier(Lcom/miui/gallery/net/download/Verifier;)V

    .line 46
    iget-boolean v3, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$isActiveNetworkMetered:Z

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/download/Request;->setAllowedOverMetered(Z)V

    .line 47
    iget-object v3, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    invoke-virtual {v0, v3}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    .line 48
    sget-object v3, Lcom/miui/gallery/net/download/GalleryDownloadManager;->INSTANCE:Lcom/miui/gallery/net/download/GalleryDownloadManager;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/net/download/GalleryDownloadManager;->enqueue(Lcom/miui/gallery/net/download/Request;)Z

    .line 49
    return-void
.end method

.method public onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/gallery/video/editor/manager/DownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/net/download/Request$Listener;->onComplete(I)V

    .line 54
    const-string v0, "DownloadManager"

    const-string v1, "errorMessage:%s,errorCode.name:5s"

    invoke-virtual {p1}, Lcom/miui/gallery/net/base/ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    return-void
.end method
