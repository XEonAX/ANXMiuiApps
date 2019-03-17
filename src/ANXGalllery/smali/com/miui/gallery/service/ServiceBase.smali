.class public abstract Lcom/miui/gallery/service/ServiceBase;
.super Landroid/app/Service;
.source "ServiceBase.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mHasForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "ServiceBase"

    sput-object v0, Lcom/miui/gallery/service/ServiceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private startForegroundInternal()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/miui/gallery/service/ServiceBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start foreground service"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/service/ServiceBase;->mHasForeground:Z

    .line 46
    invoke-virtual {p0}, Lcom/miui/gallery/service/ServiceBase;->getNotificationId()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/service/ServiceBase;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/service/ServiceBase;->startForeground(ILandroid/app/Notification;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected abstract getNotification()Landroid/app/Notification;
.end method

.method protected abstract getNotificationId()I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 24
    if-eqz p1, :cond_0

    const-string v0, "is_start_foreground_service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/service/ServiceBase;->startForegroundInternal()V

    .line 27
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 33
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/service/ServiceBase;->mHasForeground:Z

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/miui/gallery/service/ServiceBase;->startForegroundInternal()V

    .line 36
    :cond_0
    return-void
.end method
