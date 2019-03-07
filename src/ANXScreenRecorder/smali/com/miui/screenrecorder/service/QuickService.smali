.class public Lcom/miui/screenrecorder/service/QuickService;
.super Landroid/service/quicksettings/TileService;
.source "QuickService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.intent.screenrecorder.RECORDER_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "is_start_immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/screenrecorder/service/QuickService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 38
    invoke-static {}, Lcom/miui/screenrecorder/ScreenRecorderApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/screenrecorder/tools/ScreenRecorderUtils;->collapseStatusBar(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public onStartListening()V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 20
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/QuickService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 21
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_0

    .line 22
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/miui/screenrecorder/service/QuickService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/QuickService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/screenrecorder/service/QuickService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v1, "QuickService"

    const-string v2, "getQsTile is null"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
