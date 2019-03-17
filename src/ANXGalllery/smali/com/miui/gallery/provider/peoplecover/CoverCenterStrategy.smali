.class public Lcom/miui/gallery/provider/peoplecover/CoverCenterStrategy;
.super Lcom/miui/gallery/provider/peoplecover/BaseStrategy;
.source "CoverCenterStrategy.java"


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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v3

    .line 19
    :cond_1
    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 21
    .local v1, "orientation":I
    invoke-virtual {p0, v1}, Lcom/miui/gallery/provider/peoplecover/CoverCenterStrategy;->isXYReversed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 22
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 23
    .local v2, "start":F
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float v0, v2, v5

    .line 28
    .local v0, "end":F
    :goto_1
    const/high16 v5, 0x3e800000    # 0.25f

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_0

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v5, v2, v5

    if-gtz v5, :cond_0

    move v3, v4

    .line 31
    goto :goto_0

    .line 25
    .end local v0    # "end":F
    .end local v2    # "start":F
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 26
    .restart local v2    # "start":F
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    add-float v0, v2, v5

    .restart local v0    # "end":F
    goto :goto_1
.end method
