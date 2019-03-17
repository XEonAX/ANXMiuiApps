.class public Lcom/miui/gallery/provider/peoplecover/CoverEyeYStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverEyeYStrategy.java"


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
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v3

    .line 19
    :cond_1
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 21
    .local v2, "orientation":I
    invoke-virtual {p0, v2}, Lcom/miui/gallery/provider/peoplecover/CoverEyeYStrategy;->isXYReversed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    sub-float v0, v4, v5

    .line 23
    .local v0, "eyeh":F
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 28
    .local v1, "h":F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 29
    const/4 v3, 0x1

    goto :goto_0

    .line 25
    .end local v0    # "eyeh":F
    .end local v1    # "h":F
    :cond_2
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    sub-float v0, v4, v5

    .line 26
    .restart local v0    # "eyeh":F
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .restart local v1    # "h":F
    goto :goto_1
.end method
