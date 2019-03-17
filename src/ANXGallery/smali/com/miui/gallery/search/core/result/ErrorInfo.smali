.class public Lcom/miui/gallery/search/core/result/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field private mErrorData:Ljava/lang/Object;

.field private mErrorStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "errorStatus"    # I

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/core/result/ErrorInfo;-><init>(ILjava/lang/Object;)V

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "errorStatus"    # I
    .param p2, "errorData"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorStatus:I

    .line 16
    iput p1, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorStatus:I

    .line 17
    iput-object p2, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorData:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public getErrorStatus()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/core/result/ErrorInfo;->mErrorData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
