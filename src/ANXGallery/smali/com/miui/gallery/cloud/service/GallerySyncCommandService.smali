.class public Lcom/miui/gallery/cloud/service/GallerySyncCommandService;
.super Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;
.source "GallerySyncCommandService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "GallerySyncCommandService"

    const-string v1, "command %s"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    const-string/jumbo v0, "value_command_cancel_sync"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {p0}, Lcom/miui/gallery/util/SyncUtil;->stopSync(Landroid/content/Context;)V

    .line 17
    :cond_0
    return-void
.end method
