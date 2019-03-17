.class public Lcom/alibaba/baichuan/android/trade/usertracker/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;


# static fields
.field private static g:Lcom/alibaba/baichuan/android/trade/usertracker/a;


# instance fields
.field private a:Z

.field private b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

.field private c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

.field private d:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->e:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->f:Z

    return-void
.end method

.method public static a()Lcom/alibaba/baichuan/android/trade/usertracker/a;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->g:Lcom/alibaba/baichuan/android/trade/usertracker/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/a;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->g:Lcom/alibaba/baichuan/android/trade/usertracker/a;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->g:Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "AlibcTraceWebviewClient"

    const-string v1, "sendH5OpenUsabilityFailure"

    const-string v2, "tradePage is null!"

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlarmUtils;->alarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlibcTraceWebviewClient"

    const-string v1, "tradePage is null"

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Page_H5"

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;->getUsabilityPageType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "12"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()V
    .locals 1

    const-string v0, "Page_H5"

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/adapter/ut/AlibcUserTradeHelper;->sendUseabilitySuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;)V
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    iput-object p2, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->d:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService;->registAliWebViewClient(Lcom/alibaba/baichuan/trade/common/webview/AlibcWebViewService$IAlibcWebViewClient;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->e:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->m()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->d()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->b:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c()V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;->b()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;->d()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    const-string v2, "id"

    const-string v3, "webviewload_monitor_cancel_point"

    invoke-static {v0, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    sget-object v0, Lcom/alibaba/baichuan/trade/common/AlibcTradeCommon;->context:Landroid/app/Application;

    const-string v2, "id"

    const-string v3, "webviewload_monitor_cancel_point"

    invoke-static {v0, v2, v3}, Lcom/alibaba/baichuan/trade/common/utils/ResourceUtils;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->d:Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9875\u9762\u52a0\u8f7d\u5931\u8d25,failingUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a(Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->f:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/android/trade/usertracker/a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;-><init>()V

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;->c()V

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/usertracker/a;->c:Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/usertracker/monitor/d;->a()V

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
