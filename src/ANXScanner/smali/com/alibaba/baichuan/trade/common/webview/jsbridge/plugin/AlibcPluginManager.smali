.class public Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;
    }
.end annotation


# static fields
.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlugin(Ljava/lang/String;Landroid/content/Context;Landroid/webkit/WebView;)Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->a()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->b()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    const-class v2, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->paramObj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->paramObj:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->initialize(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AlibcPluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create plugin error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "AlibcPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create plugin failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/baichuan/trade/common/utils/AlibcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;->initialize(Landroid/content/Context;Landroid/webkit/WebView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public static registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcApiPlugin;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static unregisterPlugin(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
