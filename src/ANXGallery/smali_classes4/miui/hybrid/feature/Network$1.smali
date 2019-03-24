.class Lmiui/hybrid/feature/Network$1;
.super Lmiui/hybrid/LifecycleListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/feature/Network;->b(Lmiui/hybrid/Request;)Lmiui/hybrid/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zR:Lmiui/hybrid/feature/Network;

.field final synthetic zj:Lmiui/hybrid/NativeInterface;


# direct methods
.method constructor <init>(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lmiui/hybrid/feature/Network$1;->zR:Lmiui/hybrid/feature/Network;

    iput-object p2, p0, Lmiui/hybrid/feature/Network$1;->zj:Lmiui/hybrid/NativeInterface;

    invoke-direct {p0}, Lmiui/hybrid/LifecycleListener;-><init>()V

    return-void
.end method

.method private unregister()V
    .locals 3

    .line 156
    iget-object v0, p0, Lmiui/hybrid/feature/Network$1;->zR:Lmiui/hybrid/feature/Network;

    iget-object v1, p0, Lmiui/hybrid/feature/Network$1;->zj:Lmiui/hybrid/NativeInterface;

    invoke-static {v0, v1}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;Lmiui/hybrid/NativeInterface;)V

    .line 157
    iget-object v0, p0, Lmiui/hybrid/feature/Network$1;->zR:Lmiui/hybrid/feature/Network;

    invoke-static {v0}, Lmiui/hybrid/feature/Network;->a(Lmiui/hybrid/feature/Network;)Lmiui/hybrid/Callback;

    move-result-object v0

    new-instance v1, Lmiui/hybrid/Response;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/Callback;->callback(Lmiui/hybrid/Response;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    .line 153
    return-void
.end method

.method public onPageChange()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lmiui/hybrid/feature/Network$1;->unregister()V

    .line 148
    return-void
.end method
