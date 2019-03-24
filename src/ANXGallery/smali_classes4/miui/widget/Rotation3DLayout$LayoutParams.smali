.class public Lmiui/widget/Rotation3DLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/Rotation3DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public zdistance:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 475
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 476
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 479
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 480
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 483
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 484
    iput p4, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 485
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 468
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 469
    sget-object v0, Lcom/miui/internal/R$styleable;->Rotation3DLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 470
    sget p2, Lcom/miui/internal/R$styleable;->Rotation3DLayout_Layout_layout_zdistance:I

    iget v0, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 471
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 488
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 496
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 466
    const/4 p1, 0x0

    iput p1, p0, Lmiui/widget/Rotation3DLayout$LayoutParams;->zdistance:I

    .line 497
    return-void
.end method
