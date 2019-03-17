.class public Lcom/miui/gallery/provider/MediaOperationService;
.super Landroid/app/IntentService;
.source "MediaOperationService.java"


# static fields
.field public static EXTRA_ARGUMENT:Ljava/lang/String;

.field public static EXTRA_BUNDLE:Ljava/lang/String;

.field public static EXTRA_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "method"

    sput-object v0, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_METHOD:Ljava/lang/String;

    .line 15
    const-string v0, "argument"

    sput-object v0, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_ARGUMENT:Ljava/lang/String;

    .line 16
    const-string v0, "bundle"

    sput-object v0, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_BUNDLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MediaOperationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 23
    const-string v2, "MediaOperationService"

    const-string v3, "On start handling intent %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/miui/gallery/provider/MediaOperationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/util/NotificationHelper;->getEmptyNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/gallery/provider/MediaOperationService;->startForeground(ILandroid/app/Notification;)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/gallery/provider/MediaOperationService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_METHOD:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_ARGUMENT:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/miui/gallery/provider/MediaOperationService;->EXTRA_BUNDLE:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 26
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 29
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "MediaOperationService"

    const-string v3, "Done handling intent %s, result %s"

    invoke-static {v2, v3, p1, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p0, v7}, Lcom/miui/gallery/provider/MediaOperationService;->stopForeground(Z)V

    .line 35
    .end local v1    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MediaOperationService"

    const-string v3, "Error occurred while executing intent %s"

    invoke-static {v2, v3, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {p0, v7}, Lcom/miui/gallery/provider/MediaOperationService;->stopForeground(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v7}, Lcom/miui/gallery/provider/MediaOperationService;->stopForeground(Z)V

    throw v2
.end method
