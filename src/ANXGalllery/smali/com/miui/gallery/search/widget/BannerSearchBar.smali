.class public Lcom/miui/gallery/search/widget/BannerSearchBar;
.super Landroid/widget/LinearLayout;
.source "BannerSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;
    }
.end annotation


# instance fields
.field private mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

.field private mOnHintClickListener:Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gallery/search/widget/BannerSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gallery/search/widget/BannerSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/gallery/search/widget/BannerSearchBar;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getLooperController()Lcom/miui/gallery/search/widget/bannerView/ILoopController;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No looper controller found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040036

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f1200ee

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/search/widget/bannerView/BannerView;

    iput-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    .line 49
    invoke-virtual {p0, p0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mOnHintClickListener:Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mOnHintClickListener:Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;

    .line 56
    invoke-virtual {p0}, Lcom/miui/gallery/search/widget/BannerSearchBar;->getLooperController()Lcom/miui/gallery/search/widget/bannerView/ILoopController;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/gallery/search/widget/bannerView/ILoopController;->getCurrentPosition()I

    move-result v1

    .line 55
    invoke-interface {v0, p0, v1}, Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;->onHintClicked(Lcom/miui/gallery/search/widget/BannerSearchBar;I)V

    .line 58
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setHintAdapter(Lcom/miui/gallery/search/hint/SearchBarHintAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/miui/gallery/search/hint/SearchBarHintAdapter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No banner view found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mBannerView:Lcom/miui/gallery/search/widget/bannerView/BannerView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/widget/bannerView/BannerView;->setAdapter(Lcom/miui/gallery/search/widget/bannerView/BaseBannerAdapter;)V

    .line 65
    return-void
.end method

.method public setOnHintClickListener(Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;)V
    .locals 0
    .param p1, "onHintClickListener"    # Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/gallery/search/widget/BannerSearchBar;->mOnHintClickListener:Lcom/miui/gallery/search/widget/BannerSearchBar$OnHintClickListener;

    .line 43
    return-void
.end method
