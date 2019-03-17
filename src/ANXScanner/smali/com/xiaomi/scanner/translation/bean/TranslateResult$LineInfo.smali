.class public Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;
.super Ljava/lang/Object;
.source "TranslateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/bean/TranslateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineInfo"
.end annotation


# instance fields
.field public boundingBox:Ljava/lang/String;

.field public colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

.field private degree:F

.field private height:I

.field private position:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;

.field public text:Ljava/lang/String;

.field public toText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    return-void
.end method

.method private getOrientation180(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    .line 182
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 183
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 184
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 185
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 186
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 187
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 189
    .local v3, "point":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 190
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 192
    .end local v3    # "point":Landroid/graphics/Point;
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 193
    .local v0, "info0":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 194
    .local v1, "info1":Landroid/graphics/Point;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 196
    .local v2, "info3":Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_1

    .line 197
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 200
    .end local v0    # "info0":Landroid/graphics/Point;
    .end local v1    # "info1":Landroid/graphics/Point;
    .end local v2    # "info3":Landroid/graphics/Point;
    :cond_1
    return-object v4
.end method

.method private getOrientation270(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    .line 226
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 227
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 228
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 229
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 230
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 231
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 233
    .local v3, "point":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 234
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 236
    .end local v3    # "point":Landroid/graphics/Point;
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 237
    .local v0, "info0":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 238
    .local v1, "info1":Landroid/graphics/Point;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 240
    .local v2, "info3":Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-eq v5, v6, :cond_1

    .line 241
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 244
    .end local v0    # "info0":Landroid/graphics/Point;
    .end local v1    # "info1":Landroid/graphics/Point;
    .end local v2    # "info3":Landroid/graphics/Point;
    :cond_1
    return-object v4
.end method

.method private getOrientation90(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    .line 248
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 249
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 250
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 251
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 252
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 253
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 254
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 255
    .local v3, "point":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 256
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 258
    .end local v3    # "point":Landroid/graphics/Point;
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 259
    .local v0, "info0":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 260
    .local v1, "info1":Landroid/graphics/Point;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 262
    .local v2, "info3":Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    if-eq v5, v6, :cond_1

    .line 263
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 266
    .end local v0    # "info0":Landroid/graphics/Point;
    .end local v1    # "info1":Landroid/graphics/Point;
    .end local v2    # "info3":Landroid/graphics/Point;
    :cond_1
    return-object v4
.end method

.method private getOrientationOther(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    .line 204
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 205
    .local v4, "rect":Landroid/graphics/Rect;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 206
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 207
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 208
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 209
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 211
    .local v3, "point":Landroid/graphics/Point;
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 212
    iget v6, v3, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 214
    .end local v3    # "point":Landroid/graphics/Point;
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 215
    .local v0, "info0":Landroid/graphics/Point;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 216
    .local v1, "info1":Landroid/graphics/Point;
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 218
    .local v2, "info3":Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_1

    .line 219
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 222
    .end local v0    # "info0":Landroid/graphics/Point;
    .end local v1    # "info1":Landroid/graphics/Point;
    .end local v2    # "info3":Landroid/graphics/Point;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public degree(I)F
    .locals 8
    .param p1, "oritation"    # I

    .prologue
    .line 86
    iget v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 88
    if-eqz p1, :cond_0

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_5

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 90
    .local v0, "p1":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 91
    .local v1, "p2":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_1

    .line 92
    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v3, v4

    sub-float v3, v2, v3

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_0
    int-to-float v2, v2

    mul-float/2addr v3, v2

    if-nez p1, :cond_4

    const/4 v2, 0x1

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    .line 102
    .end local v0    # "p1":Landroid/graphics/Point;
    .end local v1    # "p2":Landroid/graphics/Point;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 103
    const/4 v2, 0x0

    iput v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    .line 106
    :cond_2
    iget v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    return v2

    .line 92
    .restart local v0    # "p1":Landroid/graphics/Point;
    .restart local v1    # "p2":Landroid/graphics/Point;
    :cond_3
    const/4 v2, -0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 94
    .end local v0    # "p1":Landroid/graphics/Point;
    .end local v1    # "p2":Landroid/graphics/Point;
    :cond_5
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_6

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_1

    .line 95
    :cond_6
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 96
    .restart local v0    # "p1":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 97
    .restart local v1    # "p2":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-eq v2, v3, :cond_1

    .line 98
    const/high16 v2, 0x42b40000    # 90.0f

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v3, v4

    sub-float v3, v2, v3

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    if-le v2, v4, :cond_7

    const/4 v2, -0x1

    :goto_3
    int-to-float v2, v2

    mul-float/2addr v3, v2

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->degree:F

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, -0x1

    goto :goto_4
.end method

.method public getBgColor()I
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 146
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->background:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->background:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 147
    :cond_0
    const/4 v1, -0x1

    .line 152
    :goto_0
    return v1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v0, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->background:Ljava/util/List;

    .line 150
    .local v0, "background":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v2, v1

    const/4 v1, 0x1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v2, v1

    const/4 v1, 0x2

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public getItemHeight()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->height:I

    int-to-float v0, v0

    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/translation/TranslateModel;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPosition(I)Ljava/util/List;
    .locals 10
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    if-nez v7, :cond_5

    .line 111
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    .line 112
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->boundingBox:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->boundingBox:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 113
    :cond_0
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    .line 142
    :goto_0
    return-object v7

    .line 116
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->boundingBox:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "bounds":[Ljava/lang/String;
    array-length v7, v0

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    array-length v7, v0

    if-lez v7, :cond_5

    .line 118
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/scanner/translation/TranslateModel;->getScaleX()F

    move-result v3

    .line 119
    .local v3, "scaleX":F
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/scanner/translation/TranslateModel;->getScaleY()F

    move-result v4

    .line 120
    .local v4, "scaleY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_5

    .line 122
    const/16 v7, 0x5a

    if-ne p1, v7, :cond_2

    .line 123
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .line 124
    .local v6, "y":I
    sget v7, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    add-int/lit8 v8, v2, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    sub-int v5, v7, v8

    .line 135
    .local v5, "x":I
    :goto_2
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 125
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    const/16 v7, 0x10e

    if-ne p1, v7, :cond_3

    .line 126
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/scanner/translation/TranslateModel;->getTranslateImageRealHeight()F

    move-result v7

    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 127
    .restart local v6    # "y":I
    add-int/lit8 v7, v2, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v5, v7

    .restart local v5    # "x":I
    goto :goto_2

    .line 128
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_3
    const/16 v7, 0xb4

    if-ne p1, v7, :cond_4

    .line 129
    sget v7, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    aget-object v8, v0, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    sub-int v5, v7, v8

    .line 130
    .restart local v5    # "x":I
    invoke-static {}, Lcom/xiaomi/scanner/translation/TranslateModel;->getInstance()Lcom/xiaomi/scanner/translation/TranslateModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/scanner/translation/TranslateModel;->getTranslateImageRealHeight()F

    move-result v7

    add-int/lit8 v8, v2, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .restart local v6    # "y":I
    goto :goto_2

    .line 132
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_4
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v5, v7

    .line 133
    .restart local v5    # "x":I
    add-int/lit8 v7, v2, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v6, v7

    .restart local v6    # "y":I
    goto :goto_2

    .line 138
    .end local v0    # "bounds":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "scaleX":F
    .end local v4    # "scaleY":F
    .end local v5    # "x":I
    .end local v6    # "y":I
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "TranslateResult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPosition error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    iget-object v7, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->position:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 5

    .prologue
    const/high16 v2, -0x1000000

    const/high16 v4, 0x437f0000    # 255.0f

    .line 156
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->font:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v1, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->font:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    :cond_0
    move v1, v2

    .line 162
    :goto_0
    return v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->colorInfo:Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;

    iget-object v0, v1, Lcom/xiaomi/scanner/translation/bean/TranslateResult$ColorInfo;->font:Ljava/util/List;

    .line 160
    .local v0, "font":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v2, v1

    const/4 v1, 0x1

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v2, v1

    const/4 v1, 0x2

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public rect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getPosition(I)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getOrientation90(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    .line 178
    .end local v0    # "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    return-object v1

    .line 170
    .restart local v0    # "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_1
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_2

    .line 171
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getOrientation270(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    goto :goto_0

    .line 172
    :cond_2
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_3

    .line 173
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getOrientation180(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    goto :goto_0

    .line 175
    :cond_3
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->getOrientationOther(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/translation/bean/TranslateResult$LineInfo;->rect:Landroid/graphics/Rect;

    goto :goto_0
.end method
