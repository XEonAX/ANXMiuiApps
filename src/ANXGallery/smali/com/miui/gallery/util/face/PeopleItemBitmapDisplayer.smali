.class public Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;
.super Ljava/lang/Object;
.source "PeopleItemBitmapDisplayer.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;
    }
.end annotation


# instance fields
.field private mClickable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;->mClickable:Z

    .line 27
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 31
    instance-of v2, p2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 46
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->saveBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    new-instance v3, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;

    iget-boolean v2, p0, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer;->mClickable:Z

    if-eqz v2, :cond_2

    const v2, 0x7f10006c

    .line 43
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    const v4, 0x7f10006e

    .line 44
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0b01d5

    .line 45
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, p1, v2, v4, v5}, Lcom/miui/gallery/util/face/PeopleItemBitmapDisplayer$PressableCircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;F)V

    .line 41
    invoke-interface {p2, v3}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
