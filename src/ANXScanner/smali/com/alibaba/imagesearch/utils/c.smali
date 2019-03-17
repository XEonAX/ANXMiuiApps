.class public Lcom/alibaba/imagesearch/utils/c;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:Lcom/alibaba/imagesearch/PailitaoSettings;

.field private static c:Ljava/lang/Object;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/uploader/export/IUploaderManager;

.field private static f:Lcom/uploader/export/IUploaderTask;


# direct methods
.method public static a(Lcom/alibaba/imagesearch/utils/b$c;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alibaba/imagesearch/utils/b$c;->c:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/alibaba/imagesearch/utils/b$c;->d:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/alibaba/imagesearch/utils/b$c;->e:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/alibaba/imagesearch/utils/b$c;->f:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/alibaba/imagesearch/utils/b$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baichuan sdk is not init waiting... tryouts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    const-string v0, "baichuan sdk init timeout"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException happened e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogE(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, ""

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->c:Ljava/lang/Object;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/utils/c;->c:Ljava/lang/Object;

    :cond_5
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->e:Lcom/uploader/export/IUploaderManager;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/uploader/export/UploaderCreator;->get()Lcom/uploader/export/IUploaderManager;

    move-result-object v0

    sput-object v0, Lcom/alibaba/imagesearch/utils/c;->e:Lcom/uploader/export/IUploaderManager;

    :cond_6
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->e:Lcom/uploader/export/IUploaderManager;

    sget-object v2, Lcom/alibaba/imagesearch/utils/c;->f:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v2}, Lcom/uploader/export/IUploaderManager;->cancelAsync(Lcom/uploader/export/IUploaderTask;)Z

    sput-object v4, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/imagesearch/utils/c$1;

    invoke-direct {v0, p0}, Lcom/alibaba/imagesearch/utils/c$1;-><init>(Lcom/alibaba/imagesearch/utils/b$c;)V

    sput-object v0, Lcom/alibaba/imagesearch/utils/c;->f:Lcom/uploader/export/IUploaderTask;

    const-string v2, "upload uploadAsync"

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/imagesearch/utils/c;->e:Lcom/uploader/export/IUploaderManager;

    new-instance v3, Lcom/alibaba/imagesearch/utils/c$2;

    invoke-direct {v3, p0}, Lcom/alibaba/imagesearch/utils/c$2;-><init>(Lcom/alibaba/imagesearch/utils/b$c;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/uploader/export/IUploaderManager;->uploadAsync(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)Z

    sget-object v2, Lcom/alibaba/imagesearch/utils/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :cond_7
    :try_start_1
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    :try_start_2
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->c:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x14

    if-lt v1, v0, :cond_7

    :try_start_3
    const-string v0, "upload already wait 10 seconds, quit"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->e:Lcom/uploader/export/IUploaderManager;

    sget-object v1, Lcom/alibaba/imagesearch/utils/c;->f:Lcom/uploader/export/IUploaderTask;

    invoke-interface {v0, v1}, Lcom/uploader/export/IUploaderManager;->cancelAsync(Lcom/uploader/export/IUploaderTask;)Z

    const-string v0, ""

    sput-object v0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    :cond_9
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "alicdn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_\\d+x\\d+.jpg$"

    const-string v0, "_\\d+x\\d+.jpg$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_320x320.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/utils/b$c;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://market.m.taobao.com/app/s-nx-page/bc-imagesearch/p/index?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tfskey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bizcode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imgsearch_baichuan"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&_bc_from_="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&psfrom=baichuan"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&taokePid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->cpsOnly:Z

    if-eqz v0, :cond_1

    const-string v0, "&taoke_flag=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    if-eqz v0, :cond_2

    const-string v0, "&editionCode=notCN"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&pageConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "region"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "region"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPailitaoH5QueryUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLandroid/graphics/Rect;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;[B)Lcom/alibaba/imagesearch/utils/b$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/utils/b$c;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;->initializeAsync(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebView;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cache"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_1
    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_0
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_2
    if-eqz p2, :cond_4

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, " tae_sdk_3.2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AliApp(BC/3.2.0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AliBaichuan(%s/%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->g()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "1.0.0"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/imagesearch/PailitaoSettings;)V
    .locals 0

    sput-object p0, Lcom/alibaba/imagesearch/utils/c;->b:Lcom/alibaba/imagesearch/PailitaoSettings;

    return-void
.end method

.method public static a(Lcom/alibaba/imagesearch/SearchResult;)V
    .locals 5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/imagesearch/Auction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    iget-object v0, v0, Lcom/alibaba/imagesearch/AuctionItem;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "itemList"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "PailitaoHome"

    const-string v1, "searchSimilar"

    invoke-static {v0, v1, v2}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/alibaba/imagesearch/SearchResult;)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "pict_pp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const-string v0, "region"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/f;->a(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    const-string v0, "category"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ""

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p1, Lcom/alibaba/imagesearch/SearchResult;->category:Ljava/lang/String;

    :cond_2
    move-object v0, v3

    :cond_3
    iput-object v0, p1, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "itemsArray"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v4, Lcom/alibaba/imagesearch/Auction;

    invoke-direct {v4}, Lcom/alibaba/imagesearch/Auction;-><init>()V

    new-instance v5, Lcom/alibaba/imagesearch/AuctionItem;

    invoke-direct {v5}, Lcom/alibaba/imagesearch/AuctionItem;-><init>()V

    iput-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "title"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->title:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "auctionURL"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->url:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    iget-object v5, v5, Lcom/alibaba/imagesearch/AuctionItem;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    iget-object v7, v6, Lcom/alibaba/imagesearch/AuctionItem;->url:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&spm=a2141.8068109/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".0.0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/alibaba/imagesearch/AuctionItem;->url:Ljava/lang/String;

    :cond_4
    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "item_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->itemId:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "location"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->location:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "pic_path"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->thumbnail:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "price"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/imagesearch/AuctionItem;->price:Ljava/lang/String;

    iget-object v5, v4, Lcom/alibaba/imagesearch/Auction;->auctionItem:Lcom/alibaba/imagesearch/AuctionItem;

    const-string v6, "sold"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/imagesearch/AuctionItem;->sold:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/imagesearch/SearchResult;->imageUrl:Ljava/lang/String;

    iput-object v3, v4, Lcom/alibaba/imagesearch/Auction;->queryImage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemArray is empty json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    :cond_7
    iput-object v0, p1, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    return-void
.end method

.method public static a([B)V
    .locals 0

    sput-object p0, Lcom/alibaba/imagesearch/utils/c;->a:[B

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/webkit/WebView;Lcom/alibaba/imagesearch/a/a;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleJsBridge message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/c;->d(Ljava/lang/String;)Lcom/alibaba/imagesearch/a/b;

    move-result-object v0

    iget-object v1, v0, Lcom/alibaba/imagesearch/a/b;->a:Ljava/lang/String;

    const-string v2, "PSFuncBridge"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, v0, Lcom/alibaba/imagesearch/a/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/imagesearch/a/b;->c:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    invoke-direct {v2, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p2, v1, v0, v2}, Lcom/alibaba/imagesearch/a/a;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a()[B
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->a:[B

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/imagesearch/utils/c;->a:[B

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAUS appKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->initLogD(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/uploader/export/UploaderGlobal;->setContext(Landroid/content/Context;)V

    invoke-static {v3, v0}, Lcom/uploader/export/UploaderGlobal;->putElement(ILjava/lang/String;)Lcom/uploader/export/EnvironmentElement;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/uploader/export/UploaderGlobal;->putElement(ILjava/lang/String;)Lcom/uploader/export/EnvironmentElement;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/uploader/export/UploaderGlobal;->putElement(ILjava/lang/String;)Lcom/uploader/export/EnvironmentElement;

    new-instance v0, Lcom/uploader/portal/UploaderEnvironmentImpl2;

    invoke-direct {v0, p0}, Lcom/uploader/portal/UploaderEnvironmentImpl2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/uploader/portal/UploaderEnvironmentImpl2;->setEnvironment(I)V

    new-instance v1, Lcom/uploader/portal/UploaderDependencyImpl;

    invoke-direct {v1, p0, v0}, Lcom/uploader/portal/UploaderDependencyImpl;-><init>(Landroid/content/Context;Lcom/uploader/export/IUploaderEnvironment;)V

    invoke-static {v1}, Lcom/uploader/export/UploaderGlobal;->putDependency(Lcom/uploader/export/IUploaderDependency;)Lcom/uploader/export/IUploaderDependency;

    return-void
.end method

.method public static final c()Lcom/alibaba/imagesearch/PailitaoSettings;
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->b:Lcom/alibaba/imagesearch/PailitaoSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/imagesearch/PailitaoSettings;->defaultSettings()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->b:Lcom/alibaba/imagesearch/PailitaoSettings;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v1, "alicdn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/alibaba/imagesearch/a/b;
    .locals 5

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v4, Lcom/alibaba/imagesearch/a/b;

    invoke-direct {v4}, Lcom/alibaba/imagesearch/a/b;-><init>()V

    iput-object v3, v4, Lcom/alibaba/imagesearch/a/b;->b:Ljava/lang/String;

    iput-object v1, v4, Lcom/alibaba/imagesearch/a/b;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/imagesearch/a/b;->c:Ljava/lang/String;

    iput v2, v4, Lcom/alibaba/imagesearch/a/b;->d:I

    return-object v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->removeAllResultParser()V

    new-instance v0, Lcom/taobao/ma/bar/parser/MaBarParSer;

    invoke-direct {v0}, Lcom/taobao/ma/bar/parser/MaBarParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    new-instance v0, Lcom/taobao/ma/qr/parser/MaQrParSer;

    invoke-direct {v0}, Lcom/taobao/ma/qr/parser/MaQrParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    new-instance v0, Lcom/taobao/ma/qr/parser/MaTBAntiFakeParSer;

    invoke-direct {v0}, Lcom/taobao/ma/qr/parser/MaTBAntiFakeParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    new-instance v0, Lcom/taobao/ma/qr/parser/Ma4GParSer;

    invoke-direct {v0}, Lcom/taobao/ma/qr/parser/Ma4GParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    new-instance v0, Lcom/taobao/ma/qr/parser/MaDMParSer;

    invoke-direct {v0}, Lcom/taobao/ma/qr/parser/MaDMParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    new-instance v0, Lcom/taobao/ma/qr/parser/MaGen3ParSer;

    invoke-direct {v0}, Lcom/taobao/ma/qr/parser/MaGen3ParSer;-><init>()V

    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alibaba/imagesearch/utils/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/utils/c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 4

    const-string v0, "2014_%s_%s@baichuan_android_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "albbTradeConfig"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "3.2.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
