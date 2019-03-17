.class public Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService$AlibcJSAPIAuthCheck;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService$AlibcJSAPIAuthCheck;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService$AlibcJSAPIAuthCheck;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/AlibcJsBridgeService;->a:Ljava/util/List;

    return-object v0
.end method
