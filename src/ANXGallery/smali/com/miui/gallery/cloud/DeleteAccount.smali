.class public Lcom/miui/gallery/cloud/DeleteAccount;
.super Ljava/lang/Object;
.source "DeleteAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;,
        Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;
    }
.end annotation


# static fields
.field private static sNeedDeleteAfterSync:Z

.field private static sWipeDataStrategyAfterSync:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/miui/gallery/cloud/DeleteAccount;->sWipeDataStrategyAfterSync:I

    return-void
.end method

.method public static deleteAccountAfterSyncIfNeeded()V
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    if-eqz v0, :cond_0

    .line 113
    sget v0, Lcom/miui/gallery/cloud/DeleteAccount;->sWipeDataStrategyAfterSync:I

    invoke-static {v0}, Lcom/miui/gallery/cloud/DeleteAccount;->executeDeleteAccount(I)Z

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    .line 116
    :cond_0
    return-void
.end method

.method public static deleteAccountInTask(Landroid/app/Activity;Landroid/accounts/Account;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "wipeDataStrategy"    # I
    .param p3, "deleteAccountListener"    # Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;

    .prologue
    .line 36
    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/gallery/cloud/DeleteAccount;->sNeedDeleteAfterSync:Z

    .line 38
    sput p2, Lcom/miui/gallery/cloud/DeleteAccount;->sWipeDataStrategyAfterSync:I

    .line 39
    const-string v1, "DeleteAccount"

    const-string v2, "cancel sync..."

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "com.miui.gallery.cloud.provider"

    invoke-static {p1, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 42
    :cond_0
    new-instance v0, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;-><init>(Landroid/app/Activity;ILcom/miui/gallery/cloud/DeleteAccount$DeleteAccountListener;)V

    .line 44
    .local v0, "deleteAccountTask":Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloud/DeleteAccount$DeleteAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method public static executeDeleteAccount(I)Z
    .locals 4
    .param p0, "wipeDataStrategy"    # I

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lcom/miui/gallery/push/GalleryPushManager;->getInstance()Lcom/miui/gallery/push/GalleryPushManager;

    move-result-object v1

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/push/GalleryPushManager;->onDeleteAccount(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/miui/gallery/cloud/AlbumShareOperations;->resetAccountInfo()V

    .line 91
    const-string v1, "DeleteAccount"

    const-string v2, "reset AlbumShareOperations when account is deleted"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/miui/gallery/util/deleterecorder/DeleteRecorder;->onDeleteAccount()V

    .line 97
    invoke-static {v3, v3}, Lcom/miui/gallery/cloud/GallerySyncAdapterImpl;->resetAccountInfo(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V

    .line 100
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/gallery/util/DeleteDataUtil;->delete(Landroid/content/Context;I)Z

    move-result v0

    .line 101
    .local v0, "ret":Z
    const-string v1, "DeleteAccount"

    const-string v2, "delete data result %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    new-instance v1, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/CloudControlRequestHelper;->execRequestSync()Z

    .line 106
    const-string v1, "DeleteAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish deleting account, strategy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return v0
.end method
