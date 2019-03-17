.class public Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;->interceptor(Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registInterceptor(Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus$IUrlInterceptor;)V
    .locals 3

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;

    monitor-enter v1

    if-nez p0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/AlibcUrlBus;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
