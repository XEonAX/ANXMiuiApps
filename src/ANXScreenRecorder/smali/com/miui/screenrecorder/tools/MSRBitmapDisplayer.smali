.class public Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;
.super Ljava/lang/Object;
.source "MSRBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# instance fields
.field protected final cornerRadius:I

.field protected final margin:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "cornerRadiusPixels"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;-><init>(II)V

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "cornerRadiusPixels"    # I
    .param p2, "marginPixels"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;->cornerRadius:I

    .line 31
    iput p2, p0, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;->margin:I

    .line 32
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 36
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 40
    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;

    iget v1, p0, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/miui/screenrecorder/tools/MSRBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0
.end method
