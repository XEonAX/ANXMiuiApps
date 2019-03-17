.class public Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PosterLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/PosterLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public varargs constructor <init>([F)V
    .locals 1
    .param p1, "pos"    # [F

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 119
    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mLeft:F

    .line 120
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mTop:F

    .line 121
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mRight:F

    .line 122
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mBottom:F

    .line 123
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mLeft:F

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mTop:F

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mRight:F

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;

    .prologue
    .line 110
    iget v0, p0, Lcom/miui/gallery/collage/widget/PosterLayout$LayoutParams;->mBottom:F

    return v0
.end method
