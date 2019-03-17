.class public Lcom/miui/gallery/share/SharerPublicShareUiHandler;
.super Lcom/miui/gallery/share/PublicShareUiHandler;
.source "SharerPublicShareUiHandler.java"


# direct methods
.method public constructor <init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p1, "activity"    # Lcom/miui/gallery/share/ShareAlbumBaseActivity;
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "mediaSet"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gallery/share/PublicShareUiHandler;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    .line 15
    return-void
.end method

.method private tryToRequestPublicUrl()V
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    invoke-interface {v1}, Lcom/miui/gallery/threadpool/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    .line 25
    invoke-interface {v1}, Lcom/miui/gallery/threadpool/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    :cond_0
    new-instance v0, Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/SharerPublicShareUiHandler$1;-><init>(Lcom/miui/gallery/share/SharerPublicShareUiHandler;)V

    .line 43
    .local v0, "publicUrlListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->requestPublicUrl(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->mFuturePublic:Lcom/miui/gallery/threadpool/Future;

    .line 45
    .end local v0    # "publicUrlListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected initPreferences()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lcom/miui/gallery/share/PublicShareUiHandler;->initPreferences()V

    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->tryToRequestPublicUrl()V

    .line 21
    return-void
.end method

.method protected final requestPublicUrl(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/threadpool/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/miui/gallery/share/AlbumShareUIManager;->requestPublicUrlForSharerAsync(Ljava/lang/String;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)Lcom/miui/gallery/threadpool/Future;

    move-result-object v0

    return-object v0
.end method
