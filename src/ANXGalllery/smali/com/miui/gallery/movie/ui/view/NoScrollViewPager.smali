.class public Lcom/miui/gallery/movie/ui/view/NoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private mNoScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/NoScrollViewPager;->mNoScroll:Z

    .line 13
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/NoScrollViewPager;->mNoScroll:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/miui/gallery/movie/ui/view/NoScrollViewPager;->mNoScroll:Z

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNoScroll(Z)V
    .locals 0
    .param p1, "noScroll"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/gallery/movie/ui/view/NoScrollViewPager;->mNoScroll:Z

    .line 35
    return-void
.end method
