.class final Lmtopsdk/xstate/c$a;
.super Lmtopsdk/xstate/a/a$a;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/xstate/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lmtopsdk/xstate/c;


# direct methods
.method public constructor <init>(Lmtopsdk/xstate/c;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmtopsdk/xstate/c$a;->a:Lmtopsdk/xstate/c;

    invoke-direct {p0}, Lmtopsdk/xstate/a/a$a;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lmtopsdk/xstate/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lmtopsdk/xstate/c$a;->a:Lmtopsdk/xstate/c;

    invoke-virtual {v0}, Lmtopsdk/xstate/c;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/b;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1, p2}, Lmtopsdk/xstate/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p1}, Lmtopsdk/xstate/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lmtopsdk/xstate/b;->a()V

    .line 75
    return-void
.end method
