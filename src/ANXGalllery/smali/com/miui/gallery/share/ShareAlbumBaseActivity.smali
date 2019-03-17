.class public abstract Lcom/miui/gallery/share/ShareAlbumBaseActivity;
.super Lmiui/preference/PreferenceActivity;
.source "ShareAlbumBaseActivity.java"

# interfaces
.implements Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/share/ShareAlbumBaseActivity$UserCacheDescComparator;
    }
.end annotation


# instance fields
.field protected mAlbumId:Ljava/lang/String;

.field protected mAlbumName:Ljava/lang/String;

.field private final mAlbumUserCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

.field protected mCreatorId:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field protected mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

.field protected mSharerCount:I

.field protected mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

.field private final mUserInfoCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/gallery/share/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerCount:I

    .line 48
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$1;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mUserInfoCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    .line 57
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$2;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;)V

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumUserCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    .line 226
    return-void
.end method

.method private handleOrientationConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 116
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 118
    .local v0, "gridColumnCount":I
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    .line 119
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/share/GridPreferenceBase;->setColumnCountAndWidth(II)V

    .line 125
    :goto_0
    return-void

    .line 121
    .end local v0    # "gridColumnCount":I
    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 122
    .restart local v0    # "gridColumnCount":I
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    .line 123
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/share/GridPreferenceBase;->setColumnCountAndWidth(II)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createShareUserAdapter()Lcom/miui/gallery/share/ShareUserAdapterBase;
.end method

.method protected abstract doSyncFromServer(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract getContentView()I
.end method

.method protected getOwnerEntry(Ljava/lang/String;)Lcom/miui/gallery/share/CloudUserCacheEntry;
    .locals 10
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 213
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v1}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getBabyInfo()Lcom/miui/gallery/cloud/baby/BabyInfo;

    move-result-object v0

    .line 214
    .local v0, "babyInfo":Lcom/miui/gallery/cloud/baby/BabyInfo;
    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Lcom/miui/gallery/share/CloudUserCacheEntry;

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumId:Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelation:Ljava/lang/String;

    iget-object v7, v0, Lcom/miui/gallery/cloud/baby/BabyInfo;->mRelationText:Ljava/lang/String;

    const-string v8, "normal"

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/miui/gallery/share/CloudUserCacheEntry;

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumId:Ljava/lang/String;

    move-object v3, p1

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v1 .. v9}, Lcom/miui/gallery/share/CloudUserCacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getPageName()Ljava/lang/String;
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected abstract getShareUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/share/CloudUserCacheEntry;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getUserCache()Lcom/miui/gallery/share/CloudUserCache;
.end method

.method protected initPreferences()V
    .locals 4

    .prologue
    .line 181
    const-string/jumbo v1, "sharer_grid"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/share/GridPreferenceBase;

    iput-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    .line 182
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 183
    .local v0, "gridColumnCount":I
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    .line 184
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 183
    invoke-virtual {v1, v0, v2}, Lcom/miui/gallery/share/GridPreferenceBase;->setColumnCountAndWidth(II)V

    .line 186
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-virtual {v1, p0}, Lcom/miui/gallery/share/GridPreferenceBase;->setOnItemClickListener(Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->createShareUserAdapter()Lcom/miui/gallery/share/ShareUserAdapterBase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    .line 188
    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    invoke-virtual {v1, v2}, Lcom/miui/gallery/share/GridPreferenceBase;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->handleOrientationConfiguration(Landroid/content/res/Configuration;)V

    .line 191
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->handleOrientationConfiguration(Landroid/content/res/Configuration;)V

    .line 113
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    const-string/jumbo v0, "share_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mPath:Ljava/lang/String;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "ShareAlbumBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album path is invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->finish()V

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->setContentView(I)V

    .line 89
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/share/Path;->fromString(Ljava/lang/String;)Lcom/miui/gallery/share/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/share/Path;->getMediaSet()Lcom/miui/gallery/share/CloudSharerMediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    .line 90
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumName:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumId:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->isSharerAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCloudSingleMediaSet:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-virtual {v0}, Lcom/miui/gallery/share/CloudSharerMediaSet;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCreatorId:Ljava/lang/String;

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->initPreferences()V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Lcom/miui/gallery/cloud/GalleryCloudUtils;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mCreatorId:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerGridPreference:Lcom/miui/gallery/share/GridPreferenceBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/GridPreferenceBase;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 154
    return-void
.end method

.method public onItemClick(Lcom/miui/gallery/share/GridPreferenceBase;I)V
    .locals 0
    .param p1, "pref"    # Lcom/miui/gallery/share/GridPreferenceBase;
    .param p2, "position"    # I

    .prologue
    .line 206
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumUserCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/CloudUserCache;->removeListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V

    .line 141
    invoke-static {}, Lcom/miui/gallery/share/UserInfoCache;->getInstance()Lcom/miui/gallery/share/UserInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mUserInfoCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/UserInfoCache;->removeListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V

    .line 142
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 143
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageEnd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->pause()V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->resume()V

    .line 133
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getUserCache()Lcom/miui/gallery/share/CloudUserCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumUserCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/CloudUserCache;->addListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V

    .line 134
    invoke-static {}, Lcom/miui/gallery/share/UserInfoCache;->getInstance()Lcom/miui/gallery/share/UserInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mUserInfoCacheListener:Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/share/UserInfoCache;->addListener(Lcom/miui/gallery/share/DBCache$OnDBCacheChangedListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->updateSharers()V

    .line 136
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string/jumbo v0, "share_path"

    iget-object v1, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected onUpdateProgressChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 210
    return-void
.end method

.method protected final syncFromServer()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity$3;-><init>(Lcom/miui/gallery/share/ShareAlbumBaseActivity;)V

    .line 173
    .local v0, "l":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->onUpdateProgressChanged(I)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->doSyncFromServer(Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 175
    return-void
.end method

.method protected updateSharers()V
    .locals 4

    .prologue
    .line 194
    iget-object v3, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/gallery/cloud/CloudUtils;->isValidAlbumId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 199
    .local v0, "start":J
    invoke-virtual {p0}, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->getShareUsers()Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/share/CloudUserCacheEntry;>;"
    iget-object v3, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mShareUserGridAdapter:Lcom/miui/gallery/share/ShareUserAdapterBase;

    invoke-virtual {v3, v2}, Lcom/miui/gallery/share/ShareUserAdapterBase;->setShareUsers(Ljava/util/List;)V

    .line 201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/miui/gallery/share/ShareAlbumBaseActivity;->mSharerCount:I

    goto :goto_0
.end method
