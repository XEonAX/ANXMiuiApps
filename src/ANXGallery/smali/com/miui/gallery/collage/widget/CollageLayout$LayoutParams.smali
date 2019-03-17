.class public Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "CollageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/collage/ClipType;[F)V
    .locals 1
    .param p1, "clipType"    # Lcom/miui/gallery/collage/ClipType;
    .param p2, "clipArray"    # [F

    .prologue
    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 706
    new-instance v0, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-direct {v0, p1, p2}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;-><init>(Lcom/miui/gallery/collage/ClipType;[F)V

    iput-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    .line 707
    return-void
.end method


# virtual methods
.method contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 710
    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageLayout$LayoutParams;->mImageLocation:Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/render/CollageRender$ImageLocation;->getPathRegion()Landroid/graphics/Region;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method
