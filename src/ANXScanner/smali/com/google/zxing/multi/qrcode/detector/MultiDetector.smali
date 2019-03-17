.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Lcom/google/zxing/qrcode/detector/Detector;
.source "MultiDetector.java"


# static fields
.field private static final EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0
    .param p1, "image"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 45
    return-void
.end method


# virtual methods
.method public detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 50
    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 51
    .local v5, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    new-instance v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 52
    .local v0, "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    invoke-virtual {v0, p1}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v3

    .line 54
    .local v3, "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    array-length v6, v3

    if-nez v6, :cond_1

    .line 55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 50
    .end local v0    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .end local v3    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_0
    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/ResultPointCallback;

    move-object v5, v6

    goto :goto_0

    .line 58
    .restart local v0    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .restart local v3    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .restart local v5    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/common/DetectorResult;>;"
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v7, :cond_2

    .line 66
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    sget-object v6, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    .line 69
    :goto_2
    return-object v6

    .line 59
    :cond_2
    aget-object v2, v3, v6

    .line 61
    .local v2, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/zxing/common/DetectorResult;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/zxing/common/DetectorResult;

    goto :goto_2

    .line 62
    .restart local v2    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :catch_0
    move-exception v8

    goto :goto_3
.end method
