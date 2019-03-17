.class public Lcom/xiaomi/scanner/translation/bean/TranslateResult;
.super Ljava/lang/Object;
.source "TranslateResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;,
        Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;,
        Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
    }
.end annotation


# instance fields
.field public resultCode:I

.field public sequenceId:I

.field public translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method


# virtual methods
.method public getDegree()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->orientation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v2, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->orientation:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_1
    const/16 v0, 0xb4

    goto :goto_0

    .line 35
    :sswitch_0
    const-string v3, "Up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :sswitch_1
    const-string v3, "Down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "Left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "Right"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    .line 41
    :pswitch_2
    const/16 v0, 0x5a

    goto :goto_0

    .line 43
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 35
    nop

    :sswitch_data_0
    .sparse-switch
        0xabb -> :sswitch_0
        0x2098c2 -> :sswitch_1
        0x241427 -> :sswitch_2
        0x4b4d1fc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLineInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v0, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->lines:Ljava/util/List;

    .line 54
    :cond_0
    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "lines":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .restart local v0    # "lines":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;>;"
    :cond_1
    return-object v0
.end method

.method public getToLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult;->translationResult:Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$TranslateResultInfo;->to:Ljava/lang/String;

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
