.class public Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;
.super Ljava/lang/Object;
.source "LoadingLayoutProxy.java"

# interfaces
.implements Lcom/miui/gallery/hybrid/pulltorefresh/ILoadingLayout;


# instance fields
.field private final mLoadingLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    .line 14
    return-void
.end method


# virtual methods
.method public addLayout(Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 34
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    .end local v0    # "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 41
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    .end local v0    # "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 55
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    .end local v0    # "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 48
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    .end local v0    # "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;

    .line 62
    .local v0, "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    .end local v0    # "layout":Lcom/miui/gallery/hybrid/pulltorefresh/LoadingLayout;
    :cond_0
    return-void
.end method
