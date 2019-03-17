.class final Lcom/xiaomi/scanner/util/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/HttpUtils;->asyncGetFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/xiaomi/scanner/util/HttpUtils$2;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 311
    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/scanner/util/HttpUtils$2;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 312
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/util/HttpUtils$2;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/scanner/util/HttpUtils$2;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    goto :goto_0
.end method
