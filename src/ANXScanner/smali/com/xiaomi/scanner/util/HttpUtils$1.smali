.class final Lcom/xiaomi/scanner/util/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/HttpUtils;->asyncPostFromServer(Ljava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;[BI[Ljava/lang/Object;)V
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
    .line 201
    iput-object p1, p0, Lcom/xiaomi/scanner/util/HttpUtils$1;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 204
    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/scanner/util/HttpUtils$1;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 205
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail -1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    return-void

    .line 205
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "resultJson":Ljava/lang/String;
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/scanner/util/HttpUtils$1;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v1, v0, v2}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 217
    .end local v0    # "resultJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/scanner/util/HttpUtils$1;->val$callback:Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;

    invoke-static {v1, v2, v3}, Lcom/xiaomi/scanner/util/HttpUtils;->access$000(ILjava/lang/String;Lcom/xiaomi/scanner/util/HttpUtils$ResponseCallback;)V

    .line 215
    invoke-static {}, Lcom/xiaomi/scanner/util/HttpUtils;->access$100()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
