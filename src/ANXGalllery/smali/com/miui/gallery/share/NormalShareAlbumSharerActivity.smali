.class public Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;
.super Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;
.source "NormalShareAlbumSharerActivity.java"


# instance fields
.field private mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createShareUserAdapter()Lcom/miui/gallery/share/ShareUserAdapterBase;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/miui/gallery/share/ShareUserAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mCreatorId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/share/ShareUserAdapter;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "album_normal_share_info"

    return-object v0
.end method

.method protected getPreferencesResourceId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f070007

    return v0
.end method

.method protected initPreferences()V
    .locals 3

    .prologue
    .line 11
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->initPreferences()V

    .line 12
    new-instance v0, Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    iget-object v1, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mAlbumName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;Ljava/lang/String;Lcom/miui/gallery/share/CloudSharerMediaSet;)V

    iput-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    .line 14
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->initPreferences()V

    .line 15
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    iget-object v1, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 16
    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->isPublic()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 17
    invoke-virtual {v2}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getPublicUrl()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->updatePublicPreference(ZLjava/lang/String;)V

    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    invoke-virtual {v0}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->onDestroy()V

    .line 28
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->onDestroy()V

    .line 29
    return-void
.end method

.method protected onUpdateProgressChanged(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->updateProgressBar(I)V

    .line 40
    return-void
.end method

.method protected updateSharers()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/miui/gallery/share/ShareAlbumSharerBaseActivity;->updateSharers()V

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mPublicShareUiHandler:Lcom/miui/gallery/share/SharerPublicShareUiHandler;

    iget v1, p0, Lcom/miui/gallery/share/NormalShareAlbumSharerActivity;->mSharerCount:I

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/SharerPublicShareUiHandler;->updateSharers(I)V

    .line 35
    return-void
.end method
