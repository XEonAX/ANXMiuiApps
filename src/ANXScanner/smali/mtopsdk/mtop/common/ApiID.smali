.class public Lmtopsdk/mtop/common/ApiID;
.super Ljava/lang/Object;
.source "ApiID.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ApiID"


# instance fields
.field private volatile call:Lmtopsdk/network/Call;

.field private mtopProxy:Lmtopsdk/mtop/MtopProxy;


# direct methods
.method public constructor <init>(Lmtopsdk/network/Call;Lmtopsdk/mtop/MtopProxy;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    .line 29
    iput-object p2, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 30
    return-void
.end method


# virtual methods
.method public cancelApiCall()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "mtopsdk.ApiID"

    const-string v1, "Future is null,cancel apiCall failed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    invoke-interface {v0}, Lmtopsdk/network/Call;->cancel()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCall()Lmtopsdk/network/Call;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    return-object v0
.end method

.method public getMtopProxy()Lmtopsdk/mtop/MtopProxy;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    return-object v0
.end method

.method public retryApiCall()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/common/ApiID;->retryApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public retryApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_0
.end method

.method public setCall(Lmtopsdk/network/Call;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    .line 46
    return-void
.end method

.method public setMtopProxy(Lmtopsdk/mtop/MtopProxy;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApiID ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/ApiID;->call:Lmtopsdk/network/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", mtopProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
