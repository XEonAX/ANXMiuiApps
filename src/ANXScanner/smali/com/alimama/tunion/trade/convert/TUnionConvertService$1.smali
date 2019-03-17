.class Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;
.super Ljava/lang/Object;
.source "TUnionConvertService.java"

# interfaces
.implements Lcom/alimama/tunion/trade/net/ITUnionNetReqCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimama/tunion/trade/convert/TUnionConvertService;->convert(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/base/ITUnionWebView;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionMediaParams;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

.field final synthetic c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

.field final synthetic d:Lcom/alimama/tunion/trade/convert/TUnionConvertService;


# direct methods
.method constructor <init>(Lcom/alimama/tunion/trade/convert/TUnionConvertService;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->d:Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    iput-object p2, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->b:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    iput-object p4, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 166
    invoke-static {p2}, Lcom/alimama/tunion/utils/TUnionUTUtils$Convert;->failed(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

    new-instance v1, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;

    iget-object v2, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->b:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    iget-object v3, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;-><init>(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;->onResult(Lcom/alimama/tunion/trade/convert/TUnionConvertResult;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    if-eqz p2, :cond_2

    .line 145
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->a:Ljava/lang/String;

    .line 152
    const-string v1, "Server Response is non-empty, but no url"

    invoke-static {v1}, Lcom/alimama/tunion/utils/TUnionUTUtils$Config;->failed(Ljava/lang/String;)V

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->c:Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;

    new-instance v2, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;

    iget-object v3, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->b:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    invoke-direct {v2, v3, v0}, Lcom/alimama/tunion/trade/convert/TUnionConvertResult;-><init>(Lcom/alimama/tunion/trade/convert/TUnionJumpType;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alimama/tunion/trade/convert/TUnionConvertCallback;->onResult(Lcom/alimama/tunion/trade/convert/TUnionConvertResult;)V

    .line 161
    :cond_1
    return-void

    .line 147
    :cond_2
    const-string v1, "Server Response is empty"

    invoke-static {v1}, Lcom/alimama/tunion/utils/TUnionUTUtils$Config;->failed(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->d:Lcom/alimama/tunion/trade/convert/TUnionConvertService;

    iget-object v2, p0, Lcom/alimama/tunion/trade/convert/TUnionConvertService$1;->b:Lcom/alimama/tunion/trade/convert/TUnionJumpType;

    invoke-static {v1, v0, v2}, Lcom/alimama/tunion/trade/convert/TUnionConvertService;->a(Lcom/alimama/tunion/trade/convert/TUnionConvertService;Ljava/lang/String;Lcom/alimama/tunion/trade/convert/TUnionJumpType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
