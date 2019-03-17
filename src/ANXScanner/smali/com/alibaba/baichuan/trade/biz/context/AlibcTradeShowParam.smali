.class public Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

.field private c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

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

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->h:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->i:Z

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;->Auto:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    const-string v0, "taobao"

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    sget-object v0, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->h:Z

    iput-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->i:Z

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    iput-boolean p2, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    return-void
.end method


# virtual methods
.method public getBackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeOpenFailedMode()Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-object v0
.end method

.method public getOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    return-object v0
.end method

.method public getOriginalOpenType()Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    return v0
.end method

.method public isFailModeH5()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    sget-object v2, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeJumpH5:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v1, v2}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNativeFailedNone()Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->AlibcNativeFailModeNONE:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxyWebview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->i:Z

    return v0
.end method

.method public isShowTitleBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->h:Z

    return v0
.end method

.method public setBackUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->e:Ljava/lang/String;

    return-void
.end method

.method public setClientType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->f:Ljava/lang/String;

    return-void
.end method

.method public setIsClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    return-void
.end method

.method public setNativeOpenFailedMode(Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->d:Lcom/alibaba/baichuan/trade/biz/applink/adapter/AlibcFailModeType;

    return-void
.end method

.method public setOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    return-void
.end method

.method public setOriginalOpenType(Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->b:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    return-void
.end method

.method public setProxyWebview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->i:Z

    return-void
.end method

.method public setShowTitleBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->h:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->g:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlibcShowParams{isClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->c:Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam$OpenType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeShowParam;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
