.class final Lmtopsdk/mtop/common/c;
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
    .line 74
    iput-object p1, p0, Lmtopsdk/mtop/common/c;->c:Lmtopsdk/mtop/common/a;

    iput-object p2, p0, Lmtopsdk/mtop/common/c;->a:Lmtopsdk/network/domain/Response;

    iput-object p3, p0, Lmtopsdk/mtop/common/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lmtopsdk/mtop/common/c;->c:Lmtopsdk/mtop/common/a;

    iget-object v1, p0, Lmtopsdk/mtop/common/c;->a:Lmtopsdk/network/domain/Response;

    iget-object v2, p0, Lmtopsdk/mtop/common/c;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/common/a;->a(Lmtopsdk/mtop/common/a;Lmtopsdk/network/domain/Response;Ljava/lang/Object;)V

    .line 78
    return-void
.end method
