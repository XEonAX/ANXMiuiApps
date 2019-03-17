.class public Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;
.super Ljava/lang/Object;


# instance fields
.field public isSuccess:Z

.field public resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    iput v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    return-void
.end method


# virtual methods
.method public isFailByNoApp()Z
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    const/16 v1, 0x136

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlibcNavResult{isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcNavResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
