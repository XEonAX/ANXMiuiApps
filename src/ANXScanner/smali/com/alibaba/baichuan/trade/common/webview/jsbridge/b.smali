.class Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->c:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    iput-object p2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

    iput-object p3, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->c:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->a:Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;

    iget-object v2, p0, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;->a(Lcom/alibaba/baichuan/trade/common/webview/jsbridge/a;Lcom/alibaba/baichuan/trade/common/webview/jsbridge/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/baichuan/trade/common/webview/jsbridge/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
