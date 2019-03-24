.class Lmiui/imagefilters/BlendImageFilter$25;
.super Lmiui/imagefilters/BlendImageFilter$Blender;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 513
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$25;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$Blender;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method

.method private blendChannel(FFF)F
    .locals 2
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "alpha"    # F

    .line 532
    mul-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blendColor(II)I
    .locals 17
    .param p1, "dstArgb"    # I
    .param p2, "srcArgb"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 515
    move/from16 v2, p2

    ushr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 516
    .local v3, "srcA":I
    ushr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 517
    .local v4, "srcR":I
    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 518
    .local v5, "srcG":I
    and-int/lit16 v6, v2, 0xff

    .line 520
    .local v6, "srcB":I
    ushr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    .line 521
    .local v7, "dstR":I
    ushr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 522
    .local v8, "dstG":I
    and-int/lit16 v9, v1, 0xff

    .line 524
    .local v9, "dstB":I
    int-to-float v10, v7

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    int-to-float v12, v4

    div-float/2addr v12, v11

    int-to-float v13, v3

    div-float/2addr v13, v11

    invoke-direct {v0, v10, v12, v13}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-static {v13, v10, v12}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 525
    .local v10, "srcBlendedR":I
    int-to-float v14, v8

    div-float/2addr v14, v11

    int-to-float v15, v5

    div-float/2addr v15, v11

    int-to-float v12, v3

    div-float/2addr v12, v11

    invoke-direct {v0, v14, v15, v12}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v12, v14}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v12

    mul-float/2addr v12, v11

    float-to-int v12, v12

    .line 526
    .local v12, "srcBlendedG":I
    int-to-float v15, v9

    div-float/2addr v15, v11

    int-to-float v13, v6

    div-float/2addr v13, v11

    int-to-float v14, v3

    div-float/2addr v14, v11

    invoke-direct {v0, v15, v13, v14}, Lmiui/imagefilters/BlendImageFilter$25;->blendChannel(FFF)F

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v13, v15}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v13

    mul-float/2addr v13, v11

    float-to-int v11, v13

    .line 528
    .local v11, "srcBlendedB":I
    const/high16 v13, -0x1000000

    and-int/2addr v13, v2

    shl-int/lit8 v14, v10, 0x10

    or-int/2addr v13, v14

    shl-int/lit8 v14, v12, 0x8

    or-int/2addr v13, v14

    or-int/2addr v13, v11

    return v13
.end method
