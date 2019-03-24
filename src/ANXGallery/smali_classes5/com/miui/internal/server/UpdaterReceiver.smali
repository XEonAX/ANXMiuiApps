.class public Lcom/miui/internal/server/UpdaterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdaterReceiver.java"


# static fields
.field private static final ACTION_UPDATE_SUCCESSED:Ljava/lang/String; = "com.android.updater.action.UPDATE_SUCCESSED"

.field private static final TAG:Ljava/lang/String; = "MiuiSystemSdk.UpdaterReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 17
    const-string v0, "com.android.updater.action.UPDATE_SUCCESSED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "MiuiSystemSdk.UpdaterReceiver"

    const-string v1, "UpdaterReceiver, OTA update successed, try updateDefaultTone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p1}, Landroid/media/ExtraRingtoneManager;->updateDefaultToneForX(Landroid/content/Context;)V

    .line 21
    :cond_0
    return-void
.end method
