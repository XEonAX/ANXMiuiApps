.class public Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;
.super Ljava/lang/Object;
.source "DownloadFailReason.java"


# instance fields
.field private final mCause:Ljava/lang/Throwable;

.field private final mCode:Lcom/miui/gallery/error/core/ErrorCode;

.field private final mDesc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/error/core/ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Lcom/miui/gallery/error/core/ErrorCode;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCode:Lcom/miui/gallery/error/core/ErrorCode;

    .line 14
    iput-object p2, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mDesc:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCause:Ljava/lang/Throwable;

    .line 16
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getCode()Lcom/miui/gallery/error/core/ErrorCode;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCode:Lcom/miui/gallery/error/core/ErrorCode;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCode:Lcom/miui/gallery/error/core/ErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/sdk/download/assist/DownloadFailReason;->mCause:Ljava/lang/Throwable;

    .line 34
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
