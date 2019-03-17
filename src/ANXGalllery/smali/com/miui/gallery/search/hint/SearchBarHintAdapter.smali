.class public Lcom/miui/gallery/search/hint/SearchBarHintAdapter;
.super Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;
.source "SearchBarHintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter",
        "<",
        "Lcom/miui/gallery/search/hint/SearchBarHintItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lcom/miui/gallery/search/hint/SearchBarHintItem;)V
    .locals 0
    .param p1, "data"    # [Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;-><init>([Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;)V

    .line 21
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->getItem(I)Lcom/miui/gallery/search/widget/bannerView/BaseBannerItemData;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/hint/SearchBarHintItem;

    .line 31
    .local v1, "item":Lcom/miui/gallery/search/hint/SearchBarHintItem;
    const v2, 0x7f12026c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "hintText":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/miui/gallery/search/hint/SearchBarHintItem;->getHintText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->getOnUpdateTextListener()Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/search/hint/SearchBarHintAdapter;->getOnUpdateTextListener()Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/miui/gallery/search/hint/SearchBarHintItem;->getHintText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter$OnUpdateTextListener;->onUpdateText(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public getView(Lcom/miui/gallery/search/widget/bannerView/BannerView;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Lcom/miui/gallery/search/widget/bannerView/BannerView;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
