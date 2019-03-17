.class public Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TimeFormatDrawable.java"


# instance fields
.field private mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "model"    # Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v7, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-direct {v7}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;-><init>()V

    iput-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->density:F

    .line 29
    .local v1, "density":F
    iget-object v7, p2, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->extras:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;

    iget-object v0, v7, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;->textColor:Ljava/lang/String;

    .line 30
    .local v0, "color":Ljava/lang/String;
    iget-object v7, p2, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->extras:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;

    iget v5, v7, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;->textSize:F

    .line 31
    .local v5, "size":F
    iget-object v7, p2, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel;->extras:Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;

    iget v3, v7, Lcom/miui/gallery/collage/core/poster/SpecifyDrawableModel$Extras;->letterSpace:F

    .line 33
    .local v3, "letterSpace":F
    iget-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 34
    .local v4, "paint":Landroid/graphics/Paint;
    mul-float v7, v5, v1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    const v7, 0x7f0c010f

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->getDataStringByFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "format":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v7, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setLetterSpace(F)V

    .line 40
    iget-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v7, v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->setText(Ljava/lang/String;)V

    .line 41
    iget-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v7}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText()V

    .line 43
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 44
    .local v6, "textRect":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v7, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getTextRect(Landroid/graphics/RectF;)V

    .line 46
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mWidth:I

    .line 47
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mHeight:I

    .line 48
    return-void
.end method

.method private static getDataStringByFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "formatString"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 91
    .local v2, "locale":Ljava/util/Locale;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 92
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "format":Ljava/lang/String;
    return-object v0

    .line 90
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    .local v0, "bound":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v2, v4

    .line 54
    .local v2, "targetWidth":F
    invoke-virtual {p0}, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v1, v4

    .line 55
    .local v1, "intrinsicWidth":F
    div-float v3, v2, v1

    .line 56
    .local v3, "wholeScale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 58
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 59
    iget-object v4, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mAutoLineLayout:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    invoke-virtual {v4, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/miui/gallery/collage/drawable/TimeFormatDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 71
    return-void
.end method
