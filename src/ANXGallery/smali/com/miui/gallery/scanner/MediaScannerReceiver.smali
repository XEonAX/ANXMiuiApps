.class public Lcom/miui/gallery/scanner/MediaScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaScannerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/miui/gallery/scanner/MediaScannerReceiver;->shouldHandlePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private onMediaScannerFinished(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gallery/scanner/MediaScannerReceiver$1;-><init>(Lcom/miui/gallery/scanner/MediaScannerReceiver;Landroid/net/Uri;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 69
    return-void
.end method

.method private onMediaScannerScanFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 72
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/gallery/scanner/MediaScannerReceiver$2;-><init>(Lcom/miui/gallery/scanner/MediaScannerReceiver;Landroid/net/Uri;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 102
    return-void
.end method

.method private static shouldHandlePath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/miui/gallery/util/StorageUtils;->getRelativePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "relativePath":Ljava/lang/String;
    const-string v1, "MIUI/Gallery/cloud"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ExtraTextUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 28
    const-string v3, "com.miui.gallery.extra.trigger_scan"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 33
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "MediaScannerReceiver"

    const-string v4, "Broadcast received, action: [%s], data uri: [%s]"

    invoke-static {v3, v4, v0, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/scanner/MediaScannerReceiver;->onMediaScannerFinished(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    invoke-direct {p0, p1, v2}, Lcom/miui/gallery/scanner/MediaScannerReceiver;->onMediaScannerScanFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 39
    :cond_3
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/gallery/scanner/MediaScannerUtil;->cleanup(Landroid/content/Context;)V

    goto :goto_0

    .line 41
    :cond_4
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x6

    .line 45
    invoke-static {v3, v1, v4, v5, v5}, Lcom/miui/gallery/scanner/MediaScannerUtil;->scanDirectory(Landroid/content/Context;Ljava/lang/String;IZZ)V

    goto :goto_0
.end method
