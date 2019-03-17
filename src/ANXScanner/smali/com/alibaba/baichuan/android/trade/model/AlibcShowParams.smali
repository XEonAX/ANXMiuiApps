.class public Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field private c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

.field private d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->a:Z

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->h:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->i:Z

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->Auto:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string v0, "taobao"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/model/OpenType;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->a:Z

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->h:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->i:Z

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    const-string v0, "taobao"

    iput-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-object v0
.end method

.method public getOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-object v0
.end method

.method public getOriginalOpenType()Lcom/alibaba/baichuan/android/trade/model/OpenType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->a:Z

    return v0
.end method

.method public isProxyWebview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->i:Z

    return v0
.end method

.method public isShowTitleBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->h:Z

    return v0
.end method

.method public setBackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->e:Ljava/lang/String;

    return-void
.end method

.method public setClientType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->f:Ljava/lang/String;

    return-void
.end method

.method public setNativeOpenFailedMode(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-void
.end method

.method public setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-void
.end method

.method public setOriginalOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->b:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    return-void
.end method

.method public setPageClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->a:Z

    return-void
.end method

.method public setProxyWebview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->i:Z

    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->h:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->g:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlibcShowParams{isClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->c:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nativeOpenFailedMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowTitleBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isProxyWebview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
