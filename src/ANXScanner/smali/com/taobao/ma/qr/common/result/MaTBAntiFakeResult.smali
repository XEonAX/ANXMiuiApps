.class public Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;
.super Lcom/taobao/ma/common/result/MaResult;
.source "MaTBAntiFakeResult.java"


# instance fields
.field private hiddenData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "hiddenData"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 17
    iput-object p3, p0, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;->hiddenData:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public exist()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;->hiddenData:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHiddenData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/ma/qr/common/result/MaTBAntiFakeResult;->hiddenData:Ljava/lang/String;

    return-object v0
.end method
