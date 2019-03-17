.class public Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
.super Ljava/lang/Object;


# static fields
.field public static final PID_PREFIX:Ljava/lang/String; = "mm_"


# instance fields
.field public adzoneid:Ljava/lang/String;

.field public extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pid:Ljava/lang/String;

.field public subPid:Ljava/lang/String;

.field public unionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdZoneIdExist()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPidExist()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->isValidPid()Z

    move-result v0

    return v0
.end method

.method public isValidPid()Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    const-string v1, "mm_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdzoneid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->adzoneid:Ljava/lang/String;

    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public setSubPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->subPid:Ljava/lang/String;

    return-object p0
.end method

.method public setUnionId(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;
    .locals 0

    iput-object p1, p0, Lcom/alibaba/baichuan/trade/biz/context/AlibcTradeTaokeParam;->unionId:Ljava/lang/String;

    return-object p0
.end method
