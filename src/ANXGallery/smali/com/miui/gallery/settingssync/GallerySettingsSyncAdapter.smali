.class public Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;
.super Ljava/lang/Object;
.source "GallerySettingsSyncAdapter.java"

# interfaces
.implements Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$SyncAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;,
        Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingUploadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    .line 32
    return-void
.end method

.method private doDownload()Z
    .locals 7

    .prologue
    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, "resultData":Lorg/json/JSONObject;
    new-instance v2, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;

    invoke-direct {v2}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;-><init>()V

    .line 94
    .local v2, "request":Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingDownloadRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, "response":[Ljava/lang/Object;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v3, v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 96
    const/4 v5, 0x0

    aget-object v5, v3, v5

    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v3    # "response":[Ljava/lang/Object;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 103
    const-string v5, "GallerySettingsSyncAdapter"

    const-string v6, "No syncable settings found to update"

    invoke-static {v5, v6}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v5, 0x1

    .line 106
    :goto_1
    return v5

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "error":Lcom/miui/gallery/net/base/RequestError;
    const-string v5, "GallerySettingsSyncAdapter"

    const-string v6, "Get setting failed, %s"

    invoke-static {v5, v6, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    .end local v1    # "error":Lcom/miui/gallery/net/base/RequestError;
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    invoke-interface {v5, v4}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;->onDownloadSettings(Lorg/json/JSONObject;)Z

    move-result v5

    goto :goto_1
.end method

.method private doUpload()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v4, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    invoke-interface {v4}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;->getUploadSettings()Lorg/json/JSONObject;

    move-result-object v3

    .line 73
    .local v3, "uploadSettings":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 74
    const-string v4, "GallerySettingsSyncAdapter"

    const-string v5, "No syncable settings found to upload"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x1

    .line 87
    :goto_0
    return v4

    .line 78
    :cond_0
    new-instance v1, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingUploadRequest;

    invoke-direct {v1, v3}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingUploadRequest;-><init>(Lorg/json/JSONObject;)V

    .line 80
    .local v1, "request":Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingUploadRequest;
    :try_start_0
    invoke-virtual {v1}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter$GallerySettingUploadRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "response":[Ljava/lang/Object;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v4, v2, v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 82
    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 84
    .end local v2    # "response":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "error":Lcom/miui/gallery/net/base/RequestError;
    const-string v4, "GallerySettingsSyncAdapter"

    const-string v6, "Post setting failed, %s"

    invoke-static {v4, v6, v0}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v0    # "error":Lcom/miui/gallery/net/base/RequestError;
    :cond_1
    move v4, v5

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public performSync(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/miui/gallery/agreement/AgreementsUtils;->isNetworkingAgreementAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Sync settings failed: CTA not confirmed"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v2, 0x1

    invoke-static {v3, v2, v3}, Lcom/miui/gallery/cloud/CloudUtils;->checkAccount(Landroid/app/Activity;ZLjava/lang/Runnable;)Z

    move-result v1

    .line 42
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 43
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Sync settings failed: check account failed"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Sync settings failed: cloud service agreement disabled"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gallery/util/SyncUtil;->isGalleryCloudSyncable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Sync settings failed: sync off"

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    invoke-interface {v2}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    invoke-direct {p0}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->doUpload()Z

    move-result v0

    .line 61
    .local v0, "result":Z
    if-eqz v0, :cond_4

    .line 62
    iget-object v2, p0, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->mModel:Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/miui/gallery/settingssync/GallerySettingsSyncContract$Model;->markDirty(Z)V

    .line 64
    :cond_4
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Upload settings result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v0    # "result":Z
    :cond_5
    invoke-direct {p0}, Lcom/miui/gallery/settingssync/GallerySettingsSyncAdapter;->doDownload()Z

    move-result v0

    .line 67
    .restart local v0    # "result":Z
    const-string v2, "GallerySettingsSyncAdapter"

    const-string v3, "Download settings result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
