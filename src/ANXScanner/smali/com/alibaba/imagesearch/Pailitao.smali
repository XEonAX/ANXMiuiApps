.class public final Lcom/alibaba/imagesearch/Pailitao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;,
        Lcom/alibaba/imagesearch/Pailitao$WebViewEnv;,
        Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;,
        Lcom/alibaba/imagesearch/Pailitao$b;,
        Lcom/alibaba/imagesearch/Pailitao$a;,
        Lcom/alibaba/imagesearch/Pailitao$c;
    }
.end annotation


# static fields
.field public static final REQ_PAILITAO:I = 0x101

.field public static final VERSION:Ljava/lang/String; = "2.4.6.0"

.field private static a:Landroid/os/Handler;

.field private static b:Lcom/alibaba/imagesearch/Pailitao$c;

.field private static c:Ljava/lang/String;

.field public static volatile inited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/alibaba/imagesearch/Pailitao;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/imagesearch/Pailitao;->inited:Z

    new-instance v0, Lcom/alibaba/imagesearch/Pailitao$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$c;-><init>(Lcom/alibaba/imagesearch/Pailitao$1;)V

    sput-object v0, Lcom/alibaba/imagesearch/Pailitao;->b:Lcom/alibaba/imagesearch/Pailitao$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/alibaba/imagesearch/SearchResult;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/SearchResult;-><init>()V

    const-string v2, "\n====== predictSimilarAuction Start ======"

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/SearchResult;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "predictSimilarAuction start by imageBytes, length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    const-string v3, "\n====== Upload Image Start ======"

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/alibaba/imagesearch/utils/c;->a([BLandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "====== Upload Image End ======"

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    :goto_1
    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->imageSpec:Landroid/graphics/Rect;

    iput-object p2, v0, Lcom/alibaba/imagesearch/SearchResult;->imageUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p1, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-direct {v4, v5, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v0, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "current imageKey is null"

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_IMGKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_IMGKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/alibaba/imagesearch/utils/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\npredictSimilarAuction start by CDNUrl, CDNUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "predictSimilarAuction start by imageUri, Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    const-string v3, "\n====== Upload Image Start ======"

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "====== Upload Image End ======"

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/alibaba/imagesearch/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->imageKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "current tfskey is null"

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_TFSKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_TFSKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-static {v0, p3}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/SearchResult;I)V

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/SearchResult;)V

    const-string v1, "\n====== predictSimilarAuction End ======"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/imagesearch/Pailitao;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/imagesearch/a/b;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alibaba/imagesearch/Pailitao;->b(Lcom/alibaba/imagesearch/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alibaba/imagesearch/Pailitao;->c:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "[B",
            "Landroid/graphics/Rect;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "searchImage with activity"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->start()V

    if-nez p6, :cond_2

    :goto_1
    return-void

    :cond_0
    invoke-static {p0}, Lcom/alibaba/imagesearch/Pailitao;->isTaobaoAppInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchImage without activity, standAlone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/alibaba/imagesearch/SearchResult;

    invoke-direct {v1}, Lcom/alibaba/imagesearch/SearchResult;-><init>()V

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    :cond_3
    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_PARAM_ILLEGAL:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/SearchResult;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V

    goto :goto_1

    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v7, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_6

    invoke-static {p3, v7}, Lcom/alibaba/imagesearch/utils/c;->a([BLandroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_IMGKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {p2}, Lcom/alibaba/imagesearch/utils/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_4
    move-object v9, p2

    goto :goto_3

    :cond_7
    invoke-static {p2, v7}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_8
    invoke-static {v9}, Lcom/alibaba/imagesearch/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v1, Lcom/alibaba/imagesearch/Pailitao;->b:Lcom/alibaba/imagesearch/Pailitao$c;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/alibaba/imagesearch/Pailitao$c;->a(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->c()V

    sget-object v11, Lcom/alibaba/imagesearch/Pailitao;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/imagesearch/Pailitao$1;

    move-object v2, p1

    move-object v3, p0

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/imagesearch/Pailitao$1;-><init>(Landroid/webkit/WebView;Landroid/content/Context;ZLcom/alibaba/imagesearch/Pailitao$SearchImageCallback;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_TFSKEY_EMPTY:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V

    goto/16 :goto_1
.end method

.method private static a(Lcom/alibaba/imagesearch/SearchResult;I)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    const-string v1, "mtop.taobao.wsearch.picture.sdk.samsung"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "vm"

    const-string v3, "nw"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "m"

    const-string v3, "api4etao"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "biz_type"

    const-string v3, "pai"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "vendor"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/imagesearch/PailitaoSettings;->vendorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/imagesearch/PailitaoSettings;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "region"

    iget-object v3, p0, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    invoke-static {v3}, Lcom/alibaba/imagesearch/utils/f;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "n"

    if-lez p1, :cond_1

    :goto_0
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "searchimg"

    iget-object v3, p0, Lcom/alibaba/imagesearch/SearchResult;->imageKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    if-eqz v2, :cond_0

    const-string v2, "extraParams"

    const-string v3, "editionCode:notCN"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notInCN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/imagesearch/PailitaoSettings;->notInCN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtop request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/RemoteBusiness;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/RemoteBusiness;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/SearchResult;->isLimited(Lmtopsdk/mtop/domain/MtopResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1a4

    iput v0, p0, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_FLOW_LIMITIED:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_FLOW_LIMITIED:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const/16 p1, 0xa

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct req error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search request finish, use "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->PerformanceLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtopResponse Msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "res.getDataJsonObject is null"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    sget-object v1, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_REQUEST_FAILED:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_REQUEST_SUCCESS:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_REQUEST_SUCCESS:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtop respone = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/alibaba/imagesearch/utils/c;->a(Lorg/json/JSONObject;Lcom/alibaba/imagesearch/SearchResult;)V

    goto/16 :goto_1
.end method

.method private static a(Z)V
    .locals 0

    return-void
.end method

.method private static a(Lcom/alibaba/imagesearch/SearchResult;)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    :cond_2
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    const-string v0, "baichuan SDK init time out ,return"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_BAICHUAN_INITFAILED:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    :goto_2
    return v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBeforeSearch InterruptedException happened e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ali/auth/third/core/context/KernelContext;->isInitOk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/alibaba/baichuan/android/trade/AlibcContext;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "network traffic, return"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_NET_TRAFFIC:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private static b(Lcom/alibaba/imagesearch/a/b;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/imagesearch/a/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "detail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "itemId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->d()V

    return-void
.end method

.method private static c()V
    .locals 4

    const-string v0, "startWebviewTimeout"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/imagesearch/Pailitao;->b:Lcom/alibaba/imagesearch/Pailitao$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v0, Lcom/alibaba/imagesearch/Pailitao;->b:Lcom/alibaba/imagesearch/Pailitao$c;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/imagesearch/Pailitao$c;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static d()V
    .locals 2

    const-string v0, "stopWebviewTimeout"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/imagesearch/Pailitao;->b:Lcom/alibaba/imagesearch/Pailitao$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/imagesearch/Pailitao$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public static decode(Landroid/graphics/Bitmap;)Lcom/taobao/ma/common/result/MaResult;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, "srcImg == null"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogE(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->d()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/ma/common/result/MaType;

    const/4 v1, 0x0

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/taobao/ma/common/result/MaType;->MEDICINE:Lcom/taobao/ma/common/result/MaType;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->decode(Landroid/graphics/Bitmap;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decode([BLandroid/hardware/Camera;)Lcom/taobao/ma/common/result/MaResult;
    .locals 8

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "yuvData is empty"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogE(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->d()V

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/taobao/ma/common/result/MaType;

    const/4 v2, 0x0

    sget-object v3, Lcom/taobao/ma/common/result/MaType;->QR:Lcom/taobao/ma/common/result/MaType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/taobao/ma/common/result/MaType;->PRODUCT:Lcom/taobao/ma/common/result/MaType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/taobao/ma/common/result/MaType;->MEDICINE:Lcom/taobao/ma/common/result/MaType;

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/taobao/ma/analyze/api/MaAnalyzeAPI;->decode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/taobao/ma/common/result/MaType;)Lcom/taobao/ma/common/result/MaResult;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeUse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static e()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "h"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMaQueryUrl(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/alibaba/imagesearch/utils/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettings()Lcom/alibaba/imagesearch/PailitaoSettings;
    .locals 1

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Application;Lcom/alibaba/imagesearch/PailitaoSettings;)V
    .locals 1

    new-instance v0, Lcom/alibaba/imagesearch/Pailitao$3;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/Pailitao$3;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/Pailitao;->initialize(Landroid/app/Application;Lcom/alibaba/imagesearch/PailitaoSettings;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V

    return-void
.end method

.method public static final initialize(Landroid/app/Application;Lcom/alibaba/imagesearch/PailitaoSettings;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, -0x1

    const-string v1, "settings is null or vendorId is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/PailitaoSettings;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->initLogD(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/imagesearch/Pailitao$2;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/imagesearch/Pailitao$2;-><init>(Landroid/app/Application;Lcom/alibaba/imagesearch/Pailitao$PailitaoInitCallback;)V

    invoke-static {p0, v0}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->asyncInit(Landroid/app/Application;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;)V

    goto :goto_0
.end method

.method public static isTaobaoAppInstalled(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string v3, "com.taobao.taobao"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static logout()V
    .locals 2

    const-class v0, Lcom/ali/auth/third/login/LoginService;

    invoke-static {v0}, Lcom/ali/auth/third/core/MemberSDK;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/login/LoginService;

    new-instance v1, Lcom/alibaba/imagesearch/Pailitao$4;

    invoke-direct {v1}, Lcom/alibaba/imagesearch/Pailitao$4;-><init>()V

    invoke-interface {v0, v1}, Lcom/ali/auth/third/login/LoginService;->logout(Lcom/ali/auth/third/login/callback/LogoutCallback;)V

    return-void
.end method

.method public static predictSimilarAuctions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/imagesearch/Auction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v0, v0, p0, v1}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static predictSimilarAuctions([B)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/imagesearch/Auction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, v0, v1}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static release()V
    .locals 0

    invoke-static {}, Lcom/alibaba/baichuan/android/trade/AlibcTradeSDK;->destory()V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->d()V

    return-void
.end method

.method public static searchBy(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchBy(Landroid/content/Context;Landroid/webkit/WebView;[BLjava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Rect;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;[BLcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/app/Activity;Landroid/webkit/WebView;[BLjava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/imagesearch/Pailitao;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;[BLandroid/graphics/Rect;Ljava/util/Map;Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V

    return-void
.end method

.method public static searchImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/Pailitao;->searchImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static searchImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PailitaoHome"

    const-string v1, "searchImage"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==========searchImage by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchImage by empty path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogE(Ljava/lang/String;)V

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCDNUrl fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/alibaba/imagesearch/utils/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/imagesearch/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "extra_image_type"

    const-string v1, "pathtype"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_image"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_rect"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "pageConfig"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->start()V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x101

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static searchImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/imagesearch/Pailitao;->searchImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;Ljava/util/Map;)V

    return-void
.end method

.method public static searchImage(Landroid/content/Context;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/Pailitao;->searchImage(Landroid/content/Context;[BLjava/util/Map;)V

    return-void
.end method

.method public static searchImage(Landroid/content/Context;[BLandroid/graphics/RectF;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B",
            "Landroid/graphics/RectF;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PailitaoHome"

    const-string v1, "searchImage"

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==========searchImage by imageBytes legth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->searchLogD(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/alibaba/imagesearch/ui/PailitaoActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pageConfig"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v0, "extra_rect"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/c;->a([B)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->start()V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x101

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static searchImage(Landroid/content/Context;[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/imagesearch/Pailitao;->searchImage(Landroid/content/Context;[BLandroid/graphics/RectF;Ljava/util/Map;)V

    return-void
.end method

.method public static searchSimilarAuctions(Ljava/lang/String;)Lcom/alibaba/imagesearch/SearchResult;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {v1, v1, p0, v0}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctions(Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctions(Ljava/lang/String;Landroid/graphics/RectF;I)Lcom/alibaba/imagesearch/SearchResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctions([B)Lcom/alibaba/imagesearch/SearchResult;
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    invoke-static {p0, v1, v1, v0}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctions([BI)Lcom/alibaba/imagesearch/SearchResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctions([BLandroid/graphics/RectF;I)Lcom/alibaba/imagesearch/SearchResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/imagesearch/Pailitao;->a([BLandroid/graphics/RectF;Ljava/lang/String;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctionsWithImageKey(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/alibaba/imagesearch/SearchResult;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/alibaba/imagesearch/Pailitao;->searchSimilarAuctionsWithImageKey(Ljava/lang/String;Landroid/graphics/Rect;I)Lcom/alibaba/imagesearch/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public static searchSimilarAuctionsWithImageKey(Ljava/lang/String;Landroid/graphics/Rect;I)Lcom/alibaba/imagesearch/SearchResult;
    .locals 3

    new-instance v0, Lcom/alibaba/imagesearch/SearchResult;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/SearchResult;-><init>()V

    iput-object p0, v0, Lcom/alibaba/imagesearch/SearchResult;->imageKey:Ljava/lang/String;

    iput-object p1, v0, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    const-string v1, "\n====== predictSimilarAuction by tfskey Start ======"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/SearchResult;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p2}, Lcom/alibaba/imagesearch/Pailitao;->a(Lcom/alibaba/imagesearch/SearchResult;I)V

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/SearchResult;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "similar auctions size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/imagesearch/SearchResult;->auctions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    const-string v1, "\n====== predictSimilarAuction End ======"

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->similarLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSettings(Lcom/alibaba/imagesearch/PailitaoSettings;)V
    .locals 0

    invoke-static {p0}, Lcom/alibaba/imagesearch/utils/c;->a(Lcom/alibaba/imagesearch/PailitaoSettings;)V

    return-void
.end method

.method public static showHomePage(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z
    .locals 6

    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    const-string v0, "http://m.taobao.com"

    invoke-direct {v1, v0}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vendorId"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v2, "2.4.6.0"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v2}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->getSettings()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/f;->a(I)Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    new-instance v3, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v3}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMaPage ===> taokeParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  extraParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    const-string v0, "show home page"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static showMaPage(Landroid/app/Activity;Lcom/taobao/ma/common/result/MaResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/taobao/ma/common/result/MaResult;->getType()Lcom/taobao/ma/common/result/MaType;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, -0x1

    const-string v2, "maResult == null || maResult.getType() == null"

    invoke-interface {p2, v1, v2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/taobao/ma/common/result/MaResult;->getType()Lcom/taobao/ma/common/result/MaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/ma/common/result/MaType;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/ma/common/result/MaResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/imagesearch/utils/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/alibaba/imagesearch/Pailitao;->showMaPage(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public static showMaPage(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "MAH5QueryUrl is empty"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PailitaoHome"

    const-string v2, "showMaPage"

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;

    invoke-direct {v1, p1}, Lcom/alibaba/baichuan/android/trade/page/AlibcPage;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vendorId"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v2, "2.4.6.0"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v2}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    sget-object v0, Lcom/alibaba/baichuan/android/trade/model/OpenType;->H5:Lcom/alibaba/baichuan/android/trade/model/OpenType;

    invoke-virtual {v2, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    new-instance v3, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v3}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showMaPage ===> taokeParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  extraParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alibaba/imagesearch/utils/PLog;->MaLogD(Ljava/lang/String;)V

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "plt-check"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/auth/third/core/context/KernelContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->init(Landroid/app/Application;)V

    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->start()V

    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ut/mini/internal/UTTeamWork;->enableUpload(Z)V

    invoke-static {v1}, Lcom/alibaba/imagesearch/Pailitao;->a(Z)V

    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->e()V

    invoke-static {}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->getInstance()Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/baichuan/trade/biz/core/config/AlibcConfigService;->init()V

    return-void
.end method

.method public static stop()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "plt-checked"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/imagesearch/Pailitao;->a(Z)V

    invoke-static {}, Lcom/alibaba/mtl/log/upload/UploadEngine;->getInstance()Lcom/alibaba/mtl/log/upload/UploadEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/upload/UploadEngine;->stop()V

    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ut/mini/internal/UTTeamWork;->enableUpload(Z)V

    invoke-static {}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->destroy()V

    const-string v0, "3.1.1.209"

    sget-object v1, Lcom/alibaba/baichuan/trade/biz/AlibcMiniTradeBiz;->systemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling stop error; not \"3.1.1.209\" alibc_trad_biz"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alibaba/imagesearch/Pailitao;->e()V

    return-void
.end method

.method public static viewAuctionDetailByContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "viewAuctionDetailByContext"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/imagesearch/ui/PailitaoRouterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "itemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static viewAuctionDetails(Landroid/app/Activity;Lcom/alibaba/imagesearch/AuctionItem;)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/alibaba/imagesearch/AuctionItem;->itemId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alibaba/imagesearch/Pailitao;->viewAuctionDetails(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static viewAuctionDetails(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const-string v0, "viewAuctionDetails"

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "itemId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PailitaoHome"

    const-string v2, "viewAuctionDetails"

    invoke-static {v1, v2, v0}, Lcom/alibaba/imagesearch/utils/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alibaba/baichuan/android/trade/page/AlibcDetailPage;

    invoke-direct {v1, p1}, Lcom/alibaba/baichuan/android/trade/page/AlibcDetailPage;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vendorId"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v2, "2.4.6.0"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "brand"

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/imagesearch/PailitaoSettings;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a2141.8068109/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/imagesearch/PailitaoSettings;->getVendorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;

    invoke-direct {v2}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/imagesearch/PailitaoSettings;->openType:I

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/f;->a(I)Lcom/alibaba/baichuan/android/trade/model/OpenType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;->setOpenType(Lcom/alibaba/baichuan/android/trade/model/OpenType;)V

    new-instance v3, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    invoke-direct {v3}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;-><init>()V

    invoke-static {}, Lcom/alibaba/imagesearch/utils/c;->c()Lcom/alibaba/imagesearch/PailitaoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/imagesearch/PailitaoSettings;->getTaokePid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;->setPid(Ljava/lang/String;)Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "taokeParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  extraParams = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/imagesearch/utils/PLog;->d(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/imagesearch/Pailitao$5;

    invoke-direct {v5}, Lcom/alibaba/imagesearch/Pailitao$5;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/baichuan/android/trade/AlibcTrade;->show(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/page/AlibcBasePage;Lcom/alibaba/baichuan/android/trade/model/AlibcShowParams;Lcom/alibaba/baichuan/trade/biz/core/taoke/AlibcTaokeParams;Ljava/util/Map;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;)I

    goto/16 :goto_0
.end method
