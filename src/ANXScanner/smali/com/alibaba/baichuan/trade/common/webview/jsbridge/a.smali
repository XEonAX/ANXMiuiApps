.class public Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

.field private static b:Landroid/os/Handler;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;
    .locals 2

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    :cond_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "bchybrid://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    new-instance v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

    invoke-direct {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;-><init>()V

    const/16 v2, 0x3a

    const-string v3, "bchybrid://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const-string v3, "bchybrid://"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->g:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->f:Ljava/lang/String;

    :goto_1
    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->b(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;

    if-eqz v1, :cond_0

    const-string v1, "AlibcJsBridge"

    const-string v2, "call new method execute."

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod: Plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didn\'t found, you should call WVPluginManager.registerPlugin first."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V

    goto :goto_0
.end method

.method private b(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v0, "callMethod-obj:%s method:%s param:%s sid:%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->g:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlibcJsBridge"

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AlibcJsBridge"

    const-string v1, "jsbridge is closed."

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->d:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService$AlibcJSAPIAuthCheck;

    iget-object v2, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v2, v3, v4}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService$AlibcJSAPIAuthCheck;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AlibcJsBridge"

    const-string v1, "preprocessor call fail, callMethod cancel."

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p3, p2, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2

    const-wide/32 v0, 0x1400000

    cmp-long v0, p6, v0

    if-gez v0, :cond_0

    invoke-interface {p10, p6, p7}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p10, p4, p5}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bcNativeCallback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/e;->a(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/e;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v0, "alibc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeCallback failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    if-eqz p4, :cond_0

    const-string v0, "bc_hybrid:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a()Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->e:Z

    if-nez v0, :cond_0

    const-string v0, "AlibcJsBridge"

    const-string v1, "jsbridge is not init."

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "AlibcJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url format error and call canceled. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->a:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;-><init>(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

    if-nez v0, :cond_0

    const-string v0, "AlibcJsBridge"

    const-string v2, "CallMethodContext is null, and do nothing."

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v4, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->a:Landroid/webkit/WebView;

    iget-object v5, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;

    iget-object v5, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "{}"

    :goto_1
    invoke-virtual {v1, v5, v2, v4}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->execute(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AlibcJsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlibcApiPlugin execute failed. method: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(ILcom/alibaba/baichuan/trade/common/webview/jsbridge/c;)V

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;->f:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_NO_METHOD:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {v4, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_NO_PERMISSION:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {v4, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v3

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;->RET_CLOSED:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;

    invoke-virtual {v4, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsCallbackContext;->error(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsResult;)V

    move v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
