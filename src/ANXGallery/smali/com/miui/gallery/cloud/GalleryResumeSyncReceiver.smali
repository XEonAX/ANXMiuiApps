.class public Lcom/miui/gallery/cloud/GalleryResumeSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GalleryResumeSyncReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-static {}, Lcom/miui/gallery/util/deviceprovider/ApplicationHelper;->getIntentProvider()Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/miui/gallery/util/deviceprovider/IntentProviderInterface;->getExtraAccount()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 19
    .local v0, "account":Landroid/accounts/Account;
    const-string v1, "GalleryResumeSyncReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received resume sync broadcast for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/gallery/util/SyncLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 21
    return-void
.end method
