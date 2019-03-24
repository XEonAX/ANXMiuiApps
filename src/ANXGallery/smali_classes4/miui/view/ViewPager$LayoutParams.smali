.class public Lmiui/view/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I

.field public isDecor:Z

.field public needsMeasure:Z

.field public widthFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2656
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2647
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 2657
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2660
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2647
    const/4 v0, 0x0

    iput v0, p0, Lmiui/view/ViewPager$LayoutParams;->widthFactor:F

    .line 2662
    invoke-static {}, Lmiui/view/ViewPager;->ea()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2663
    const/4 p2, 0x0

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lmiui/view/ViewPager$LayoutParams;->gravity:I

    .line 2664
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2665
    return-void
.end method
