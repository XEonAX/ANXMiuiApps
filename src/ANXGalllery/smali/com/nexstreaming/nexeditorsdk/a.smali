.class Lcom/nexstreaming/nexeditorsdk/a;
.super Ljava/lang/Object;
.source "nexCollageDrawInfo.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexCollageInfo;
.implements Lcom/nexstreaming/nexeditorsdk/nexCollageInfoDraw;


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field protected b:Landroid/graphics/RectF;

.field protected c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/RectF;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:F

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/RectF;

.field private t:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "nexCollageDrawInfo"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    .line 62
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->o:I

    .line 63
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->p:I

    return-void
.end method

.method private a(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 16

    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v2

    mul-int v2, v2, p3

    const v3, 0x186a0

    div-int/2addr v2, v3

    .line 181
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v3

    mul-int v3, v3, p4

    const v4, 0x186a0

    div-int/2addr v3, v4

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    .line 185
    neg-float v6, v4

    .line 186
    neg-float v7, v5

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v8, v8

    .line 191
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 192
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    .line 194
    mul-float v10, v9, v6

    mul-float v11, v8, v7

    sub-float/2addr v10, v11

    .line 195
    mul-float v11, v8, v6

    mul-float v12, v9, v7

    add-float/2addr v11, v12

    .line 196
    mul-float v12, v9, v4

    mul-float v13, v8, v7

    sub-float/2addr v12, v13

    .line 197
    mul-float v13, v8, v4

    mul-float/2addr v7, v9

    add-float/2addr v7, v13

    .line 198
    mul-float v13, v9, v6

    mul-float v14, v8, v5

    sub-float/2addr v13, v14

    .line 199
    mul-float/2addr v6, v8

    mul-float v14, v9, v5

    add-float/2addr v6, v14

    .line 200
    mul-float v14, v9, v4

    mul-float v15, v8, v5

    sub-float/2addr v14, v15

    .line 201
    mul-float/2addr v8, v4

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 203
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 204
    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v15, v6}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 205
    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v10, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 206
    invoke-static {v11, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 208
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 210
    add-float v8, v9, v4

    float-to-int v8, v8

    add-int/2addr v8, v2

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 211
    add-float v8, v15, v5

    float-to-int v8, v8

    add-int/2addr v8, v3

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 212
    add-float/2addr v4, v10

    float-to-int v4, v4

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v7, Landroid/graphics/Rect;->right:I

    .line 213
    add-float v2, v6, v5

    float-to-int v2, v2

    add-int/2addr v2, v3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 215
    return-object v7
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 450
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 453
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 452
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 456
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 458
    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    goto :goto_0
.end method

.method private h()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 219
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 225
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 226
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 228
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 230
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    if-nez v3, :cond_4

    .line 235
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    .line 236
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    invoke-static {v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 239
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 241
    invoke-direct {p0, v0, v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 243
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 244
    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 246
    const/high16 v3, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    .line 250
    iget v10, v5, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_5

    .line 251
    div-float v10, v6, v8

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 254
    :cond_5
    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-le v10, v2, :cond_6

    .line 255
    int-to-float v10, v2

    sub-float v6, v10, v6

    div-float/2addr v6, v8

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 258
    :cond_6
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_7

    .line 259
    div-float v6, v7, v9

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 262
    :cond_7
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v5, v1, :cond_8

    .line 263
    int-to-float v5, v1

    sub-float/2addr v5, v7

    div-float/2addr v5, v9

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 266
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    mul-float/2addr v3, v5

    .line 267
    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    mul-float/2addr v5, v3

    .line 269
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 270
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 272
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    sub-float v9, v6, v5

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 273
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    add-float/2addr v5, v6

    iput v5, v8, Landroid/graphics/RectF;->right:F

    .line 274
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    sub-float v6, v7, v3

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 275
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    add-float/2addr v3, v7

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    .line 277
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 279
    invoke-static {v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 281
    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 282
    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 292
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 293
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 295
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_3

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 297
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 300
    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 301
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    invoke-direct {p0, v0, v5, v2, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 308
    iget v3, v6, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_8

    .line 309
    iget v3, v6, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v3

    .line 312
    :goto_1
    iget v7, v6, Landroid/graphics/Rect;->right:I

    if-le v7, v2, :cond_4

    .line 313
    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    sub-int/2addr v3, v7

    .line 316
    :cond_4
    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_5

    .line 317
    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    .line 320
    :cond_5
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    if-le v7, v1, :cond_6

    .line 321
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    sub-int/2addr v4, v6

    .line 324
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_0

    .line 327
    :cond_7
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 328
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    add-float/2addr v3, v7

    iput v3, v6, Landroid/graphics/RectF;->right:F

    .line 329
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/RectF;->top:F

    .line 330
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    add-float/2addr v4, v6

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 332
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v3, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 334
    invoke-static {v5, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 336
    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method private j()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v3

    .line 371
    :goto_0
    return v0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 347
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 348
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 350
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_3

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 352
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 355
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 356
    invoke-static {v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 358
    invoke-direct {p0, v0, v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 360
    sget-object v5, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aabb:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " r:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v2, :cond_4

    move v0, v3

    .line 363
    goto/16 :goto_0

    .line 365
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, v1, :cond_5

    move v0, v3

    .line 366
    goto/16 :goto_0

    .line 369
    :cond_5
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    const-string v1, "aabb checkTranformOk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x186a0

    .line 375
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 381
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 382
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 384
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v5, 0x10e

    if-ne v3, v5, :cond_3

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 386
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 389
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 390
    invoke-static {v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 392
    invoke-direct {p0, v0, v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 397
    iget v3, v5, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_8

    .line 398
    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int v3, v4, v3

    .line 401
    :goto_1
    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_4

    .line 402
    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    sub-int/2addr v3, v6

    .line 405
    :cond_4
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_5

    .line 406
    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    .line 409
    :cond_5
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v1, :cond_6

    .line 410
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    sub-int/2addr v4, v5

    .line 413
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_0

    .line 416
    :cond_7
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v5

    mul-int/2addr v5, v2

    div-int/2addr v5, v7

    .line 417
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v6

    mul-int/2addr v6, v1

    div-int/2addr v6, v7

    .line 419
    add-int/2addr v3, v5

    mul-int/2addr v3, v7

    div-int v2, v3, v2

    .line 420
    add-int v3, v6, v4

    mul-int/2addr v3, v7

    div-int v1, v3, v1

    .line 422
    invoke-virtual {v0, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method private l()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 435
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 434
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 438
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 440
    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .prologue
    .line 1094
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method a(Landroid/graphics/PointF;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1099
    move v2, v0

    move v3, v0

    .line 1100
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 1101
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1102
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1103
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 1104
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 1100
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    .line 1107
    :cond_0
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1108
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 1109
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    .line 1112
    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexProject;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1166
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->e:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1167
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->f:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1168
    sub-int/2addr v1, v0

    .line 1170
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->m:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1172
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexProject;->updateProject()Z

    .line 1174
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->a()Lcom/nexstreaming/kminternal/kinemaster/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->m:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexAssetPackageManager;->getAssetPackageMediaPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-static {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getSupportedClip(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v1

    .line 1176
    if-eqz v1, :cond_0

    .line 1177
    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v2

    .line 1178
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->n:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1179
    int-to-float v4, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 1180
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setCollageDrawInfoID(Ljava/lang/String;)V

    .line 1181
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAssetResource(Z)V

    .line 1182
    add-int v4, v0, v3

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v4, v0}, Lcom/nexstreaming/nexeditorsdk/nexProject;->addAudio(Lcom/nexstreaming/nexeditorsdk/nexClip;II)I

    .line 1186
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1157
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1159
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x1

    .line 1199
    :try_start_0
    const-string/jumbo v3, "start"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->e:F

    .line 1200
    const-string v3, "end"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->f:F

    .line 1202
    const-string v3, "position"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1203
    const-string v3, "position"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1204
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1206
    if-nez v7, :cond_0

    .line 1207
    const-string v0, "Wrong position data of drawinfo"

    .line 1278
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1211
    array-length v3, v7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1212
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1213
    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1215
    const/4 v2, 0x2

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1216
    const/4 v3, 0x3

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1218
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1219
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1220
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1221
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1223
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->g:Landroid/graphics/RectF;

    .line 1254
    :cond_1
    :goto_1
    const-string v0, "draw_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->i:Ljava/lang/String;

    .line 1256
    const-string/jumbo v0, "source_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->j:Ljava/lang/String;

    .line 1257
    const-string/jumbo v0, "source_default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->k:Ljava/lang/String;

    .line 1259
    const-string v0, "lut"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->l:Ljava/lang/String;

    .line 1261
    const-string v0, "audio_res"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->m:Ljava/lang/String;

    .line 1262
    const-string v0, "audio_res_pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->n:Ljava/lang/String;

    .line 1264
    const-string v0, "draw_width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    const-string v0, "draw_width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->o:I

    .line 1268
    :cond_2
    const-string v0, "draw_height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    const-string v0, "draw_height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->p:I

    .line 1278
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    move v6, v0

    move v3, v1

    move v5, v2

    move v0, v1

    .line 1236
    :goto_2
    array-length v1, v7

    if-ge v6, v1, :cond_9

    .line 1237
    aget-object v1, v7, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1238
    add-int/lit8 v1, v6, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1240
    cmpl-float v8, v5, v4

    if-lez v8, :cond_5

    move v5, v4

    .line 1241
    :cond_5
    cmpg-float v8, v3, v4

    if-gez v8, :cond_6

    move v3, v4

    .line 1242
    :cond_6
    cmpl-float v8, v2, v1

    if-lez v8, :cond_7

    move v2, v1

    .line 1243
    :cond_7
    cmpg-float v8, v0, v1

    if-gez v8, :cond_8

    move v0, v1

    .line 1245
    :cond_8
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1247
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    goto :goto_2

    .line 1250
    :cond_9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->g:Landroid/graphics/RectF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1274
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse Collage failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(F)V
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 655
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 661
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 662
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 664
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 665
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 666
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 669
    :cond_3
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    if-nez v3, :cond_4

    .line 670
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 672
    :cond_4
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 673
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v3, v6

    float-to-double v6, v3

    div-double/2addr v4, v6

    .line 672
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 676
    sget-object v4, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scale_chk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " display_rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 679
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 681
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v8

    .line 682
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v8

    .line 684
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

    .line 686
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_0

    .line 689
    const v3, 0x3f7851ec    # 0.97f

    mul-float/2addr v3, v4

    .line 690
    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    mul-float/2addr v4, v3

    .line 701
    :goto_1
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    sub-float v8, v5, v4

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 702
    iget-object v7, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    add-float/2addr v4, v5

    iput v4, v7, Landroid/graphics/RectF;->right:F

    .line 703
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    sub-float v5, v6, v3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 704
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    add-float/2addr v3, v6

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 706
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 707
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 709
    invoke-static {v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 711
    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 712
    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 694
    :cond_5
    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v7

    if-ltz v3, :cond_0

    .line 697
    const v3, 0x3f83d70a    # 1.03f

    mul-float/2addr v3, v4

    .line 698
    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    mul-float/2addr v4, v3

    goto :goto_1
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 82
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 86
    :cond_0
    return-void
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1134
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 1135
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_2

    .line 1136
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 1137
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v0

    .line 1139
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 1140
    :cond_0
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 1141
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v0

    .line 1144
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v2, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->b:Landroid/graphics/RectF;

    .line 1146
    :cond_2
    return-void
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    .line 92
    return-void
.end method

.method public a(Z)V
    .locals 18

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v3

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    .line 592
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v3

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    move v4, v3

    move v3, v2

    .line 596
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    if-nez v5, :cond_3

    .line 599
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 600
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    invoke-static {v5, v6}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;F)V

    .line 601
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/RectF;)V

    .line 604
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 605
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 607
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 608
    invoke-static {v7, v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 610
    if-eqz p1, :cond_4

    .line 611
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/Rect;)V

    .line 614
    :cond_4
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRealScale()F

    move-result v8

    .line 616
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v8

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v8, v10, v8

    .line 619
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v10

    .line 620
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    .line 622
    float-to-double v12, v5

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v7, Landroid/graphics/Rect;->left:I

    .line 623
    float-to-double v12, v6

    float-to-double v14, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    iput v12, v7, Landroid/graphics/Rect;->top:I

    .line 624
    float-to-double v12, v5

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v5, v12

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 625
    float-to-double v12, v6

    float-to-double v8, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v14

    add-double/2addr v8, v12

    double-to-int v5, v8

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 627
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    invoke-static {v7, v5}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;F)V

    .line 629
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    sub-float v5, v10, v5

    float-to-int v5, v5

    .line 630
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    sub-float v6, v11, v6

    float-to-int v6, v6

    .line 632
    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 633
    iget v8, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 634
    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 635
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 637
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 639
    invoke-static {v7, v4, v3}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 641
    invoke-virtual {v2, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 642
    invoke-virtual {v2, v7}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 643
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    .line 645
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/a;->i()V

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/a;->h()V

    .line 648
    if-eqz p1, :cond_0

    .line 649
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/a;->l()V

    .line 650
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    goto/16 :goto_0

    :cond_5
    move v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->j:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->j:Ljava/lang/String;

    const-string/jumbo v1, "system_mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1117
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1119
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1120
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/a;->a(Landroid/graphics/PointF;Ljava/util/List;)I

    move-result v1

    .line 1121
    if-lez v1, :cond_0

    .line 1122
    const/4 v0, 0x1

    .line 1130
    :cond_0
    :goto_0
    return v0

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->g:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)Z
    .locals 10

    .prologue
    .line 973
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 974
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 975
    :cond_0
    const/4 v0, 0x0

    .line 1053
    :goto_0
    return v0

    .line 978
    :cond_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 979
    invoke-virtual {p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->addDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 981
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 982
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v0, v0, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    iput v0, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 984
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 985
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    .line 988
    :cond_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 989
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v0

    .line 991
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    .line 992
    :cond_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 993
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v0

    .line 996
    :cond_4
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v1

    int-to-float v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->b:Landroid/graphics/RectF;

    .line 997
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 999
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1000
    new-instance v4, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1002
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    .line 1003
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1004
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v5, :cond_5

    .line 1005
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->FaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1008
    :cond_5
    iget v5, v2, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1011
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1012
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1039
    :goto_1
    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    invoke-static {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;F)V

    .line 1041
    invoke-static {v2, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 1042
    invoke-static {v4, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 1044
    invoke-virtual {p2, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 1045
    invoke-virtual {p2, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 1046
    invoke-virtual {p2, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 1048
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    .line 1049
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 1050
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->b:Landroid/graphics/RectF;

    .line 1051
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 1052
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/a;->a(Z)V

    .line 1053
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1015
    :cond_6
    iget v5, v2, Landroid/graphics/RectF;->left:F

    int-to-float v6, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v0

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1018
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    .line 1019
    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 1020
    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 1021
    iget v2, v3, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_7

    .line 1022
    const/4 v2, 0x0

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 1024
    :cond_7
    iget v2, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_8

    .line 1025
    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 1027
    :cond_8
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    .line 1028
    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1029
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1030
    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_9

    .line 1031
    const/4 v2, 0x0

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 1033
    :cond_9
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v0, :cond_a

    .line 1034
    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    :cond_a
    move-object v2, v3

    goto/16 :goto_1
.end method

.method protected b(F)V
    .locals 0

    .prologue
    .line 1149
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    .line 1150
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->j:Ljava/lang/String;

    const-string/jumbo v1, "system_mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->e:F

    return v0
.end method

.method public changeSource(Lcom/nexstreaming/nexeditorsdk/nexClip;)Z
    .locals 11

    .prologue
    .line 859
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 860
    :cond_0
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 864
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->clearDrawInfos()V

    .line 867
    invoke-virtual {p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->addDrawInfo(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 869
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v1, v1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    iput v1, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mStartTime:I

    .line 870
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v1, v1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    iput v1, p1, Lcom/nexstreaming/nexeditorsdk/nexClip;->mEndTime:I

    .line 872
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 873
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 882
    :goto_1
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 883
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 885
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    .line 886
    :cond_3
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 887
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 890
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 891
    new-instance v5, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 893
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    .line 895
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 896
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v6, :cond_5

    .line 897
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->FaceRect(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v3

    .line 900
    :cond_5
    iget v6, v3, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v1

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 902
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 903
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 928
    :goto_2
    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->q:F

    invoke-static {v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;F)V

    .line 930
    invoke-static {v3, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 931
    invoke-static {v5, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->b(Landroid/graphics/Rect;II)V

    .line 933
    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 934
    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 936
    invoke-virtual {v0, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 938
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 939
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 944
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserRotateState(I)V

    .line 945
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 946
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRealScale(F)V

    .line 947
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->r:Landroid/graphics/Rect;

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 956
    new-instance v0, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->b:Landroid/graphics/RectF;

    .line 958
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 959
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    .line 960
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 961
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/a;->a(Z)V

    .line 963
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_e

    .line 964
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-interface {v1, v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->SourceChanged(Lcom/nexstreaming/nexeditorsdk/nexClip;Lcom/nexstreaming/nexeditorsdk/nexClip;)V

    .line 965
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 875
    :cond_6
    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 876
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getProjectDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setImageClipDuration(I)V

    goto/16 :goto_1

    .line 879
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 905
    :cond_8
    iget v6, v3, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->top:F

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v3, Landroid/graphics/RectF;->right:F

    int-to-float v9, v2

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v1

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 907
    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 908
    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 909
    iget v6, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v6

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 910
    iget v3, v4, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_9

    .line 911
    const/4 v3, 0x0

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 913
    :cond_9
    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_a

    .line 914
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 916
    :cond_a
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    .line 917
    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 918
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v6

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 919
    iget v3, v4, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_b

    .line 920
    const/4 v3, 0x0

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 922
    :cond_b
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_c

    .line 923
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    :cond_c
    move-object v3, v4

    goto/16 :goto_2

    .line 942
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    goto/16 :goto_3

    .line 967
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 1086
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->f:F

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method f()I
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->o:I

    return v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 1194
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->p:I

    return v0
.end method

.method public getBindSource()Lcom/nexstreaming/nexeditorsdk/nexClip;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1058
    :cond_0
    const/4 v0, 0x0

    .line 1060
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLut()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 776
    :goto_0
    return-object v0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 774
    if-eqz v0, :cond_2

    .line 775
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserLUT()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 776
    goto :goto_0
.end method

.method public getPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public getRectangle()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->g:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotate()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 510
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v0

    goto :goto_0
.end method

.method public getTagID()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 126
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getID()I

    move-result v0

    goto :goto_0
.end method

.method public getVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 836
    :goto_0
    return v0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 830
    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getBrightness()I

    move-result v0

    const/16 v2, -0xff

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 832
    goto :goto_0

    .line 834
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 836
    goto :goto_0
.end method

.method public setAudioVolume(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1064
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v0

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getClipType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1071
    if-nez p1, :cond_2

    .line 1072
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    move v0, v1

    .line 1073
    goto :goto_0

    .line 1076
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setAudioOnOff(Z)V

    .line 1077
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->setClipVolume(I)Z

    move v0, v1

    .line 1078
    goto :goto_0
.end method

.method public setFlip(I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v5, 0x20000

    const/high16 v4, 0x10000

    .line 553
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 559
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getRotateState()I

    move-result v1

    .line 560
    if-nez p1, :cond_4

    .line 561
    const v3, -0x30001

    and-int/2addr v1, v3

    .line 577
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setRotateState(I)V

    .line 579
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_3
    move v0, v2

    .line 581
    goto :goto_0

    .line 563
    :cond_4
    and-int/lit8 v3, p1, 0x1

    if-ne v3, v2, :cond_5

    .line 564
    and-int v3, v1, v4

    if-ne v3, v4, :cond_6

    .line 565
    const v3, -0x10001

    and-int/2addr v1, v3

    .line 569
    :cond_5
    :goto_2
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 570
    and-int v3, v1, v5

    if-ne v3, v5, :cond_7

    .line 571
    const v3, -0x20001

    and-int/2addr v1, v3

    goto :goto_1

    .line 567
    :cond_6
    or-int/2addr v1, v4

    goto :goto_2

    .line 573
    :cond_7
    or-int/2addr v1, v5

    goto :goto_1
.end method

.method public setLut(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 780
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v2

    .line 821
    :goto_0
    return v0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 785
    if-eqz p1, :cond_2

    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 787
    :cond_2
    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 790
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_3
    move v0, v1

    .line 791
    goto :goto_0

    .line 794
    :cond_4
    const-string v3, "default"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 796
    invoke-virtual {v0, v4}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 798
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_5

    .line 800
    invoke-virtual {v2}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 806
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_6
    move v0, v1

    .line 807
    goto :goto_0

    .line 803
    :cond_7
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    goto :goto_1

    .line 810
    :cond_8
    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b

    .line 811
    :cond_9
    invoke-static {p1}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLutColorEffect(Ljava/lang/String;)Lcom/nexstreaming/nexeditorsdk/nexColorEffect;

    move-result-object v3

    .line 812
    if-eqz v3, :cond_b

    .line 813
    invoke-virtual {v3}, Lcom/nexstreaming/nexeditorsdk/nexColorEffect;->getLUTId()I

    move-result v2

    .line 814
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setLUT(I)V

    .line 815
    invoke-virtual {v0, p1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserLUT(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_a
    move v0, v1

    .line 818
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 821
    goto/16 :goto_0
.end method

.method public setRotate(II)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 514
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 549
    :goto_0
    return v0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 519
    sget-object v2, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    const-string/jumbo v4, "setRotate: %d %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eq p1, v3, :cond_2

    if-ne p1, v7, :cond_3

    :cond_2
    move v0, v3

    .line 523
    goto :goto_0

    .line 526
    :cond_3
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    if-nez v1, :cond_6

    .line 528
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 529
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 531
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 533
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 536
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 537
    invoke-static {v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 538
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 541
    :cond_6
    invoke-virtual {v0, p2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserRotateState(I)V

    .line 543
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->h()V

    .line 545
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->l()V

    .line 547
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_7
    move v0, v3

    .line 549
    goto/16 :goto_0
.end method

.method public setScale(F)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 717
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 721
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    move v0, v3

    .line 722
    goto :goto_0

    .line 725
    :cond_2
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/a;->d:Ljava/lang/String;

    const-string/jumbo v2, "setScale %f"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 729
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 731
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 732
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 734
    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v4}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v4

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_4

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 736
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 739
    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 740
    invoke-static {v4, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 741
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 742
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->t:Landroid/graphics/RectF;

    .line 745
    :cond_5
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 746
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 747
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v4

    .line 748
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v5

    .line 750
    invoke-virtual {p0, p1}, Lcom/nexstreaming/nexeditorsdk/a;->a(F)V

    .line 751
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->k()V

    .line 753
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->j()Z

    move-result v6

    if-nez v6, :cond_6

    .line 754
    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 755
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setStartRect(Landroid/graphics/Rect;)V

    .line 756
    invoke-virtual {v0, v2}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setEndRect(Landroid/graphics/Rect;)V

    .line 757
    invoke-virtual {v0, v4, v5}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 760
    :cond_6
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->l()V

    .line 762
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    :cond_7
    move v0, v3

    .line 764
    goto/16 :goto_0
.end method

.method public setTranslate(IIII)Z
    .locals 11

    .prologue
    const v10, 0x186a0

    const/4 v0, 0x0

    .line 462
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 467
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserRotateState()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    .line 468
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 469
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 471
    int-to-float v3, p1

    mul-float/2addr v3, v2

    int-to-float v4, p2

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    .line 472
    int-to-float v4, p1

    mul-float/2addr v1, v4

    int-to-float v4, p2

    mul-float/2addr v2, v4

    add-float v4, v1, v2

    .line 474
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v2

    .line 475
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v1

    .line 477
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v5

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v5}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getRotateInMeta()I

    move-result v5

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_3

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getHeight()I

    move-result v2

    .line 479
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getWidth()I

    move-result v1

    .line 482
    :cond_3
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    if-nez v5, :cond_4

    .line 483
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 484
    invoke-static {v5, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollage;->a(Landroid/graphics/Rect;II)V

    .line 485
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    .line 488
    :cond_4
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/a;->s:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v6, v5

    iget v5, p0, Lcom/nexstreaming/nexeditorsdk/a;->o:I

    iget v8, p0, Lcom/nexstreaming/nexeditorsdk/a;->p:I

    mul-int/2addr v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 490
    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 491
    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 493
    mul-int/2addr v3, v10

    div-int v2, v3, v2

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateX()I

    move-result v3

    add-int/2addr v2, v3

    .line 494
    mul-int v3, v4, v10

    div-int v1, v3, v1

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->getUserTranslateY()I

    move-result v3

    add-int/2addr v1, v3

    .line 496
    invoke-virtual {v0, v2, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setUserTranslate(II)V

    .line 498
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/a;->k()V

    .line 500
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 501
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public setVisible(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 855
    :goto_0
    return v0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/a;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getDrawInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;

    .line 845
    if-eqz v0, :cond_4

    .line 847
    if-eqz p1, :cond_3

    .line 848
    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    .line 852
    :goto_1
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/a;->c:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->DrawInfoChanged(Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;)V

    .line 853
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 850
    :cond_3
    const/16 v1, -0xff

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexDrawInfo;->setBrightness(I)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 855
    goto :goto_0
.end method
