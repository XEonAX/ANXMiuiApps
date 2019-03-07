.class public Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;
.super Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;
.source "ImageViewAware.java"


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "checkActualViewSize"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;Z)V

    .line 66
    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "value":I
    :try_start_0
    const-class v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 133
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_0

    .line 136
    move v3, v2

    .line 141
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    :goto_0
    return v3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->getHeight()I

    move-result v0

    .line 93
    .local v0, "height":I
    if-gtz v0, :cond_0

    .line 94
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 95
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 96
    const-string v2, "mMaxHeight"

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 99
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return v0
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 106
    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->getWidth()I

    move-result v1

    .line 76
    .local v1, "width":I
    if-gtz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 79
    const-string v2, "mMaxWidth"

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 82
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return v1
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 126
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    return-void
.end method

.method protected setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 118
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 122
    :cond_0
    return-void
.end method
