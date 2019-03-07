.class public Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;
.super Ljava/lang/Object;
.source "ColorArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final COLOR_THRESHOLD_MINIMUM_PERCENTAGE:D

.field private final EDGE_COLOR_DISCARD_THRESHOLD:D

.field private final MINIMUM_SATURATION_THRESHOLD:F

.field private mBackgroundColor:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDetailColor:Ljava/lang/Integer;

.field private mImageColors:Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyBackGround:Z

.field private mPrimaryColor:Ljava/lang/Integer;

.field private mSecondaryColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "onlyBackGround"    # Z

    .prologue
    const/16 v3, 0x78

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    iput-wide v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->COLOR_THRESHOLD_MINIMUM_PERCENTAGE:D

    .line 29
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->EDGE_COLOR_DISCARD_THRESHOLD:D

    .line 30
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->MINIMUM_SATURATION_THRESHOLD:F

    .line 37
    iput-object v2, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    .line 38
    iput-object v2, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    .line 39
    iput-object v2, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mOnlyBackGround:Z

    .line 47
    const/4 v0, 0x0

    invoke-static {p1, v3, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBitmap:Landroid/graphics/Bitmap;

    .line 48
    iput-boolean p2, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mOnlyBackGround:Z

    .line 49
    invoke-direct {p0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->analyzeImage()V

    .line 50
    return-void
.end method

.method private analyzeImage()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x1000000

    .line 63
    invoke-direct {p0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->findEdgeColor()I

    move-result v1

    iput v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    .line 64
    iget-boolean v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mOnlyBackGround:Z

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mImageColors:Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->findTextColors(Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;)V

    .line 66
    iget v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDarkColor(I)Z

    move-result v0

    .line 68
    .local v0, "hasDarkBackground":Z
    iget-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to detect primary color in image"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_3

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 78
    sget-object v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to detect secondary in image"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz v0, :cond_4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    .line 86
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 87
    sget-object v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to detect detail color in image"

    invoke-static {v1, v2}, Lcom/miui/screenrecorder/tools/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v0, :cond_5

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    .line 95
    .end local v0    # "hasDarkBackground":Z
    :cond_2
    :goto_2
    return-void

    .line 73
    .restart local v0    # "hasDarkBackground":Z
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    goto :goto_0

    .line 82
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    goto :goto_1

    .line 91
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    goto :goto_2
.end method

.method private colorWithMinimumSaturation(IF)I
    .locals 6
    .param p1, "color"    # I
    .param p2, "minSaturation"    # F

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    new-array v0, v2, [F

    .line 229
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 230
    aget v1, v0, v4

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    .line 231
    new-array v1, v2, [F

    aget v2, v0, v3

    aput v2, v1, v3

    aput p2, v1, v4

    aget v2, v0, v5

    aput v2, v1, v5

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 234
    .end local p1    # "color":I
    :cond_0
    return p1
.end method

.method private findEdgeColor()I
    .locals 24

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 99
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 101
    .local v17, "width":I
    new-instance v20, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;

    invoke-direct/range {v20 .. v20}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mImageColors:Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;

    .line 102
    new-instance v11, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;

    invoke-direct {v11}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;-><init>()V

    .line 103
    .local v11, "leftImageColors":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 104
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v7, :cond_1

    .line 105
    if-nez v18, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->add(Ljava/lang/Object;)V

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mImageColors:Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->add(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 112
    .end local v19    # "y":I
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v16, "sortedColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;>;"
    int-to-double v0, v7

    move-wide/from16 v20, v0

    const-wide v22, 0x3f847ae147ae147bL    # 0.01

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v14, v0

    .line 115
    .local v14, "randomColorThreshold":I
    invoke-virtual {v11}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 116
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 117
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 118
    .local v4, "color":Ljava/lang/Integer;
    invoke-virtual {v11, v4}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->getCount(Ljava/lang/Object;)I

    move-result v5

    .line 119
    .local v5, "colorCount":I
    if-lt v5, v14, :cond_3

    .line 123
    new-instance v6, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v6, v0, v1, v5}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;-><init>(Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;II)V

    .line 124
    .local v6, "container":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    .end local v4    # "color":Ljava/lang/Integer;
    .end local v5    # "colorCount":I
    .end local v6    # "container":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 130
    .local v15, "sortedColorIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 131
    const/high16 v20, -0x1000000

    .line 152
    :goto_3
    return v20

    .line 134
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    .line 135
    .local v13, "proposedEdgeColor":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    invoke-virtual {v13}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->isBlackOrWhite()Z

    move-result v20

    if-nez v20, :cond_6

    .line 136
    invoke-virtual {v13}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getColor()I

    move-result v20

    goto :goto_3

    .line 139
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 140
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    .line 141
    .local v12, "nextProposedColor":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    invoke-virtual {v12}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v13}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v8, v20, v22

    .line 142
    .local v8, "edgeColorRatio":D
    const-wide v20, 0x3fd3333333333333L    # 0.3

    cmpg-double v20, v8, v20

    if-gtz v20, :cond_8

    .line 152
    .end local v8    # "edgeColorRatio":D
    .end local v12    # "nextProposedColor":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    :cond_7
    :goto_4
    invoke-virtual {v13}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getColor()I

    move-result v20

    goto :goto_3

    .line 146
    .restart local v8    # "edgeColorRatio":D
    .restart local v12    # "nextProposedColor":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    :cond_8
    invoke-virtual {v12}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->isBlackOrWhite()Z

    move-result v20

    if-nez v20, :cond_6

    .line 147
    move-object v13, v12

    .line 148
    goto :goto_4
.end method

.method private findTextColors(Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "colors":Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;, "Lcom/miui/screenrecorder/colorart/src/colorart/HashBag<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 158
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "sortedColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;>;"
    iget v7, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    invoke-direct {p0, v7}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDarkColor(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v4, 0x1

    .line 161
    .local v4, "findDarkTextColor":Z
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 163
    .local v2, "currentColor":I
    const v7, 0x3e19999a    # 0.15f

    invoke-direct {p0, v2, v7}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->colorWithMinimumSaturation(IF)I

    move-result v2

    .line 164
    invoke-direct {p0, v2}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDarkColor(I)Z

    move-result v7

    if-ne v7, v4, :cond_0

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/miui/screenrecorder/colorart/src/colorart/HashBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 166
    .local v0, "colorCount":I
    new-instance v1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;-><init>(Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;II)V

    .line 167
    .local v1, "container":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v0    # "colorCount":I
    .end local v1    # "container":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    .end local v2    # "currentColor":I
    .end local v4    # "findDarkTextColor":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 171
    .restart local v4    # "findDarkTextColor":Z
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 173
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    .line 174
    .local v3, "currentContainer":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    invoke-virtual {v3}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getColor()I

    move-result v2

    .line 175
    .restart local v2    # "currentColor":I
    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    if-nez v8, :cond_4

    .line 176
    iget v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    invoke-direct {p0, v2, v8}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isContrastingColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    goto :goto_1

    .line 179
    :cond_4
    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    if-nez v8, :cond_5

    .line 180
    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v2}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDistinctColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    .line 181
    invoke-direct {p0, v2, v8}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isContrastingColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    goto :goto_1

    .line 185
    :cond_5
    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    if-nez v8, :cond_3

    .line 186
    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v2}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDistinctColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    .line 187
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v2}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isDistinctColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    .line 188
    invoke-direct {p0, v2, v8}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->isContrastingColor(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    .line 195
    .end local v2    # "currentColor":I
    .end local v3    # "currentContainer":Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
    :cond_6
    return-void
.end method

.method private isContrastingColor(II)Z
    .locals 24
    .param p1, "backgroundColor"    # I
    .param p2, "foregroundColor"    # I

    .prologue
    .line 248
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v8, v20, v22

    .line 249
    .local v8, "br":D
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v6, v20, v22

    .line 250
    .local v6, "bg":D
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v4, v20, v22

    .line 252
    .local v4, "bb":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v18, v20, v22

    .line 253
    .local v18, "fr":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v16, v20, v22

    .line 254
    .local v16, "fg":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v14, v20, v22

    .line 257
    .local v14, "fb":D
    const-wide v20, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v20, v20, v8

    const-wide v22, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v22, v22, v6

    add-double v20, v20, v22

    const-wide v22, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v22, v22, v4

    add-double v2, v20, v22

    .line 258
    .local v2, "bLum":D
    const-wide v20, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v20, v20, v18

    const-wide v22, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v22, v22, v16

    add-double v20, v20, v22

    const-wide v22, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v22, v22, v14

    add-double v12, v20, v22

    .line 262
    .local v12, "fLum":D
    cmpl-double v20, v2, v12

    if-lez v20, :cond_0

    .line 263
    const-wide v20, 0x3fa999999999999aL    # 0.05

    add-double v20, v20, v2

    const-wide v22, 0x3fa999999999999aL    # 0.05

    add-double v22, v22, v12

    div-double v10, v20, v22

    .line 268
    .local v10, "contrast":D
    :goto_0
    const-wide v20, 0x3ff999999999999aL    # 1.6

    cmpl-double v20, v10, v20

    if-lez v20, :cond_1

    const/16 v20, 0x1

    :goto_1
    return v20

    .line 265
    .end local v10    # "contrast":D
    :cond_0
    const-wide v20, 0x3fa999999999999aL    # 0.05

    add-double v20, v20, v12

    const-wide v22, 0x3fa999999999999aL    # 0.05

    add-double v22, v22, v2

    div-double v10, v20, v22

    .restart local v10    # "contrast":D
    goto :goto_0

    .line 268
    :cond_1
    const/16 v20, 0x0

    goto :goto_1
.end method

.method private isDarkColor(I)Z
    .locals 12
    .param p1, "color"    # I

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-double v8, v8

    div-double v6, v8, v10

    .line 239
    .local v6, "r":D
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-double v8, v8

    div-double v2, v8, v10

    .line 240
    .local v2, "g":D
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-double v8, v8

    div-double v0, v8, v10

    .line 242
    .local v0, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v6

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v0

    add-double v4, v8, v10

    .line 244
    .local v4, "lum":D
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v4, v8

    if-gez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private isDistinctColor(II)Z
    .locals 24
    .param p1, "colorA"    # I
    .param p2, "colorB"    # I

    .prologue
    .line 272
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v14, v20, v22

    .line 273
    .local v14, "r":D
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v10, v20, v22

    .line 274
    .local v10, "g":D
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v6, v20, v22

    .line 275
    .local v6, "b":D
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v2, v20, v22

    .line 277
    .local v2, "a":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v16, v20, v22

    .line 278
    .local v16, "r1":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v12, v20, v22

    .line 279
    .local v12, "g1":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v8, v20, v22

    .line 280
    .local v8, "b1":D
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x406fe00000000000L    # 255.0

    div-double v4, v20, v22

    .line 282
    .local v4, "a1":D
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    .line 284
    .local v18, "threshold":D
    sub-double v20, v14, v16

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    cmpl-double v20, v20, v18

    if-gtz v20, :cond_0

    sub-double v20, v10, v12

    .line 285
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    cmpl-double v20, v20, v18

    if-gtz v20, :cond_0

    sub-double v20, v6, v8

    .line 286
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    cmpl-double v20, v20, v18

    if-gtz v20, :cond_0

    sub-double v20, v2, v4

    .line 287
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    cmpl-double v20, v20, v18

    if-lez v20, :cond_2

    .line 290
    :cond_0
    sub-double v20, v14, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    sub-double v20, v14, v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    sub-double v20, v16, v12

    .line 291
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    sub-double v20, v16, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    .line 292
    const/16 v20, 0x0

    .line 298
    :goto_0
    return v20

    .line 295
    :cond_1
    const/16 v20, 0x1

    goto :goto_0

    .line 298
    :cond_2
    const/16 v20, 0x0

    goto :goto_0
.end method


# virtual methods
.method public colorBurn(IF)I
    .locals 7
    .param p1, "RGBValues"    # I
    .param p2, "level"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 54
    .local v2, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 55
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 56
    .local v0, "blue":I
    int-to-float v3, v2

    sub-float v4, v6, p2

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 57
    int-to-float v3, v1

    sub-float v4, v6, p2

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 58
    int-to-float v3, v0

    sub-float v4, v6, p2

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 59
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mBackgroundColor:I

    return v0
.end method

.method public getDetailColor()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mDetailColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mPrimaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;->mSecondaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
