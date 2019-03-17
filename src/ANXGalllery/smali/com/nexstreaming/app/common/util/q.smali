.class public Lcom/nexstreaming/app/common/util/q;
.super Ljava/lang/Object;
.source "utilityTextOverlay.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexOverlayImage$runTimeMakeBitMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/util/q$d;,
        Lcom/nexstreaming/app/common/util/q$b;,
        Lcom/nexstreaming/app/common/util/q$c;,
        Lcom/nexstreaming/app/common/util/q$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private transient f:I

.field private transient g:I

.field private transient h:Z

.field private transient i:Landroid/text/StaticLayout;

.field private j:F

.field private k:Lcom/nexstreaming/app/common/util/q$a;

.field private l:Lcom/nexstreaming/app/common/util/q$c;

.field private m:Lcom/nexstreaming/app/common/util/q$b;

.field private n:Lcom/nexstreaming/app/common/util/q$d;

.field private o:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIF)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    .line 91
    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    .line 109
    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    .line 46
    iput-object p1, p0, Lcom/nexstreaming/app/common/util/q;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/nexstreaming/app/common/util/q;->b:Ljava/lang/String;

    .line 48
    iput p3, p0, Lcom/nexstreaming/app/common/util/q;->d:I

    .line 49
    iput p4, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    .line 50
    iput p5, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    .line 51
    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 138
    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->d()V

    .line 141
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    iget v3, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 145
    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->c()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/util/q$a;->a(Lcom/nexstreaming/app/common/util/q$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v3}, Lcom/nexstreaming/app/common/util/q$a;->a(Lcom/nexstreaming/app/common/util/q$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 157
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->b(Lcom/nexstreaming/app/common/util/q$a;)Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v0, v4, :cond_1

    .line 161
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->c(Lcom/nexstreaming/app/common/util/q$a;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    if-eqz v0, :cond_3

    .line 174
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget-object v4, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v4}, Lcom/nexstreaming/app/common/util/q$d;->a(Lcom/nexstreaming/app/common/util/q$d;)F

    move-result v4

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 175
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$d;->b(Lcom/nexstreaming/app/common/util/q$d;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 176
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 177
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$d;->c(Lcom/nexstreaming/app/common/util/q$d;)F

    move-result v0

    iget-object v4, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v4}, Lcom/nexstreaming/app/common/util/q$d;->d(Lcom/nexstreaming/app/common/util/q$d;)F

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    if-eqz v0, :cond_4

    .line 182
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget-object v4, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    invoke-static {v4}, Lcom/nexstreaming/app/common/util/q$b;->a(Lcom/nexstreaming/app/common/util/q$b;)F

    move-result v4

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 183
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$b;->b(Lcom/nexstreaming/app/common/util/q$b;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 188
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->d(Lcom/nexstreaming/app/common/util/q$a;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 189
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->e(Lcom/nexstreaming/app/common/util/q$a;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    if-eqz v0, :cond_6

    .line 193
    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 194
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$c;->a(Lcom/nexstreaming/app/common/util/q$c;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 196
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$c;->b(Lcom/nexstreaming/app/common/util/q$c;)F

    move-result v0

    iget v4, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    div-float/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 197
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_6
    return-object v1

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->c(Lcom/nexstreaming/app/common/util/q$a;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 167
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    int-to-float v0, v0

    iget v4, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->c(Lcom/nexstreaming/app/common/util/q$a;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 170
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    int-to-float v0, v0

    iget v4, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method private b()Landroid/text/TextPaint;
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$a;->d(Lcom/nexstreaming/app/common/util/q$a;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$a;->e(Lcom/nexstreaming/app/common/util/q$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 216
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$a;->a(Lcom/nexstreaming/app/common/util/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexFont;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$a;->a(Lcom/nexstreaming/app/common/util/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$c;->b(Lcom/nexstreaming/app/common/util/q$c;)F

    move-result v1

    iget v2, p0, Lcom/nexstreaming/app/common/util/q;->j:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 226
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 228
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    return-object v0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->o:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto :goto_0
.end method

.method private c()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    .line 236
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$d;->c(Lcom/nexstreaming/app/common/util/q$d;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/q$d;->d(Lcom/nexstreaming/app/common/util/q$d;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/q$b;->a(Lcom/nexstreaming/app/common/util/q$b;)F

    move-result v2

    .line 242
    :goto_1
    iget-object v3, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    if-eqz v3, :cond_0

    .line 243
    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    invoke-static {v1}, Lcom/nexstreaming/app/common/util/q$c;->b(Lcom/nexstreaming/app/common/util/q$c;)F

    move-result v1

    .line 246
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    .line 250
    iget-boolean v0, p0, Lcom/nexstreaming/app/common/util/q;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v8, 0x0

    .line 257
    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->c()I

    move-result v10

    .line 259
    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->b()Landroid/text/TextPaint;

    move-result-object v4

    .line 261
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->d:I

    iput v0, p0, Lcom/nexstreaming/app/common/util/q;->f:I

    .line 262
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    .line 264
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 266
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->b(Lcom/nexstreaming/app/common/util/q$a;)Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v0, v1, :cond_3

    .line 267
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 277
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 278
    const-string/jumbo v1, "utilityTextOverlay"

    const-string v3, "calcDimension(%s, %d %d)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/text/Layout$Alignment;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v2

    iget v11, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v9

    const/4 v11, 0x2

    iget v12, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_2
    iget v1, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    iget v3, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    if-le v1, v3, :cond_2

    .line 281
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/nexstreaming/app/common/util/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nexstreaming/app/common/util/q;->b:Ljava/lang/String;

    .line 283
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->d:I

    mul-int/lit8 v11, v10, 0x2

    sub-int/2addr v5, v11

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 291
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v3, v10, 0x2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    .line 292
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    .line 295
    iget v3, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    iget v5, p0, Lcom/nexstreaming/app/common/util/q;->e:I

    if-gt v3, v5, :cond_5

    .line 305
    :cond_2
    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    .line 307
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v1, v10, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/app/common/util/q;->f:I

    .line 308
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v1, v10, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/app/common/util/q;->g:I

    .line 310
    iput-boolean v9, p0, Lcom/nexstreaming/app/common/util/q;->h:Z

    goto/16 :goto_0

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->b(Lcom/nexstreaming/app/common/util/q$a;)Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v0, v1, :cond_4

    .line 270
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    invoke-static {v0}, Lcom/nexstreaming/app/common/util/q$a;->b(Lcom/nexstreaming/app/common/util/q$a;)Landroid/graphics/Paint$Align;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v0, v1, :cond_1

    .line 273
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_1

    .line 301
    :cond_5
    sub-float/2addr v1, v7

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_2
.end method


# virtual methods
.method public a(FILandroid/graphics/Paint$Align;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 76
    new-instance v0, Lcom/nexstreaming/app/common/util/q$a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/app/common/util/q$a;-><init>(Lcom/nexstreaming/app/common/util/q;FILandroid/graphics/Paint$Align;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->k:Lcom/nexstreaming/app/common/util/q$a;

    .line 77
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/nexstreaming/app/common/util/q;->c:I

    .line 55
    return-void
.end method

.method public a(ZIF)V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/nexstreaming/app/common/util/q$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nexstreaming/app/common/util/q$c;-><init>(Lcom/nexstreaming/app/common/util/q;ZIF)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->l:Lcom/nexstreaming/app/common/util/q$c;

    .line 95
    return-void
.end method

.method public a(ZIFFF)V
    .locals 7

    .prologue
    .line 134
    new-instance v0, Lcom/nexstreaming/app/common/util/q$d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nexstreaming/app/common/util/q$d;-><init>(Lcom/nexstreaming/app/common/util/q;ZIFFF)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->n:Lcom/nexstreaming/app/common/util/q$d;

    .line 135
    return-void
.end method

.method public b(ZIF)V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/nexstreaming/app/common/util/q$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nexstreaming/app/common/util/q$b;-><init>(Lcom/nexstreaming/app/common/util/q;ZIF)V

    iput-object v0, p0, Lcom/nexstreaming/app/common/util/q;->m:Lcom/nexstreaming/app/common/util/q$b;

    .line 113
    return-void
.end method

.method public getBitmapID()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/nexstreaming/app/common/util/q;->c:I

    return v0
.end method

.method public isAniMate()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public makeBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/nexstreaming/app/common/util/q;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
