.class public Lmiui/hybrid/Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fd:Lmiui/hybrid/PageContext;

.field private fk:Ljava/lang/String;

.field private fy:Lcom/miui/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/PageContext;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/hybrid/Callback;->fy:Lcom/miui/internal/hybrid/HybridManager;

    .line 29
    iput-object p2, p0, Lmiui/hybrid/Callback;->fd:Lmiui/hybrid/PageContext;

    .line 30
    iput-object p3, p0, Lmiui/hybrid/Callback;->fk:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public callback(Lmiui/hybrid/Response;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lmiui/hybrid/Callback;->fy:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lmiui/hybrid/Callback;->fd:Lmiui/hybrid/PageContext;

    iget-object v2, p0, Lmiui/hybrid/Callback;->fk:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->callback(Lmiui/hybrid/Response;Lmiui/hybrid/PageContext;Ljava/lang/String;)V

    .line 40
    return-void
.end method
