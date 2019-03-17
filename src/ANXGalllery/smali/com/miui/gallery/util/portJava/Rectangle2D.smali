.class public abstract Lcom/miui/gallery/util/portJava/Rectangle2D;
.super Lcom/miui/gallery/util/portJava/RectangularShape;
.source "Rectangle2D.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/miui/gallery/util/portJava/RectangularShape;-><init>()V

    .line 495
    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getX()D

    move-result-wide v0

    .line 633
    .local v0, "x0":D
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getY()D

    move-result-wide v2

    .line 634
    .local v2, "y0":D
    cmpl-double v4, p1, v0

    if-ltz v4, :cond_0

    cmpl-double v4, p3, v2

    if-ltz v4, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getWidth()D

    move-result-wide v4

    add-double/2addr v4, v0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getHeight()D

    move-result-wide v4

    add-double/2addr v4, v2

    cmpg-double v4, p3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    if-ne p1, p0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v1

    .line 890
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/util/portJava/Rectangle2D;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 891
    check-cast v0, Lcom/miui/gallery/util/portJava/Rectangle2D;

    .line 892
    .local v0, "r2d":Lcom/miui/gallery/util/portJava/Rectangle2D;
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getX()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getX()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    .line 893
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getY()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getY()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getWidth()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getWidth()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    .line 895
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getHeight()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "r2d":Lcom/miui/gallery/util/portJava/Rectangle2D;
    :cond_3
    move v1, v2

    .line 897
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getX()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 867
    .local v0, "bits":J
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getY()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 868
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 869
    invoke-virtual {p0}, Lcom/miui/gallery/util/portJava/Rectangle2D;->getHeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 870
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v4, v0, v3

    long-to-int v3, v4

    xor-int/2addr v2, v3

    return v2
.end method
