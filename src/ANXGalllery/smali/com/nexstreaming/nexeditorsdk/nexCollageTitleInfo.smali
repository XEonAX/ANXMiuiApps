.class Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;
.super Ljava/lang/Object;
.source "nexCollageTitleInfo.java"

# interfaces
.implements Lcom/nexstreaming/nexeditorsdk/nexCollageInfo;
.implements Lcom/nexstreaming/nexeditorsdk/nexCollageInfoTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

.field private c:F

.field private d:F

.field private e:Landroid/graphics/RectF;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "nexCollageTitleInfo"

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    .line 60
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->j:I

    .line 61
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->k:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->l:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .prologue
    .line 358
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

    .line 363
    move v2, v0

    move v3, v0

    .line 365
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 366
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 367
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 368
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 369
    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 365
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    .line 372
    :cond_0
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 373
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 374
    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    .line 377
    :cond_1
    return v3

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x1

    .line 402
    :try_start_0
    const-string/jumbo v3, "start"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->c:F

    .line 403
    const-string v3, "end"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->d:F

    .line 404
    const-string v3, "position"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    const-string v3, "position"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 406
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 408
    if-nez v7, :cond_0

    .line 409
    const-string v0, "Wrong position data of titleinfo"

    .line 490
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 413
    array-length v3, v7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 414
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 415
    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 417
    const/4 v2, 0x2

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 418
    const/4 v3, 0x3

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 420
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 421
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 422
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 423
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 425
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v8, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v5, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->e:Landroid/graphics/RectF;

    .line 456
    :cond_1
    :goto_1
    const-string/jumbo v0, "title_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->g:Ljava/lang/String;

    .line 458
    const-string/jumbo v0, "title_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;->User:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

    :goto_2
    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->h:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

    .line 460
    const-string v0, "draw_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    const-string v0, "draw_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->i:Ljava/lang/String;

    .line 464
    :cond_2
    const-string/jumbo v0, "title_default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 466
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 467
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 484
    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 486
    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->b:Ljava/lang/String;

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

    .line 487
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v6, v0

    move v3, v1

    move v5, v2

    move v0, v1

    .line 438
    :goto_4
    :try_start_1
    array-length v1, v7

    if-ge v6, v1, :cond_8

    .line 439
    aget-object v1, v7, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 440
    add-int/lit8 v1, v6, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 442
    cmpl-float v8, v5, v4

    if-lez v8, :cond_4

    move v5, v4

    .line 443
    :cond_4
    cmpg-float v8, v3, v4

    if-gez v8, :cond_5

    move v3, v4

    .line 444
    :cond_5
    cmpl-float v8, v2, v1

    if-lez v8, :cond_6

    move v2, v1

    .line 445
    :cond_6
    cmpg-float v8, v0, v1

    if-gez v8, :cond_7

    move v0, v1

    .line 447
    :cond_7
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 449
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v1, v6, 0x2

    move v6, v1

    goto :goto_4

    .line 452
    :cond_8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->e:Landroid/graphics/RectF;

    goto/16 :goto_1

    .line 458
    :cond_9
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;->System:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

    goto/16 :goto_2

    .line 471
    :cond_a
    const-string v0, "max_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 472
    const-string v0, "max_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->j:I

    .line 475
    :cond_b
    const-string v0, "recommend_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 476
    const-string v0, "recommend_length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->k:I

    .line 479
    :cond_c
    const-string/jumbo v0, "title_max_lines"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 480
    const-string/jumbo v0, "title_max_lines"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->l:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected a(Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    .line 76
    return-void
.end method

.method a(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userDropShadowColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    .line 505
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userFillColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    .line 506
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userFont:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    .line 507
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userStrokeColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    .line 508
    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userText:Ljava/lang/String;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->h:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

    sget-object v1, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;->User:Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 385
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a(Landroid/graphics/PointF;Ljava/util/List;)I

    move-result v0

    .line 386
    if-lez v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->e:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_font"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fontid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_fill_color"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_stroke_color"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_dropshadow_color"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_3
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 314
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 320
    :goto_0
    const-string v2, "@content="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v2, :cond_6

    .line 322
    const-string v2, "@content="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->TitleInfoContentTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_4
    :goto_1
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    const-string v2, "en"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 326
    :cond_6
    const-string v0, ""

    goto :goto_1

    .line 330
    :cond_7
    const-string v2, "@collage="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 331
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v2, :cond_8

    .line 332
    const-string v2, "@collage="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->CollageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 336
    :cond_8
    const-string v0, ""

    goto :goto_1

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_a

    .line 344
    const-string v0, " "

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 346
    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method d()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;-><init>()V

    .line 495
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userDropShadowColor:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userFillColor:Ljava/lang/String;

    .line 497
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userFont:Ljava/lang/String;

    .line 498
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userStrokeColor:Ljava/lang/String;

    .line 499
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCollageTitleInfoOf;->userText:Ljava/lang/String;

    .line 500
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->g:Ljava/lang/String;

    return-object v0
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
    .line 91
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->f:Ljava/util/List;

    return-object v0
.end method

.method public getRectangle()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const-string v0, ""

    .line 100
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    :cond_2
    :goto_1
    const-string v1, "@content="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "@content="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->TitleInfoContentTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    const-string v2, "en"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->m:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_5
    const-string v1, "@collage="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "@collage="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->CollageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitleDropShadowColor()I
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 217
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 218
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 219
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 221
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleFillColor()I
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 154
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 155
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 156
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 157
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 159
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleMaxLength()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->j:I

    return v0
.end method

.method public getTitleMaxLines()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->l:I

    return v0
.end method

.method public getTitleRecommendLength()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->k:I

    return v0
.end method

.method public getTitleStrokeColor()I
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 186
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 187
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 189
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->n:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->a:Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;

    invoke-interface {v0}, Lcom/nexstreaming/nexeditorsdk/nexCollage$CollageInfoChangedListener;->TitleInfoChanged()V

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setTitleDropShadowColor(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 228
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 229
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 230
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 231
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 233
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    .line 239
    :goto_0
    return v7

    .line 237
    :cond_0
    const-string v4, "#%8X"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitleFillColor(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 166
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 167
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 169
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 171
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    .line 177
    :goto_0
    return v7

    .line 175
    :cond_0
    const-string v4, "#%8X"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitleFont(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->o:Ljava/lang/String;

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public setTitleStrokeColor(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 196
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 197
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 198
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 199
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 201
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    .line 208
    :goto_0
    return v7

    .line 205
    :cond_0
    const-string v4, "#%8X"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCollageTitleInfo;->q:Ljava/lang/String;

    goto :goto_0
.end method
