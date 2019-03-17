.class public Lcom/xiaomi/scanner/module/code/codec/DecodeParams;
.super Ljava/lang/Object;
.source "DecodeParams.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private decodeRect:Landroid/graphics/Rect;

.field private mYuvImage:Landroid/graphics/YuvImage;

.field private previewData:[B

.field private previewFormat:I

.field private previewHeight:I

.field private previewOrientation:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DecodeParams"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>([BIIIILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    .line 23
    iput p2, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    .line 24
    iput p3, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    .line 25
    iput p4, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    .line 26
    iput p5, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    .line 27
    iput-object p6, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->decodeRect:Landroid/graphics/Rect;

    .line 28
    return-void
.end method


# virtual methods
.method public getYuvImage()Landroid/graphics/YuvImage;
    .locals 27

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    if-nez v2, :cond_15

    .line 32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    const/16 v4, 0x11

    if-ne v2, v4, :cond_16

    .line 33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    array-length v4, v4

    if-le v2, v4, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 166
    :goto_0
    return-object v2

    .line 37
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->decodeRect:Landroid/graphics/Rect;

    .line 38
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_4

    .line 39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_3

    .line 40
    :cond_1
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v9, v2, v4, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    .restart local v9    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_1
    iget v2, v9, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 58
    iget v2, v9, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 59
    iget v2, v9, Landroid/graphics/Rect;->right:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 60
    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 61
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 62
    .local v5, "width":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 63
    .local v6, "height":I
    mul-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v3, v2, [B

    .line 66
    .local v3, "rotatedData":[B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_a

    .line 67
    const/16 v25, 0x0

    .local v25, "y":I
    :goto_2
    move/from16 v0, v25

    if-ge v0, v6, :cond_8

    .line 68
    const/16 v24, 0x0

    .local v24, "x":I
    :goto_3
    move/from16 v0, v24

    if-ge v0, v5, :cond_7

    .line 69
    iget v2, v9, Landroid/graphics/Rect;->top:I

    add-int v11, v2, v25

    .line 70
    .local v11, "src_x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v9, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v24

    sub-int v12, v2, v4

    .line 71
    .local v12, "src_y":I
    mul-int v2, v25, v5

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 68
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 42
    .end local v3    # "rotatedData":[B
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_3
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v9, v2, v4, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v9    # "rect":Landroid/graphics/Rect;
    goto :goto_1

    .line 46
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_6

    .line 47
    :cond_5
    new-instance v23, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-direct {v0, v2, v4, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .local v23, "wholeImage":Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "rectangle is not inside the image"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v23    # "wholeImage":Landroid/graphics/Rect;
    :cond_6
    new-instance v23, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-direct {v0, v2, v4, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v23    # "wholeImage":Landroid/graphics/Rect;
    goto :goto_4

    .line 67
    .end local v23    # "wholeImage":Landroid/graphics/Rect;
    .restart local v3    # "rotatedData":[B
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v24    # "x":I
    .restart local v25    # "y":I
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 74
    .end local v24    # "x":I
    :cond_8
    div-int/lit8 v17, v6, 0x2

    .line 75
    .local v17, "uvheight":I
    div-int/lit8 v20, v5, 0x2

    .line 76
    .local v20, "uvwidth":I
    mul-int v14, v5, v6

    .line 77
    .local v14, "uoffset":I
    add-int/lit8 v22, v14, 0x1

    .line 78
    .local v22, "voffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v13, v2, v4

    .line 79
    .local v13, "uPerviewOffset":I
    add-int/lit8 v21, v13, 0x1

    .line 80
    .local v21, "vPerviewOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    div-int/lit8 v15, v2, 0x2

    .line 81
    .local v15, "uvPerviewHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    div-int/lit8 v16, v2, 0x2

    .line 82
    .local v16, "uvPerviewWidth":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    div-int/lit8 v18, v2, 0x2

    .line 83
    .local v18, "uvleft":I
    iget v2, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v19, v2, 0x2

    .line 84
    .local v19, "uvtop":I
    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 85
    const/16 v24, 0x0

    .restart local v24    # "x":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 86
    add-int v11, v19, v25

    .line 87
    .restart local v11    # "src_x":I
    add-int/lit8 v2, v15, -0x1

    add-int v4, v18, v24

    sub-int v12, v2, v4

    .line 88
    .restart local v12    # "src_y":I
    mul-int v2, v12, v16

    add-int/2addr v2, v11

    mul-int/lit8 v10, v2, 0x2

    .line 89
    .local v10, "source":I
    mul-int v2, v25, v20

    add-int v2, v2, v24

    mul-int/lit8 v8, v2, 0x2

    .line 90
    .local v8, "dest":I
    add-int v2, v14, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v13, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 91
    add-int v2, v22, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v21, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 85
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 84
    .end local v8    # "dest":I
    .end local v10    # "source":I
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    :cond_9
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 94
    .end local v13    # "uPerviewOffset":I
    .end local v14    # "uoffset":I
    .end local v15    # "uvPerviewHeight":I
    .end local v16    # "uvPerviewWidth":I
    .end local v17    # "uvheight":I
    .end local v18    # "uvleft":I
    .end local v19    # "uvtop":I
    .end local v20    # "uvwidth":I
    .end local v21    # "vPerviewOffset":I
    .end local v22    # "voffset":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_e

    .line 95
    const/16 v25, 0x0

    .restart local v25    # "y":I
    :goto_7
    move/from16 v0, v25

    if-ge v0, v6, :cond_c

    .line 96
    const/16 v24, 0x0

    .restart local v24    # "x":I
    :goto_8
    move/from16 v0, v24

    if-ge v0, v5, :cond_b

    .line 97
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v25

    sub-int v11, v2, v4

    .line 98
    .restart local v11    # "src_x":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int v12, v2, v24

    .line 99
    .restart local v12    # "src_y":I
    mul-int v2, v25, v5

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 96
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 95
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    :cond_b
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 102
    .end local v24    # "x":I
    :cond_c
    div-int/lit8 v17, v6, 0x2

    .line 103
    .restart local v17    # "uvheight":I
    div-int/lit8 v20, v5, 0x2

    .line 104
    .restart local v20    # "uvwidth":I
    mul-int v14, v5, v6

    .line 105
    .restart local v14    # "uoffset":I
    add-int/lit8 v22, v14, 0x1

    .line 106
    .restart local v22    # "voffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v13, v2, v4

    .line 107
    .restart local v13    # "uPerviewOffset":I
    add-int/lit8 v21, v13, 0x1

    .line 108
    .restart local v21    # "vPerviewOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    div-int/lit8 v16, v2, 0x2

    .line 109
    .restart local v16    # "uvPerviewWidth":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    div-int/lit8 v18, v2, 0x2

    .line 110
    .restart local v18    # "uvleft":I
    iget v2, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v19, v2, 0x2

    .line 111
    .restart local v19    # "uvtop":I
    const/16 v25, 0x0

    :goto_9
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 112
    const/16 v24, 0x0

    .restart local v24    # "x":I
    :goto_a
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 113
    add-int/lit8 v2, v16, -0x1

    add-int v4, v19, v25

    sub-int v11, v2, v4

    .line 114
    .restart local v11    # "src_x":I
    add-int v12, v18, v24

    .line 115
    .restart local v12    # "src_y":I
    mul-int v2, v12, v16

    add-int/2addr v2, v11

    mul-int/lit8 v10, v2, 0x2

    .line 116
    .restart local v10    # "source":I
    mul-int v2, v25, v20

    add-int v2, v2, v24

    mul-int/lit8 v8, v2, 0x2

    .line 117
    .restart local v8    # "dest":I
    add-int v2, v14, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v13, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 118
    add-int v2, v22, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v21, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 112
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 111
    .end local v8    # "dest":I
    .end local v10    # "source":I
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    :cond_d
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 121
    .end local v13    # "uPerviewOffset":I
    .end local v14    # "uoffset":I
    .end local v16    # "uvPerviewWidth":I
    .end local v17    # "uvheight":I
    .end local v18    # "uvleft":I
    .end local v19    # "uvtop":I
    .end local v20    # "uvwidth":I
    .end local v21    # "vPerviewOffset":I
    .end local v22    # "voffset":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_12

    .line 122
    const/16 v25, 0x0

    .restart local v25    # "y":I
    :goto_b
    move/from16 v0, v25

    if-ge v0, v6, :cond_10

    .line 123
    const/16 v24, 0x0

    .restart local v24    # "x":I
    :goto_c
    move/from16 v0, v24

    if-ge v0, v5, :cond_f

    .line 124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v9, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v24

    sub-int v11, v2, v4

    .line 125
    .restart local v11    # "src_x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v25

    sub-int v12, v2, v4

    .line 126
    .restart local v12    # "src_y":I
    mul-int v2, v25, v5

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 123
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 122
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 129
    .end local v24    # "x":I
    :cond_10
    div-int/lit8 v17, v6, 0x2

    .line 130
    .restart local v17    # "uvheight":I
    div-int/lit8 v20, v5, 0x2

    .line 131
    .restart local v20    # "uvwidth":I
    mul-int v14, v5, v6

    .line 132
    .restart local v14    # "uoffset":I
    add-int/lit8 v22, v14, 0x1

    .line 133
    .restart local v22    # "voffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v13, v2, v4

    .line 134
    .restart local v13    # "uPerviewOffset":I
    add-int/lit8 v21, v13, 0x1

    .line 135
    .restart local v21    # "vPerviewOffset":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    div-int/lit8 v15, v2, 0x2

    .line 136
    .restart local v15    # "uvPerviewHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    div-int/lit8 v16, v2, 0x2

    .line 137
    .restart local v16    # "uvPerviewWidth":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    div-int/lit8 v18, v2, 0x2

    .line 138
    .restart local v18    # "uvleft":I
    iget v2, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v19, v2, 0x2

    .line 139
    .restart local v19    # "uvtop":I
    const/16 v25, 0x0

    :goto_d
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 140
    const/16 v24, 0x0

    .restart local v24    # "x":I
    :goto_e
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 141
    add-int/lit8 v2, v16, -0x1

    add-int v4, v18, v24

    sub-int v11, v2, v4

    .line 142
    .restart local v11    # "src_x":I
    add-int/lit8 v2, v15, -0x1

    add-int v4, v19, v25

    sub-int v12, v2, v4

    .line 143
    .restart local v12    # "src_y":I
    mul-int v2, v12, v16

    add-int/2addr v2, v11

    mul-int/lit8 v10, v2, 0x2

    .line 144
    .restart local v10    # "source":I
    mul-int v2, v25, v20

    add-int v2, v2, v24

    mul-int/lit8 v8, v2, 0x2

    .line 145
    .restart local v8    # "dest":I
    add-int v2, v14, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v13, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 146
    add-int v2, v22, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v7, v21, v10

    aget-byte v4, v4, v7

    aput-byte v4, v3, v2

    .line 140
    add-int/lit8 v24, v24, 0x1

    goto :goto_e

    .line 139
    .end local v8    # "dest":I
    .end local v10    # "source":I
    .end local v11    # "src_x":I
    .end local v12    # "src_y":I
    :cond_11
    add-int/lit8 v25, v25, 0x1

    goto :goto_d

    .line 150
    .end local v13    # "uPerviewOffset":I
    .end local v14    # "uoffset":I
    .end local v15    # "uvPerviewHeight":I
    .end local v16    # "uvPerviewWidth":I
    .end local v17    # "uvheight":I
    .end local v18    # "uvleft":I
    .end local v19    # "uvtop":I
    .end local v20    # "uvwidth":I
    .end local v21    # "vPerviewOffset":I
    .end local v22    # "voffset":I
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_12
    const/16 v25, 0x0

    .restart local v25    # "y":I
    :goto_f
    move/from16 v0, v25

    if-ge v0, v6, :cond_13

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    iget v4, v9, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int/2addr v4, v7

    iget v7, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    mul-int v7, v25, v5

    invoke-static {v2, v4, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int/lit8 v25, v25, 0x1

    goto :goto_f

    .line 153
    :cond_13
    div-int/lit8 v17, v6, 0x2

    .line 154
    .restart local v17    # "uvheight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v13, v2, v4

    .line 155
    .restart local v13    # "uPerviewOffset":I
    iget v2, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v19, v2, 0x2

    .line 156
    .restart local v19    # "uvtop":I
    const/16 v25, 0x0

    :goto_10
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    .line 157
    add-int v12, v25, v19

    .line 158
    .restart local v12    # "src_y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int/2addr v4, v12

    add-int/2addr v4, v13

    iget v7, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    mul-int v7, v25, v5

    invoke-static {v2, v4, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 161
    .end local v12    # "src_y":I
    :cond_14
    new-instance v2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    .line 166
    .end local v3    # "rotatedData":[B
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v9    # "rect":Landroid/graphics/Rect;
    .end local v13    # "uPerviewOffset":I
    .end local v17    # "uvheight":I
    .end local v19    # "uvtop":I
    .end local v25    # "y":I
    :cond_15
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    goto/16 :goto_0

    .line 163
    :cond_16
    sget-object v2, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previewFormat:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_11
.end method
