.class public Lcom/miui/gallery/compat/interpolator/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"


# direct methods
.method public static getPathInterpolator(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    .prologue
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0
.end method
