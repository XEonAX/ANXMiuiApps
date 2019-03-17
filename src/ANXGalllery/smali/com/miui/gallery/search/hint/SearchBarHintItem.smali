.class public Lcom/miui/gallery/search/hint/SearchBarHintItem;
.super Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;
.source "SearchBarHintItem.java"


# instance fields
.field private mHintText:Ljava/lang/String;

.field private mQueryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hintText"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/hint/SearchBarHintItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/String;
    .param p2, "queryText"    # Ljava/lang/String;
    .param p3, "displayDuration"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mHintText:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mQueryText:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p3}, Lcom/miui/gallery/search/hint/SearchBarHintItem;->setDisplayDuration(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mHintText:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mHintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",queryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/hint/SearchBarHintItem;->mQueryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
