.class Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;
.super Ljava/lang/Object;
.source "DefaultCallImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/DefaultCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncCallTask"
.end annotation


# instance fields
.field callback:Lmtopsdk/network/NetworkCallback;

.field request:Lmtopsdk/network/domain/Request;

.field final synthetic this$0:Lmtopsdk/network/DefaultCallImpl;


# direct methods
.method public constructor <init>(Lmtopsdk/network/DefaultCallImpl;Lmtopsdk/network/domain/Request;Lmtopsdk/network/NetworkCallback;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->request:Lmtopsdk/network/domain/Request;

    .line 275
    iput-object p3, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    .line 276
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    iget-boolean v0, v0, Lmtopsdk/network/DefaultCallImpl;->canceled:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "mtopsdk.DefaultCallImpl"

    const-string v1, "call task is canceled."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-interface {v0, v1}, Lmtopsdk/network/NetworkCallback;->onCancel(Lmtopsdk/network/Call;)V

    .line 307
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-virtual {v0}, Lmtopsdk/network/DefaultCallImpl;->execute()Lmtopsdk/network/domain/Response;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 300
    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lmtopsdk/network/NetworkCallback;->onFailure(Lmtopsdk/network/Call;Ljava/lang/Exception;)V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-interface {v0, v1}, Lmtopsdk/network/NetworkCallback;->onCancel(Lmtopsdk/network/Call;)V

    goto :goto_0

    .line 292
    :catch_1
    move-exception v0

    iget-object v0, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-interface {v0, v1}, Lmtopsdk/network/NetworkCallback;->onCancel(Lmtopsdk/network/Call;)V

    goto :goto_0

    .line 294
    :catch_2
    move-exception v0

    .line 295
    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v2, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-interface {v1, v2, v0}, Lmtopsdk/network/NetworkCallback;->onFailure(Lmtopsdk/network/Call;Ljava/lang/Exception;)V

    .line 296
    const-string v1, "mtopsdk.DefaultCallImpl"

    const-string v2, "do call.execute failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v1, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->callback:Lmtopsdk/network/NetworkCallback;

    iget-object v2, p0, Lmtopsdk/network/DefaultCallImpl$AsyncCallTask;->this$0:Lmtopsdk/network/DefaultCallImpl;

    invoke-interface {v1, v2, v0}, Lmtopsdk/network/NetworkCallback;->onResponse(Lmtopsdk/network/Call;Lmtopsdk/network/domain/Response;)V

    goto :goto_0
.end method
