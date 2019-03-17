.class Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"

# interfaces
.implements Lcom/miui/gallery/net/base/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/net/resource/ResourceDownloadManager;->download(Lcom/miui/gallery/net/resource/Resource;Ljava/lang/String;Lcom/miui/gallery/net/download/Request$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$isActiveNetworkMetered:Z

.field final synthetic val$listener:Lcom/miui/gallery/net/download/Request$Listener;


# direct methods
.method constructor <init>(Lcom/miui/gallery/net/resource/ResourceDownloadManager;Ljava/io/File;ZLcom/miui/gallery/net/download/Request$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->this$0:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    iput-object p2, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$file:Ljava/io/File;

    iput-boolean p3, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$isActiveNetworkMetered:Z

    iput-object p4, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 7
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 45
    aget-object v1, p1, v6

    check-cast v1, Lcom/miui/gallery/net/resource/DownloadInfo;

    .line 46
    .local v1, "info":Lcom/miui/gallery/net/resource/DownloadInfo;
    const-string v2, "ResourceDownloadManager"

    const-string v3, "download %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/miui/gallery/net/resource/DownloadInfo;->sha1:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/miui/gallery/net/download/Request;

    iget-object v2, v1, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v2, v3}, Lcom/miui/gallery/net/download/Request;-><init>(Landroid/net/Uri;Ljava/io/File;)V

    .line 48
    .local v0, "downloadRequest":Lcom/miui/gallery/net/download/Request;
    iget-object v2, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->this$0:Lcom/miui/gallery/net/resource/ResourceDownloadManager;

    invoke-static {v2}, Lcom/miui/gallery/net/resource/ResourceDownloadManager;->access$000(Lcom/miui/gallery/net/resource/ResourceDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lcom/miui/gallery/net/download/Verifier$Sha1;

    iget-object v3, v1, Lcom/miui/gallery/net/resource/DownloadInfo;->sha1:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/miui/gallery/net/download/Verifier$Sha1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/gallery/net/download/Request;->setVerifier(Lcom/miui/gallery/net/download/Verifier;)V

    .line 50
    iget-boolean v2, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$isActiveNetworkMetered:Z

    invoke-virtual {v0, v2}, Lcom/miui/gallery/net/download/Request;->setAllowedOverMetered(Z)V

    .line 51
    iget-object v2, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    invoke-virtual {v0, v2}, Lcom/miui/gallery/net/download/Request;->setListener(Lcom/miui/gallery/net/download/Request$Listener;)V

    .line 52
    sget-object v2, Lcom/miui/gallery/net/download/GalleryDownloadManager;->INSTANCE:Lcom/miui/gallery/net/download/GalleryDownloadManager;

    invoke-virtual {v2, v0}, Lcom/miui/gallery/net/download/GalleryDownloadManager;->enqueue(Lcom/miui/gallery/net/download/Request;)Z

    .line 53
    return-void
.end method

.method public onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/gallery/net/resource/ResourceDownloadManager$1;->val$listener:Lcom/miui/gallery/net/download/Request$Listener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/miui/gallery/net/download/Request$Listener;->onComplete(I)V

    .line 58
    const-string v0, "ResourceDownloadManager"

    const-string v1, "errorMessage:%s,errorCode.name:%s"

    invoke-virtual {p1}, Lcom/miui/gallery/net/base/ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
