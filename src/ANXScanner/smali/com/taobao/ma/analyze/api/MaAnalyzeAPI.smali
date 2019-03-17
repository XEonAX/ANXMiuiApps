.class public Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;
.super Ljava/lang/Object;
.source "MaAnalyzeAPI.java"


# static fields
.field private static mHandler:Lcom/taobao/ma/handler/MaHandler;

.field private static mParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/ma/parser/MaParSer;",
            ">;"
        }
    .end annotation
.end field

.field private static mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/ma/common/result/MaResult;",
            ">;"
        }
    .end annotation
.end field

.field private static whiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://s.tb.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://s.tb.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HTTP://S.TB.CN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HTTPS://S.TB.CN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->whiteList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDefaultDecodeRegion(II)Landroid/graphics/Rect;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 235
    sub-int v4, p0, p1

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 236
    .local v2, "x1":I
    const/4 v3, 0x0

    .line 237
    .local v3, "y1":I
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v1, v4, 0x8

    .line 239
    .local v1, "w1":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int v5, v3, v1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    .local v0, "rect":Landroid/graphics/Rect;
    return-object v0
.end method

.method public static varargs decode(Landroid/graphics/Bitmap;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;
    .locals 9
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "maTypes"    # [Lcom/taobao/ma/common/result/MaType;

    .prologue
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v2, "discernTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 37
    .local v5, "scanMode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 38
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/taobao/ma/common/result/MaType;->getDiscernType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/taobao/ma/common/result/MaType;->getDiscernType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 44
    .local v1, "discernType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v5, v6

    .line 45
    goto :goto_1

    .line 47
    .end local v1    # "discernType":Ljava/lang/Integer;
    :cond_2
    invoke-static {p0, v5}, Lcom/taobao/ma/decode/MaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/taobao/ma/decode/DecodeResult;

    move-result-object v0

    .line 48
    .local v0, "decodeResult":Lcom/taobao/ma/decode/DecodeResult;
    if-eqz v0, :cond_3

    .line 49
    new-instance v6, Lcom/taobao/ma/common/result/MaResult;

    sget-object v7, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    iget-object v8, v0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 52
    :goto_2
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static decode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;)Lcom/taobao/ma/common/result/MaResult;
    .locals 7
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 62
    invoke-static {}, Lcom/taobao/ma/common/result/MaType;->values()[Lcom/taobao/ma/common/result/MaType;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Lcom/taobao/ma/common/result/MaType;

    .line 63
    .local v4, "maTypes":[Lcom/taobao/ma/common/result/MaType;
    const/4 v1, 0x0

    .line 64
    .local v1, "i":I
    invoke-static {}, Lcom/taobao/ma/common/result/MaType;->values()[Lcom/taobao/ma/common/result/MaType;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/ma/common/result/MaType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 65
    .local v5, "type":Lcom/taobao/ma/common/result/MaType;
    aput-object v5, v4, v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v5    # "type":Lcom/taobao/ma/common/result/MaType;
    :cond_0
    invoke-static {p0, p1, v4}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->decode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v6

    return-object v6
.end method

.method public static varargs decode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;
    .locals 12
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "maTypes"    # [Lcom/taobao/ma/common/result/MaType;

    .prologue
    const/4 v7, 0x0

    .line 79
    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-object v7

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 84
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v11

    invoke-static {v10, v11}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->buildDefaultDecodeRegion(II)Landroid/graphics/Rect;

    move-result-object p1

    .line 87
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "discernTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 89
    .local v8, "scanMode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, p2

    if-ge v3, v10, :cond_4

    .line 90
    aget-object v10, p2, v3

    invoke-virtual {v10}, Lcom/taobao/ma/common/result/MaType;->getDiscernType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 91
    aget-object v10, p2, v3

    invoke-virtual {v10}, Lcom/taobao/ma/common/result/MaType;->getDiscernType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 96
    .local v1, "discernType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    or-int/2addr v8, v10

    .line 97
    goto :goto_2

    .line 100
    .end local v1    # "discernType":Ljava/lang/Integer;
    :cond_5
    const-string v10, ""

    sget-object v11, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->whiteList:[Ljava/lang/String;

    invoke-static {p0, p1, v8, v10, v11}, Lcom/taobao/ma/decode/MaDecode;->yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)Lcom/taobao/ma/decode/DecodeResult;

    move-result-object v0

    .line 101
    .local v0, "decodeResult":Lcom/taobao/ma/decode/DecodeResult;
    if-eqz v0, :cond_0

    iget-object v10, v0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v10}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/taobao/ma/decode/DecodeResult;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/ma/common/log/MaLogger;->i(Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->wapperResult(Lcom/taobao/ma/decode/DecodeResult;)Lcom/taobao/ma/common/result/MaWapperResult;

    move-result-object v9

    .line 110
    .local v9, "wapperResult":Lcom/taobao/ma/common/result/MaWapperResult;
    invoke-static {v9}, Lcom/taobao/ma/analyze/helper/MaAnalyzeHelper;->getMaType(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaType;

    move-result-object v5

    .line 111
    .local v5, "maType":Lcom/taobao/ma/common/result/MaType;
    iput-object v5, v9, Lcom/taobao/ma/common/result/MaWapperResult;->maType:Lcom/taobao/ma/common/result/MaType;

    .line 113
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 117
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 118
    const-string v10, "Do not add parser"

    invoke-static {v10}, Lcom/taobao/ma/common/log/MaLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_6
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 124
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 125
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/ma/parser/MaParSer;

    .line 126
    .local v6, "pa":Lcom/taobao/ma/parser/MaParSer;
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/taobao/ma/parser/MaParSer;->decode(Lcom/taobao/ma/common/result/MaWapperResult;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 131
    .end local v6    # "pa":Lcom/taobao/ma/parser/MaParSer;
    :cond_7
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 134
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 136
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_0

    .line 141
    sget-object v10, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mResults:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/ma/common/result/MaResult;

    .line 142
    .local v7, "result":Lcom/taobao/ma/common/result/MaResult;
    invoke-static {v7}, Lcom/taobao/ma/common/usertrack/UTLogger;->userTrack(Lcom/taobao/ma/common/result/MaResult;)V

    goto/16 :goto_0
.end method

.method public static decode(Ljava/lang/String;)Lcom/taobao/ma/common/result/MaResult;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 192
    const/16 v0, 0x200

    invoke-static {p0, v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->decode(Ljava/lang/String;I)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)Lcom/taobao/ma/common/result/MaResult;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "scanMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p0}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v1

    .line 165
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/ma/decode/MaDecode;->codeDecodePictureWithQr(Ljava/lang/String;I)Lcom/taobao/ma/decode/DecodeResult;

    move-result-object v0

    .line 166
    .local v0, "decodeResult":Lcom/taobao/ma/decode/DecodeResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/ma/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "result":Lcom/taobao/ma/common/result/MaResult;
    iget v2, v0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 176
    iget v2, v0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    const v3, 0x8000

    if-ne v2, v3, :cond_2

    .line 177
    new-instance v1, Lcom/taobao/ma/common/result/MaResult;

    .end local v1    # "result":Lcom/taobao/ma/common/result/MaResult;
    sget-object v2, Lcom/taobao/ma/common/result/MaType;->GEN3:Lcom/taobao/ma/common/result/MaType;

    iget-object v3, v0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .restart local v1    # "result":Lcom/taobao/ma/common/result/MaResult;
    :cond_2
    new-instance v1, Lcom/taobao/ma/common/result/MaResult;

    .end local v1    # "result":Lcom/taobao/ma/common/result/MaResult;
    sget-object v2, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    iget-object v3, v0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/taobao/ma/common/result/MaResult;-><init>(Lcom/taobao/ma/common/result/MaType;Ljava/lang/String;)V

    .line 182
    .restart local v1    # "result":Lcom/taobao/ma/common/result/MaResult;
    :cond_3
    invoke-static {v1}, Lcom/taobao/ma/common/usertrack/UTLogger;->userTrack(Lcom/taobao/ma/common/result/MaResult;)V

    goto :goto_0
.end method

.method public static decode([BLandroid/hardware/Camera;)Lcom/taobao/ma/common/result/MaResult;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 154
    sget-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mHandler:Lcom/taobao/ma/handler/MaHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/ma/handler/MaHandler;->decode([BLandroid/hardware/Camera;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerHandler(Lcom/taobao/ma/handler/MaHandler;)V
    .locals 1
    .param p0, "handler"    # Lcom/taobao/ma/handler/MaHandler;

    .prologue
    .line 223
    sget-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mHandler:Lcom/taobao/ma/handler/MaHandler;

    if-nez v0, :cond_0

    .line 224
    sput-object p0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mHandler:Lcom/taobao/ma/handler/MaHandler;

    .line 226
    :cond_0
    return-void
.end method

.method public static registerResultParser(Lcom/taobao/ma/parser/MaParSer;)V
    .locals 1
    .param p0, "parser"    # Lcom/taobao/ma/parser/MaParSer;

    .prologue
    .line 200
    sget-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public static registerResultParser(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/ma/parser/MaParSer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/ma/parser/MaParSer;>;"
    sget-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    return-void
.end method

.method public static removeAllResultParser()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->mParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    return-void
.end method

.method private static wapperResult(Lcom/taobao/ma/decode/DecodeResult;)Lcom/taobao/ma/common/result/MaWapperResult;
    .locals 2
    .param p0, "decodeResult"    # Lcom/taobao/ma/decode/DecodeResult;

    .prologue
    .line 244
    new-instance v0, Lcom/taobao/ma/common/result/MaWapperResult;

    invoke-direct {v0}, Lcom/taobao/ma/common/result/MaWapperResult;-><init>()V

    .line 245
    .local v0, "wapperResult":Lcom/taobao/ma/common/result/MaWapperResult;
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->type:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->type:I

    .line 246
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->subType:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->subType:I

    .line 247
    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->strCode:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->decodeBytes:[B

    iput-object v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->decodeBytes:[B

    .line 249
    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->hiddenData:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->hiddenData:Ljava/lang/String;

    .line 251
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->x:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->x:I

    .line 252
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->y:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->y:I

    .line 253
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->width:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->width:I

    .line 254
    iget v1, p0, Lcom/taobao/ma/decode/DecodeResult;->height:I

    iput v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->height:I

    .line 255
    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->xCorner:[I

    iput-object v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->xCorner:[I

    .line 256
    iget-object v1, p0, Lcom/taobao/ma/decode/DecodeResult;->yCorner:[I

    iput-object v1, v0, Lcom/taobao/ma/common/result/MaWapperResult;->yCorner:[I

    .line 258
    return-object v0
.end method
