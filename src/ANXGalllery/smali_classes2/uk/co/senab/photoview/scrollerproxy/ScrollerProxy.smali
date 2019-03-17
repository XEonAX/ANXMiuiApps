.class public abstract Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
.super Ljava/lang/Object;
.source "ScrollerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScroller(Landroid/content/Context;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 27
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;-><init>(Landroid/content/Context;)V

    .line 31
    :goto_0
    return-object v0

    .line 28
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 29
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/IcsScroller;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/scrollerproxy/IcsScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Luk/co/senab/photoview/scrollerproxy/ScrollerProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;

    invoke-direct {v0, p0, p1}, Luk/co/senab/photoview/scrollerproxy/PreGingerScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 42
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 40
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/GingerScroller;

    invoke-direct {v0, p0, p1}, Luk/co/senab/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Luk/co/senab/photoview/scrollerproxy/IcsScroller;

    invoke-direct {v0, p0, p1}, Luk/co/senab/photoview/scrollerproxy/IcsScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract computeScrollOffset()Z
.end method

.method public abstract fling(IIIIIIIIII)V
.end method

.method public abstract forceFinished(Z)V
.end method

.method public abstract getCurrX()I
.end method

.method public abstract getCurrY()I
.end method

.method public abstract isFinished()Z
.end method

.method public abstract startScroll(IIIII)V
.end method
