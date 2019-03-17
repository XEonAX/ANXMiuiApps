.class public Lcom/miui/gallery/search/resultpage/LocationListFragment;
.super Lcom/miui/gallery/search/resultpage/SearchResultFragment;
.source "LocationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/gallery/search/resultpage/SearchResultFragment;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected getErrorViewAdapter()Lcom/miui/gallery/search/StatusHandleHelper$AbstractErrorViewAdapter;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;

    iget-object v1, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment;->mActivity:Lcom/miui/gallery/activity/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/search/resultpage/LocationListFragment$LocationListErrorViewAdapter;-><init>(Lcom/miui/gallery/search/resultpage/LocationListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/resultpage/LocationListFragment;->mErrorViewAdapter:Lcom/miui/gallery/search/resultpage/SearchResultFragment$ErrorViewAdapter;

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 14
    const v0, 0x7f040131

    return v0
.end method
