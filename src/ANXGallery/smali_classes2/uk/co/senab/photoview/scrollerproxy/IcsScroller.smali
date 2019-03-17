.class public Luk/co/senab/photoview/scrollerproxy/IcsScroller;
.super Luk/co/senab/photoview/scrollerproxy/GingerScroller;
.source "IcsScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 32
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Luk/co/senab/photoview/scrollerproxy/IcsScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
