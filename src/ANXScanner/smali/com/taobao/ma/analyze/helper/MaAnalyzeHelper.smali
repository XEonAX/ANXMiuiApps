.class public Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;
.super Ljava/lang/Object;
.source "MaAnalyzeHelper.java"


# static fields
.field private static final ANTI_FAKE_URI_HOST:Ljava/lang/String; = "s.tb.cn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildYuvImage([BLandroid/hardware/Camera;)Landroid/graphics/YuvImage;
    .locals 8
    .param p0, "data"    # [B
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    .line 89
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v5

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 95
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v6, :cond_0

    .line 98
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 99
    .local v7, "size":Landroid/hardware/Camera$Size;
    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, v7, Landroid/hardware/Camera$Size;->width:I

    if-lez v1, :cond_2

    iget v1, v7, Landroid/hardware/Camera$Size;->height:I

    if-lez v1, :cond_2

    .line 104
    new-instance v0, Landroid/graphics/YuvImage;

    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .restart local v0    # "yuvImage":Landroid/graphics/YuvImage;
    :cond_2
    move-object v5, v0

    .line 107
    goto :goto_0
.end method

.method public static getMaType(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaType;
    .locals 2
    .param p0, "wapperResult"    # Lcom/taobao/ma/common/result/MaWapperResult;

    .prologue
    .line 116
    iget v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 144
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 118
    :sswitch_0
    iget-object v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isMedicineCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->MEDICINE:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->EXPRESS:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 124
    :sswitch_1
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 126
    :sswitch_2
    iget-object v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isTBAntiFakeCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->TB_ANTI_FAKE:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 129
    :cond_2
    iget v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isGen3(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->GEN3:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 132
    :cond_3
    iget v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->is4GCode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->TB_4G:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 135
    :cond_4
    iget v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    invoke-static {v0}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->isDMCode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->DM:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 138
    :cond_5
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 140
    :sswitch_3
    iget v0, p0, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public static is4GCode(I)Z
    .locals 1
    .param p0, "subType"    # I

    .prologue
    .line 61
    const/16 v0, 0x802

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is4GCode(ILcom/taobao/ma/common/result/MaType;I)Z
    .locals 2
    .param p0, "decodeType"    # I
    .param p1, "maType"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "decodeSubType"    # I

    .prologue
    const/4 v0, 0x1

    .line 189
    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->TB_4G:Lcom/taobao/ma/common/result/MaType;

    if-ne p1, v1, :cond_0

    const/16 v1, 0x802

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBarCode(II)Z
    .locals 1
    .param p0, "decodeType"    # I
    .param p1, "decodeSubType"    # I

    .prologue
    .line 149
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDMCode(I)Z
    .locals 1
    .param p0, "subType"    # I

    .prologue
    .line 79
    const/16 v0, 0x400

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDMCode(ILcom/taobao/ma/common/result/MaType;I)Z
    .locals 2
    .param p0, "decodeType"    # I
    .param p1, "maType"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "decodeSubType"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->DM:Lcom/taobao/ma/common/result/MaType;

    if-ne p1, v1, :cond_0

    const/16 v1, 0x400

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGen3(I)Z
    .locals 1
    .param p0, "subType"    # I

    .prologue
    .line 70
    const v0, 0x8000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGen3Code(ILcom/taobao/ma/common/result/MaType;I)Z
    .locals 2
    .param p0, "decodeType"    # I
    .param p1, "maType"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "decodeSubType"    # I

    .prologue
    const/4 v0, 0x1

    .line 179
    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->GEN3:Lcom/taobao/ma/common/result/MaType;

    if-ne p1, v1, :cond_0

    const v1, 0x8000

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMedicineCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    const-string v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_4

    :cond_2
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 28
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isQrCode(ILcom/taobao/ma/common/result/MaType;I)Z
    .locals 2
    .param p0, "decodeType"    # I
    .param p1, "maType"    # Lcom/taobao/ma/common/result/MaType;
    .param p2, "decodeSubType"    # I

    .prologue
    const/4 v0, 0x1

    .line 159
    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    if-ne p1, v1, :cond_0

    const/16 v1, 0x200

    if-ne p2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTBAntiFakeCode(ILcom/taobao/ma/common/result/MaType;)Z
    .locals 2
    .param p0, "decodeType"    # I
    .param p1, "maType"    # Lcom/taobao/ma/common/result/MaType;

    .prologue
    const/4 v0, 0x1

    .line 169
    if-ne p0, v0, :cond_0

    sget-object v1, Lcom/taobao/ma/common/result/MaType;->TB_ANTI_FAKE:Lcom/taobao/ma/common/result/MaType;

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTBAntiFakeCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    const-string v1, "s.tb.cn"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method
