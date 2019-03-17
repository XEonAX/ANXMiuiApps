.class public abstract Lcom/miui/gallery/service/IntentServiceBase;
.super Landroid/app/IntentService;
.source "IntentServiceBase.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected mHasForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "ServiceBase"

    sput-object v0, Lcom/miui/gallery/service/IntentServiceBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/miui/gallery/service/IntentServiceBase;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private startForegroundInternal()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/miui/gallery/service/IntentServiceBase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start foreground service"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/service/IntentServiceBase;->mHasForeground:Z

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/service/IntentServiceBase;->getNotificationId()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery/service/IntentServiceBase;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/service/IntentServiceBase;->startForeground(ILandroid/app/Notification;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract getNotification()Landroid/app/Notification;
.end method

.method protected abstract getNotificationId()I
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    const-string v0, "is_start_foreground_service"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/service/IntentServiceBase;->startForegroundInternal()V

    .line 29
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/IntentService;->onTrimMemory(I)V

    .line 34
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/service/IntentServiceBase;->mHasForeground:Z

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/miui/gallery/service/IntentServiceBase;->startForegroundInternal()V

    .line 37
    :cond_0
    return-void
.end method
