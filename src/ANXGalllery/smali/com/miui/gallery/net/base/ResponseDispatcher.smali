.class public Lcom/miui/gallery/net/base/ResponseDispatcher;
.super Ljava/lang/Object;
.source "ResponseDispatcher.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/net/base/ResponseListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/miui/gallery/net/base/ResponseListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/net/base/ResponseDispatcher;)Lcom/miui/gallery/net/base/ResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/net/base/ResponseDispatcher;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    return-object v0
.end method


# virtual methods
.method public varargs onResponse([Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    instance-of v1, v1, Lcom/miui/gallery/net/base/ResponseHandler;

    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/gallery/net/base/ResponseDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/gallery/net/base/ResponseDispatcher$1;-><init>(Lcom/miui/gallery/net/base/ResponseDispatcher;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    invoke-interface {v1, p1}, Lcom/miui/gallery/net/base/ResponseListener;->onResponse([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miui/gallery/net/base/ErrorCode;->DATA_BIND_ERROR:Lcom/miui/gallery/net/base/ErrorCode;

    invoke-virtual {p0, v1, v2, v2}, Lcom/miui/gallery/net/base/ResponseDispatcher;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/miui/gallery/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "respnoseData"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    instance-of v0, v0, Lcom/miui/gallery/net/base/ResponseHandler;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gallery/net/base/ResponseDispatcher$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/net/base/ResponseDispatcher$2;-><init>(Lcom/miui/gallery/net/base/ResponseDispatcher;Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/net/base/ResponseDispatcher;->mOnResponseListener:Lcom/miui/gallery/net/base/ResponseListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/gallery/net/base/ResponseListener;->onResponseError(Lcom/miui/gallery/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
