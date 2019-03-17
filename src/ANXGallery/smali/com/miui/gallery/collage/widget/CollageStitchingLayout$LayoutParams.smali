.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "CollageStitchingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 830
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 831
    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 834
    iput p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->left:I

    .line 835
    iput p2, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->top:I

    .line 836
    iput p3, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->right:I

    .line 837
    iput p4, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$LayoutParams;->bottom:I

    .line 838
    return-void
.end method
