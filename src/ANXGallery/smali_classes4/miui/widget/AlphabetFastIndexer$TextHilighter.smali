.class Lmiui/widget/AlphabetFastIndexer$TextHilighter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextHilighter"
.end annotation


# instance fields
.field OH:Landroid/graphics/Rect;

.field OI:Landroid/graphics/Rect;

.field OJ:[Ljava/lang/String;

.field OK:I

.field OL:I

.field ON:F

.field OO:F

.field rl:Landroid/graphics/Paint;

.field vC:I

.field vE:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 137
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTable:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const/4 v1, 0x0

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    .line 140
    nop

    .line 141
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 142
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 141
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_0

    .line 144
    :cond_0
    goto :goto_1

    .line 145
    :cond_1
    sget v0, Lcom/miui/internal/R$array;->alphabet_table:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    .line 148
    :goto_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    const/4 v1, 0x1

    array-length v0, v0

    if-le v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    array-length v0, v0

    .line 150
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    .line 153
    :cond_2
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_text_color:I

    .line 154
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 153
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vC:I

    .line 155
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextActivatedColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_activated_text_color:I

    .line 156
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 155
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OK:I

    .line 157
    sget v0, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextHighlightColor:I

    sget v2, Lcom/miui/internal/R$color;->alphabet_indexer_highlight_text_color:I

    .line 158
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 157
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OL:I

    .line 160
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    sget v2, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer_indexerTextSize:I

    sget v3, Lcom/miui/internal/R$dimen;->alphabet_indexer_text_size:I

    .line 161
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 160
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    sget-boolean p1, Lcom/miui/internal/util/DeviceHelper;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_3

    .line 165
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    .line 167
    :cond_3
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    const-string p2, "miui"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 170
    :goto_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->c(FF)V

    .line 171
    return-void
.end method


# virtual methods
.method a(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    :cond_0
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 226
    nop

    .line 232
    move v0, p1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 232
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    .line 233
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 234
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    sget-boolean p2, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz p2, :cond_2

    const-wide/16 v0, 0xc8

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 235
    iget-object p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vE:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    return-void
.end method

.method a(Landroid/graphics/Canvas;ZIFF)V
    .locals 9

    .line 181
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->rl:Landroid/graphics/Paint;

    .line 184
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    aget-object v1, v1, p3

    const-string v2, "!"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "\u2665"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OJ:[Ljava/lang/String;

    aget-object p3, v1, p3

    .line 186
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 188
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 189
    iget-object v2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 191
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->ON:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v7, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OO:F

    div-float/2addr v2, v5

    sub-float/2addr v7, v2

    float-to-int v7, v7

    iget v8, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->ON:F

    add-float/2addr v8, v1

    add-float/2addr v8, v6

    float-to-int v6, v8

    iget v8, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OO:F

    add-float/2addr v8, v2

    float-to-int v8, v8

    invoke-virtual {v3, v4, v7, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    if-eqz p2, :cond_1

    .line 198
    iget p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OK:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 200
    :cond_1
    iget-object p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OH:Landroid/graphics/Rect;

    sub-float v3, p4, v1

    float-to-int v3, v3

    sub-float v4, p5, v2

    float-to-int v4, v4

    add-float/2addr v1, p4

    float-to-int v1, v1

    add-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {p2, v3, v4, v1, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 202
    iget p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OL:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 204
    :cond_2
    iget p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->vC:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    :goto_1
    const-string p2, "\u2665"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 208
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_2

    .line 211
    :cond_3
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 214
    :goto_2
    iget-object p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OI:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v5

    sub-float/2addr p5, p2

    invoke-virtual {p1, p3, p4, p5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method c(FF)V
    .locals 0

    .line 174
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->ON:F

    .line 175
    iput p2, p0, Lmiui/widget/AlphabetFastIndexer$TextHilighter;->OO:F

    .line 176
    return-void
.end method
