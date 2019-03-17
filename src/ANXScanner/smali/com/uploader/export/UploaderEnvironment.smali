.class public abstract Lcom/uploader/export/UploaderEnvironment;
.super Ljava/lang/Object;
.source "UploaderEnvironment.java"

# interfaces
.implements Lcom/uploader/export/IUploaderEnvironment;


# instance fields
.field private final instanceType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "instanceType"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/uploader/export/UploaderEnvironment;->instanceType:I

    .line 15
    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/uploader/export/UploaderEnvironment;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v0

    iget-object v0, v0, Lcom/uploader/export/EnvironmentElement;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentElement()Lcom/uploader/export/EnvironmentElement;
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/uploader/export/UploaderEnvironment;->getEnvironment()I

    move-result v0

    invoke-virtual {p0}, Lcom/uploader/export/UploaderEnvironment;->getInstanceType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/uploader/export/UploaderGlobal;->getElement(II)Lcom/uploader/export/EnvironmentElement;

    move-result-object v0

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/uploader/export/UploaderEnvironment;->getCurrentElement()Lcom/uploader/export/EnvironmentElement;

    move-result-object v0

    iget-object v0, v0, Lcom/uploader/export/EnvironmentElement;->host:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEnvironment()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final getInstanceType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/uploader/export/UploaderEnvironment;->instanceType:I

    return v0
.end method
