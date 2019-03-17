.class public Lcom/miui/gallery/provider/peoplecover/CoverEyeXStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverEyeXStrategy.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/peoplecover/BaseStrategy;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public isValid(Landroid/database/Cursor;)Z
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 16
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return v7

    .line 19
    :cond_0
    const/16 v8, 0xb

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 21
    .local v4, "orientation":I
    invoke-virtual {p0, v4}, Lcom/miui/gallery/provider/peoplecover/CoverEyeXStrategy;->isXYReversed(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 22
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 23
    .local v1, "faceStart":F
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    add-float v0, v1, v8

    .line 24
    .local v0, "faceEnd":F
    sub-float v8, v1, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 25
    .local v2, "faceWidth":F
    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    sub-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 26
    .local v3, "leftDistance":F
    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 34
    .local v5, "rightDistance":F
    :goto_1
    sub-float v8, v3, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v2

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    :goto_2
    move v7, v6

    goto :goto_0

    .line 28
    .end local v0    # "faceEnd":F
    .end local v1    # "faceStart":F
    .end local v2    # "faceWidth":F
    .end local v3    # "leftDistance":F
    .end local v5    # "rightDistance":F
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 29
    .restart local v1    # "faceStart":F
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    add-float v0, v1, v8

    .line 30
    .restart local v0    # "faceEnd":F
    sub-float v8, v1, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 31
    .restart local v2    # "faceWidth":F
    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    sub-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 32
    .restart local v3    # "leftDistance":F
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    sub-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .restart local v5    # "rightDistance":F
    goto :goto_1

    :cond_2
    move v6, v7

    .line 34
    goto :goto_2
.end method
