.class public Lcom/miui/internal/hybrid/webkit/SslErrorHandler;
.super Lmiui/hybrid/SslErrorHandler;
.source "SourceFile"


# instance fields
.field private gk:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmiui/hybrid/SslErrorHandler;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->gk:Landroid/webkit/SslErrorHandler;

    .line 13
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->gk:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 23
    return-void
.end method

.method public proceed()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/miui/internal/hybrid/webkit/SslErrorHandler;->gk:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 18
    return-void
.end method
