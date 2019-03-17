.class public Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;
.super Ljava/lang/Object;
.source "TranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationPair"
.end annotation


# instance fields
.field public mDest:Ljava/lang/String;

.field public mDestEntry:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public mSourceEntry:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_0

    .line 61
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v1

    .line 57
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    if-eqz v0, :cond_2

    .line 58
    iget-object v3, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    iget-object v0, v0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    check-cast p1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v1, v2

    .line 61
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mSource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationPair;->mDest:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 68
    return v0
.end method
