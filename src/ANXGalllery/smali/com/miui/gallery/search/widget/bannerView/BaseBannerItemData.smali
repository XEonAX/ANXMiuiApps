.class public abstract Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;
.super Ljava/lang/Object;
.source "BaseBannerItemData.java"


# instance fields
.field private mDisplayDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->mDisplayDuration:I

    return-void
.end method


# virtual methods
.method public getDisplayDuration()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->mDisplayDuration:I

    return v0
.end method

.method public setDisplayDuration(I)V
    .locals 0
    .param p1, "displayDuration"    # I

    .prologue
    .line 10
    if-lez p1, :cond_0

    .line 11
    iput p1, p0, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->mDisplayDuration:I

    .line 13
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;->mDisplayDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
