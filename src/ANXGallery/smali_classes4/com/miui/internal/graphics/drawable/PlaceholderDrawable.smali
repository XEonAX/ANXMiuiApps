.class public Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private ep:Landroid/graphics/Rect;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 32
    iput v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 83
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ep:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ep:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 43
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 44
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    .line 46
    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    if-le v3, v0, :cond_2

    .line 51
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 57
    const-string v3, "size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    sget-object v2, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 59
    sget v3, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_width:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mWidth:I

    .line 61
    sget v3, Lcom/miui/internal/R$styleable;->PlaceholderDrawableSize_android_height:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->mHeight:I

    .line 63
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 64
    :cond_3
    const-string v3, "padding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    sget-object v2, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    sget v4, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_left:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v6, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_top:I

    .line 68
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    sget v7, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_right:I

    .line 70
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    sget v8, Lcom/miui/internal/R$styleable;->PlaceholderDrawablePadding_android_bottom:I

    .line 72
    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-direct {v3, v4, v6, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;->ep:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 76
    :cond_4
    const-string v3, "drawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad element under <placeholder>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_1
    goto/16 :goto_0

    .line 79
    :cond_5
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 87
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 91
    return-void
.end method
