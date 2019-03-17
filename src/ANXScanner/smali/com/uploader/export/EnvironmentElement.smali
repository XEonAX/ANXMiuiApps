.class public Lcom/uploader/export/EnvironmentElement;
.super Ljava/lang/Object;
.source "EnvironmentElement.java"


# instance fields
.field public final appKey:Ljava/lang/String;

.field public final authCode:Ljava/lang/String;

.field public final environment:I

.field public final host:Ljava/lang/String;

.field public final ipAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "environment"    # I
    .param p2, "appKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "ipAddress"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/uploader/export/EnvironmentElement;->environment:I

    .line 48
    iput-object p2, p0, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/uploader/export/EnvironmentElement;->host:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/uploader/export/EnvironmentElement;->ipAddress:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/uploader/export/EnvironmentElement;->authCode:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # I
    .param p2, "appKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "host"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "ipAddress"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "authCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/uploader/export/EnvironmentElement;->environment:I

    .line 33
    iput-object p2, p0, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/uploader/export/EnvironmentElement;->host:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/uploader/export/EnvironmentElement;->ipAddress:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/uploader/export/EnvironmentElement;->authCode:Ljava/lang/String;

    .line 37
    return-void
.end method
