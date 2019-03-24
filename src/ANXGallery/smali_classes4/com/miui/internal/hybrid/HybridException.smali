.class public Lcom/miui/internal/hybrid/HybridException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mResponse:Lmiui/hybrid/Response;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, v1}, Lmiui/hybrid/Response;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 26
    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Lmiui/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lmiui/hybrid/Response;

    invoke-direct {v0, v1, p1}, Lmiui/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    .line 23
    return-void
.end method

.method public constructor <init>(Lmiui/hybrid/Response;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lmiui/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    .line 33
    return-void
.end method


# virtual methods
.method public getResponse()Lmiui/hybrid/Response;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridException;->mResponse:Lmiui/hybrid/Response;

    return-object v0
.end method
