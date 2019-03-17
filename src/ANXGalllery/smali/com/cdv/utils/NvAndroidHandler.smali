.class public Lcom/cdv/utils/NvAndroidHandler;
.super Ljava/lang/Object;
.source "NvAndroidHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private m_handler:Landroid/os/Handler;

.field private m_id:I


# direct methods
.method private constructor <init>(ILandroid/os/Looper;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_id:I

    .line 30
    if-nez p2, :cond_0

    .line 31
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    iput p1, p0, Lcom/cdv/utils/NvAndroidHandler;->m_id:I

    .line 39
    return-void

    .line 33
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "NvAndroidHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native notifyHandlerMessage(IIII)V
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    .line 59
    iget v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_id:I

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/cdv/utils/NvAndroidHandler;->notifyHandlerMessage(IIII)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public sendMessage(III)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/cdv/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 50
    iput p1, v1, Landroid/os/Message;->what:I

    .line 51
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 52
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 53
    iget-object v0, p0, Lcom/cdv/utils/NvAndroidHandler;->m_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method
