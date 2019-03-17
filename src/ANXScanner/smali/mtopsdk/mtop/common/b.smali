.class final Lmtopsdk/mtop/common/b;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lmtopsdk/network/domain/Response;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lmtopsdk/mtop/common/a;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/common/a;Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmtopsdk/mtop/common/b;->c:Lmtopsdk/mtop/common/a;

    iput-object p2, p0, Lmtopsdk/mtop/common/b;->a:Lmtopsdk/network/domain/Response;

    iput-object p3, p0, Lmtopsdk/mtop/common/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/common/b;->c:Lmtopsdk/mtop/common/a;

    iget-object v0, v0, Lmtopsdk/mtop/common/a;->b:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lmtopsdk/mtop/common/b;->c:Lmtopsdk/mtop/common/a;

    iget-object v0, v0, Lmtopsdk/mtop/common/a;->b:Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;

    new-instance v1, Lmtopsdk/mtop/common/MtopHeaderEvent;

    iget-object v2, p0, Lmtopsdk/mtop/common/b;->a:Lmtopsdk/network/domain/Response;

    invoke-virtual {v2}, Lmtopsdk/network/domain/Response;->code()I

    move-result v2

    iget-object v3, p0, Lmtopsdk/mtop/common/b;->a:Lmtopsdk/network/domain/Response;

    invoke-virtual {v3}, Lmtopsdk/network/domain/Response;->headers()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmtopsdk/mtop/common/MtopHeaderEvent;-><init>(ILjava/util/Map;)V

    iget-object v2, p0, Lmtopsdk/mtop/common/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopHeaderListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "mtopsdk.NetworkListenerAdapter"

    const-string v2, "onHeader failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
