.class public Lcom/ali/auth/third/mtop/rpc/a;
.super Ljava/lang/Object;
.source "MTOPWrapper.java"


# static fields
.field private static a:Lcom/ali/auth/third/mtop/rpc/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ali/auth/third/mtop/rpc/a;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x196

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-nez v0, :cond_b

    .line 102
    :cond_0
    if-eqz p1, :cond_a

    .line 103
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isIllegelSign()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 119
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_6
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v1, 0x197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_7
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_8
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    new-instance v0, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/mtop/rpc/a;->b(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 134
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/mtop/rpc/a;->b(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/ali/auth/third/mtop/rpc/a;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/ali/auth/third/mtop/rpc/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/auth/third/mtop/rpc/a;->a:Lcom/ali/auth/third/mtop/rpc/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/auth/third/mtop/rpc/a;

    invoke-direct {v0}, Lcom/ali/auth/third/mtop/rpc/a;-><init>()V

    sput-object v0, Lcom/ali/auth/third/mtop/rpc/a;->a:Lcom/ali/auth/third/mtop/rpc/a;

    .line 49
    :cond_0
    sget-object v0, Lcom/ali/auth/third/mtop/rpc/a;->a:Lcom/ali/auth/third/mtop/rpc/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ali/auth/third/mtop/rpc/a;->c(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/ali/auth/third/core/model/RpcRequest;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 86
    iget-object v1, p1, Lcom/ali/auth/third/core/model/RpcRequest;->target:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 87
    iget-object v1, p1, Lcom/ali/auth/third/core/model/RpcRequest;->version:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 89
    invoke-virtual {v2, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 90
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move v1, v0

    .line 91
    :goto_0
    iget-object v0, p1, Lcom/ali/auth/third/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 92
    iget-object v0, p1, Lcom/ali/auth/third/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p1, Lcom/ali/auth/third/core/model/RpcRequest;->paramNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p1, Lcom/ali/auth/third/core/model/RpcRequest;->paramValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 97
    return-object v2
.end method

.method private c(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/ali/auth/third/core/model/RpcResponse;

    invoke-direct {v0}, Lcom/ali/auth/third/core/model/RpcResponse;-><init>()V

    .line 154
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 157
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/ali/auth/third/core/model/RpcResponse;->code:I

    .line 161
    const-string v2, "codeGroup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/auth/third/core/model/RpcResponse;->codeGroup:Ljava/lang/String;

    .line 162
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/auth/third/core/model/RpcResponse;->message:Ljava/lang/String;

    .line 163
    const-string v2, "actionType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ali/auth/third/core/model/RpcResponse;->actionType:Ljava/lang/String;

    .line 164
    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/ali/auth/third/core/model/RpcResponse;->success:Z

    .line 165
    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ali/auth/third/core/util/JSONUtils;->parseStringValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ali/auth/third/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    .line 170
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ali/auth/third/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Ljava/lang/String;)Lcom/ali/auth/third/core/model/RpcResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ali/auth/third/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/auth/third/mtop/rpc/a;->b(Lcom/ali/auth/third/core/model/RpcRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->context:Landroid/content/Context;

    invoke-static {v2}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v2

    sget-object v3, Lcom/ali/auth/third/core/MemberSDK;->ttid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v1

    .line 65
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v1, p3}, Lmtopsdk/mtop/intf/MtopBuilder;->setReqUserId(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 68
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/intf/MtopBuilder;->retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 69
    invoke-virtual {v1}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    :try_start_1
    const-string v3, "login.MTOPWrapperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive MtopResponse = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "  null"

    :goto_0
    invoke-static {v3, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :goto_1
    if-eqz v2, :cond_2

    .line 76
    invoke-direct {p0, v2, p2}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    .line 80
    :goto_2
    return-object v0

    .line 70
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 72
    :goto_3
    const-string v3, "login.MTOPWrapperImpl"

    const-string v4, "MtopResponse error"

    invoke-static {v3, v4, v1}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 79
    :cond_2
    const-string v1, "login.MTOPWrapperImpl"

    const-string v2, "MtopResponse response=null"

    invoke-static {v1, v2}, Lcom/ali/auth/third/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public a(Lcom/ali/auth/third/core/model/RpcRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/ali/auth/third/core/model/LoginReturnData;

    invoke-virtual {p0, p1, v0}, Lcom/ali/auth/third/mtop/rpc/a;->a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;)Lcom/ali/auth/third/core/model/RpcResponse;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ali/auth/third/core/model/RpcRequest;Ljava/lang/Class;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ali/auth/third/core/model/RpcResponse",
            "<*>;>(",
            "Lcom/ali/auth/third/core/model/RpcRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ali/auth/third/mtop/rpc/a;->b(Lcom/ali/auth/third/core/model/RpcRequest;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/MemberSDK;->ttid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RemoteBusiness;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/ali/auth/third/mtop/rpc/a$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/ali/auth/third/mtop/rpc/a$1;-><init>(Lcom/ali/auth/third/mtop/rpc/a;Lcom/ali/auth/third/core/model/RpcRequestCallbackWithCode;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->registeListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 207
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->startRequest()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0
.end method
