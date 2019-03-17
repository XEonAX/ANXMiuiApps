.class public abstract Lcom/miui/gallery/util/portJava/RectangularShape;
.super Ljava/lang/Object;
.source "RectangularShape.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 366
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getBounds()Lcom/miui/gallery/util/portJava/Rectangle;
    .locals 24

    .prologue
    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/util/portJava/RectangularShape;->getWidth()D

    move-result-wide v4

    .line 312
    .local v4, "width":D
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/util/portJava/RectangularShape;->getHeight()D

    move-result-wide v2

    .line 313
    .local v2, "height":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v4, v18

    if-ltz v18, :cond_0

    const-wide/16 v18, 0x0

    cmpg-double v18, v2, v18

    if-gez v18, :cond_1

    .line 314
    :cond_0
    new-instance v18, Lcom/miui/gallery/util/portJava/Rectangle;

    invoke-direct/range {v18 .. v18}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>()V

    .line 322
    :goto_0
    return-object v18

    .line 316
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/util/portJava/RectangularShape;->getX()D

    move-result-wide v6

    .line 317
    .local v6, "x":D
    invoke-virtual/range {p0 .. p0}, Lcom/miui/gallery/util/portJava/RectangularShape;->getY()D

    move-result-wide v12

    .line 318
    .local v12, "y":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 319
    .local v8, "x1":D
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    .line 320
    .local v14, "y1":D
    add-double v18, v6, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 321
    .local v10, "x2":D
    add-double v18, v12, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    .line 322
    .local v16, "y2":D
    new-instance v18, Lcom/miui/gallery/util/portJava/Rectangle;

    double-to-int v0, v8

    move/from16 v19, v0

    double-to-int v0, v14

    move/from16 v20, v0

    sub-double v22, v10, v8

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    sub-double v22, v16, v14

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Lcom/miui/gallery/util/portJava/Rectangle;-><init>(IIII)V

    goto :goto_0
.end method

.method public abstract getHeight()D
.end method

.method public abstract getWidth()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method
