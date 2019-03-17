.class Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/plugin/AlibcPluginManager$a;->b:Ljava/lang/ClassLoader;

    return-object v0
.end method
