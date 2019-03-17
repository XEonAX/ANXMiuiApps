.class public Lcom/alibaba/baichuan/trade/common/webview/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/a/a;->a:Ljava/lang/String;

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/a/a;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    const-string v0, "AliBCNetWork"

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/a/c;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    const-string v0, "AliBCUserTrack"

    const-class v1, Lcom/alibaba/baichuan/trade/common/webview/a/e;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method
