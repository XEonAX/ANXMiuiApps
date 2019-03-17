.class public Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;
.super Ljava/lang/Object;
.source "RoundedCornerRectBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;
    }
.end annotation


# instance fields
.field protected final cornerRadius:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "cornerRadiusPixels"    # I

    .prologue
    const/4 v2, 0x4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;->cornerRadius:[I

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 38
    iget-object v1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;->cornerRadius:[I

    aput p1, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .param p1, "cornerRadiusPixels"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The corner radius array must contains 4 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;->cornerRadius:[I

    .line 52
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 57
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    new-instance v0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;

    iget-object v1, p0, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer;->cornerRadius:[I

    invoke-direct {v0, p1, v1}, Lcom/miui/gallery/search/widget/RoundedCornerRectBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;[I)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 62
    return-void
.end method
