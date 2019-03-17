.class final Lmtopsdk/xstate/a;
.super Lmtopsdk/common/util/AsyncServiceBinder;
.source "XState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmtopsdk/common/util/AsyncServiceBinder",
        "<",
        "Lmtopsdk/xstate/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lmtopsdk/common/util/AsyncServiceBinder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final afterAsyncBind()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lmtopsdk/xstate/XState;->syncToRemote()V

    .line 41
    return-void
.end method
