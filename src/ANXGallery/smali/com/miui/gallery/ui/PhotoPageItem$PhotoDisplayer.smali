.class Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;
.super Ljava/lang/Object;
.source "PhotoPageItem.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoDisplayer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/PhotoPageItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/PhotoPageItem$1;

    .prologue
    .line 1873
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageItem$PhotoDisplayer;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p3, "loadedFrom"    # Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .prologue
    .line 1877
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    .line 1878
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 1879
    check-cast v1, Luk/co/senab/photoview/PhotoView;

    .line 1880
    .local v1, "photo":Luk/co/senab/photoview/PhotoView;
    invoke-virtual {v1}, Luk/co/senab/photoview/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1881
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, p1, v3}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1885
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "photo":Luk/co/senab/photoview/PhotoView;
    :goto_1
    return-void

    .line 1881
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "photo":Luk/co/senab/photoview/PhotoView;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1883
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "photo":Luk/co/senab/photoview/PhotoView;
    :cond_1
    const-string v3, "PhotoPageItem"

    const-string v4, "PhotoDisplayer view is null"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
