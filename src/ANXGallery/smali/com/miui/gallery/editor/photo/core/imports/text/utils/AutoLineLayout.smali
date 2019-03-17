.class public Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;
.super Ljava/lang/Object;
.source "AutoLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;,
        Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;,
        Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    }
.end annotation


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mIsSingleVerticalText:Z

.field private mLineHeight:F

.field private mLineHeightOffset:F

.field private mMaxLines:I

.field private mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

.field private mOriginText:Ljava/lang/String;

.field private final mPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/String;

.field private mTextAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 25
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    .line 28
    sget-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->LEFT:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mTextAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 29
    iput v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeightOffset:F

    .line 37
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    .line 38
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 39
    return-void
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object v0
.end method

.method private cutSingleLineTextByWidth(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;FI)Ljava/util/List;
    .locals 10
    .param p1, "singleLineText"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    .param p2, "maxWidth"    # F
    .param p3, "maxLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;",
            "FI)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 224
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, "lineTextList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;>;"
    if-gtz p3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-object v4

    .line 228
    :cond_1
    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 229
    .local v0, "chars":[C
    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    invoke-direct {v5, p0, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    .line 230
    .local v5, "subSingleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    const/4 v3, 0x0

    .line 231
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v0

    if-gt v2, v7, :cond_0

    .line 233
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    sub-int v8, v2, v3

    invoke-virtual {v7, v0, v3, v8}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 234
    .local v6, "width":F
    cmpl-float v7, v6, p2

    if-lez v7, :cond_4

    .line 235
    add-int/lit8 v1, v2, -0x1

    .line 236
    .local v1, "end":I
    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 237
    :cond_2
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v1, v3

    invoke-virtual {v7, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->count()V

    .line 239
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, p3, :cond_0

    .line 241
    new-instance v5, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    .end local v5    # "subSingleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    invoke-direct {v5, p0, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    .line 242
    .restart local v5    # "subSingleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    move v3, v1

    .line 243
    move v2, v3

    .line 231
    .end local v1    # "end":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_4
    array-length v7, v0

    if-ne v2, v7, :cond_3

    .line 245
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v2, v3

    invoke-virtual {v7, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->count()V

    .line 247
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, p3, :cond_3

    goto :goto_0
.end method

.method private cutText()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    .local v0, "a":J
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 257
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getLineHeight()F

    move-result v8

    iput v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    .line 258
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)V

    .line 259
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v6

    .line 263
    .local v6, "singleLineTextList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;>;"
    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    invoke-direct {v8, p0, v12}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, "start":I
    :goto_1
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 266
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    const/16 v9, 0xa

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v9, v7, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 267
    .local v4, "index":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    .line 268
    .local v5, "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    if-ne v4, v11, :cond_2

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_2
    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->count()V

    .line 270
    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v8

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v9

    invoke-static {v8, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    .line 272
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$1002(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    :cond_1
    if-eq v4, v11, :cond_3

    .line 275
    new-instance v8, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    invoke-direct {v8, p0, v12}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v7, v4, 0x1

    .line 280
    goto :goto_1

    :cond_2
    move v8, v4

    .line 268
    goto :goto_2

    .line 281
    .end local v4    # "index":I
    .end local v5    # "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    :cond_3
    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    iget-object v9, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$902(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 283
    .local v2, "b":J
    const-string v8, "AutoLineLayout"

    const-string v9, "cut text coast time\uff1a %d"

    sub-long v10, v2, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private findSuitableTextSize(FFFFF)V
    .locals 6
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "minSize"    # F
    .param p4, "maxSize"    # F
    .param p5, "sizeSpacing"    # F

    .prologue
    .line 189
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 190
    .local v1, "size":F
    move v2, v1

    .line 191
    .local v2, "temSize":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v0

    .line 192
    .local v0, "height":F
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v3

    .line 193
    .local v3, "width":F
    :goto_0
    cmpg-float v4, v3, p1

    if-gez v4, :cond_0

    cmpg-float v4, v0, p2

    if-gez v4, :cond_0

    cmpg-float v4, v2, p4

    if-gtz v4, :cond_0

    .line 194
    add-float/2addr v2, p5

    .line 195
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 196
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 197
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v4

    div-float v5, v2, v1

    mul-float v3, v4, v5

    goto :goto_0

    .line 199
    :cond_0
    :goto_1
    cmpl-float v4, v3, p1

    if-gtz v4, :cond_1

    cmpl-float v4, v0, p2

    if-lez v4, :cond_2

    :cond_1
    cmpl-float v4, v2, p3

    if-ltz v4, :cond_2

    .line 200
    sub-float/2addr v2, p5

    .line 201
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 202
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 203
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v4

    div-float v5, v2, v1

    mul-float v3, v4, v5

    goto :goto_1

    .line 205
    :cond_2
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 206
    :goto_2
    cmpg-float v4, v3, p1

    if-gez v4, :cond_3

    cmpg-float v4, v0, p2

    if-gez v4, :cond_3

    cmpg-float v4, v2, p4

    if-gtz v4, :cond_3

    .line 207
    add-float/2addr v2, p5

    .line 208
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 209
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 210
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_2

    .line 212
    :cond_3
    :goto_3
    cmpl-float v4, v3, p1

    if-gtz v4, :cond_4

    cmpl-float v4, v0, p2

    if-lez v4, :cond_5

    :cond_4
    cmpl-float v4, v2, p3

    if-ltz v4, :cond_5

    .line 213
    sub-float/2addr v2, p5

    .line 214
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 215
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v4

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v4, v5

    .line 216
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$1000(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_3

    .line 218
    :cond_5
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4, v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    .line 219
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4, v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$902(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    .line 220
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->refreshRect()V

    .line 221
    return-void
.end method

.method private getLineHeight()F
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeightOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method private static getSingleLineText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 348
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 349
    .local v0, "c":C
    if-ne v0, v4, :cond_1

    .line 347
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 354
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 357
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private refreshRect()V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 157
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v1

    .line 158
    .local v1, "width":F
    div-float v2, v1, v4

    .line 159
    .local v2, "widthHalf":F
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$900(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v3

    div-float v0, v3, v4

    .line 160
    .local v0, "heightHalf":F
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getLineHeight()F

    move-result v3

    iput v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    .line 161
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    neg-float v4, v2

    neg-float v5, v0

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    return-void
.end method


# virtual methods
.method public countText()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->cutText()V

    .line 100
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->refreshRect()V

    .line 101
    return-void
.end method

.method public countText(FF)V
    .locals 11
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 104
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 105
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getLineHeight()F

    move-result v6

    iput v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    .line 106
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)V

    .line 107
    cmpl-float v6, p1, v8

    if-eqz v6, :cond_0

    cmpl-float v6, p2, v8

    if-nez v6, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    cmpg-float v6, p1, v8

    if-gez v6, :cond_2

    .line 112
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 114
    :cond_2
    cmpg-float v6, p2, v8

    if-gez v6, :cond_6

    .line 115
    const v1, 0x7fffffff

    .line 119
    .local v1, "maxLines":I
    :goto_1
    const/4 v6, 0x1

    if-ge v1, v6, :cond_3

    .line 120
    const/4 v1, 0x1

    .line 122
    :cond_3
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMaxLines:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMaxLines:I

    if-le v1, v6, :cond_4

    .line 123
    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMaxLines:I

    .line 125
    :cond_4
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "singleLineTextList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;>;"
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    invoke-direct {v6, p0, v10}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, "start":I
    :goto_2
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v1, :cond_8

    .line 129
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    const/16 v7, 0xa

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v6, v7, v5, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    .line 130
    .local v0, "index":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    .line 131
    .local v3, "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$800(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    if-ne v0, v9, :cond_7

    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_3
    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->count()V

    .line 133
    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v6

    cmpl-float v6, v6, p1

    if-lez v6, :cond_5

    .line 134
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v6, v1, v6

    invoke-direct {p0, v3, p1, v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->cutSingleLineTextByWidth(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;FI)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_5
    if-eq v0, v9, :cond_8

    .line 138
    new-instance v6, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    invoke-direct {v6, p0, v10}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;-><init>(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v5, v0, 0x1

    .line 143
    goto :goto_2

    .line 117
    .end local v0    # "index":I
    .end local v1    # "maxLines":I
    .end local v3    # "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    .end local v4    # "singleLineTextList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;>;"
    .end local v5    # "start":I
    :cond_6
    iget v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    div-float v6, p2, v6

    float-to-int v1, v6

    .restart local v1    # "maxLines":I
    goto/16 :goto_1

    .restart local v0    # "index":I
    .restart local v3    # "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    .restart local v4    # "singleLineTextList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;>;"
    .restart local v5    # "start":I
    :cond_7
    move v6, v0

    .line 131
    goto :goto_3

    .line 144
    .end local v0    # "index":I
    .end local v3    # "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_9

    .line 145
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 147
    :cond_9
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v6}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    .line 148
    .local v2, "single":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v7

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 149
    iget-object v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v8

    invoke-static {v7, v8}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$202(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    goto :goto_5

    .line 152
    .end local v2    # "single":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    :cond_b
    iget-object v6, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    iget v7, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    iget-object v8, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v8}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$902(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;F)F

    .line 153
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->refreshRect()V

    goto/16 :goto_0
.end method

.method public countTextArea(FFFFF)V
    .locals 8
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "minSize"    # F
    .param p4, "maxSize"    # F
    .param p5, "sizeSpacing"    # F

    .prologue
    .line 165
    const-string v4, "AutoLineLayout"

    const-string v5, "--- begin count text in a area ---"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$600(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)V

    .line 169
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 170
    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->cutText()V

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    .local v0, "a":J
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->findSuitableTextSize(FFFFF)V

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText(FF)V

    .line 177
    invoke-direct/range {p0 .. p5}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->findSuitableTextSize(FFFFF)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, "b":J
    const-string v4, "AutoLineLayout"

    const-string/jumbo v5, "text size coast time\uff1a%d"

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->countText(FF)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 182
    const-string v4, "AutoLineLayout"

    const-string/jumbo v5, "text resize coast time\uff1a%d"

    sub-long v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const-string v4, "AutoLineLayout"

    const-string v5, "--- end count text in a area ---"

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "alignX":F
    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v2}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$100(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;

    .line 52
    .local v1, "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    sget-object v3, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$1;->$SwitchMap$com$miui$gallery$editor$photo$core$imports$text$utils$AutoLineLayout$TextAlignment:[I

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mTextAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    invoke-virtual {v4}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 64
    :goto_1
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    invoke-virtual {v1, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->draw(Landroid/graphics/Canvas;)V

    .line 66
    neg-float v3, v0

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    iget v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeight:F

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v3

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v4

    sub-float/2addr v3, v4

    div-float v0, v3, v6

    .line 55
    goto :goto_1

    .line 57
    :pswitch_1
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMultipleLineText:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;

    invoke-static {v3}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;->access$200(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$MultipleLineText;)F

    move-result v3

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;->access$300(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;)F

    move-result v4

    sub-float v0, v3, v4

    .line 58
    goto :goto_1

    .line 60
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    .end local v1    # "singleLineText":Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$SingleLineText;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    return-void

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mOriginText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mTextAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    return-object v0
.end method

.method public getTextRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "dst"    # Landroid/graphics/RectF;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mBound:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 304
    return-void
.end method

.method public setLetterSpace(F)V
    .locals 2
    .param p1, "letterSpace"    # F

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 318
    :cond_0
    return-void
.end method

.method public setLineHeightOffset(F)V
    .locals 0
    .param p1, "lineHeightOffset"    # F

    .prologue
    .line 335
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mLineHeightOffset:F

    .line 336
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mMaxLines:I

    .line 362
    return-void
.end method

.method public setSingleVerticalText(Z)V
    .locals 0
    .param p1, "singleVerticalText"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mIsSingleVerticalText:Z

    .line 340
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mOriginText:Ljava/lang/String;

    .line 296
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    .line 297
    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mIsSingleVerticalText:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->getSingleLineText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mText:Ljava/lang/String;

    .line 300
    :cond_0
    return-void
.end method

.method public setTextAlignment(Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;)V
    .locals 0
    .param p1, "textAlignment"    # Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout;->mTextAlignment:Lcom/miui/gallery/editor/photo/core/imports/text/utils/AutoLineLayout$TextAlignment;

    .line 308
    return-void
.end method
