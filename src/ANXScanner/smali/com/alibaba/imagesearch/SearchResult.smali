.class public Lcom/alibaba/imagesearch/SearchResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static RETCODE_BAICHUAN_INITFAILED:Ljava/lang/String;

.field public static RETCODE_FLOW_LIMITIED:Ljava/lang/String;

.field public static RETCODE_IMGKEY_EMPTY:Ljava/lang/String;

.field public static RETCODE_NET_TRAFFIC:Ljava/lang/String;

.field public static RETCODE_PARAM_ILLEGAL:Ljava/lang/String;

.field public static RETCODE_REQUEST_FAILED:Ljava/lang/String;

.field public static RETCODE_REQUEST_SUCCESS:Ljava/lang/String;

.field public static RETCODE_SEARCH_ERROR:Ljava/lang/String;

.field public static RETCODE_SEARCH_FINISH:Ljava/lang/String;

.field public static RETCODE_SEARCH_NO_RESULT:Ljava/lang/String;

.field public static RETCODE_SEARCH_SERVER_ERROR:Ljava/lang/String;

.field public static RETCODE_TFSKEY_EMPTY:Ljava/lang/String;

.field public static WEBVIEW_TIMEOUT:Ljava/lang/String;


# instance fields
.field public auctions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/imagesearch/Auction;",
            ">;"
        }
    .end annotation
.end field

.field public category:Ljava/lang/String;

.field public httpResponseCode:I

.field public imageKey:Ljava/lang/String;

.field public imageSpec:Landroid/graphics/Rect;

.field public imageUrl:Ljava/lang/String;

.field public region:Landroid/graphics/Rect;

.field public retCode:Ljava/lang/String;

.field public retMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "baichuan_init_failed"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_BAICHUAN_INITFAILED:Ljava/lang/String;

    const-string v0, "net_traffic"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_NET_TRAFFIC:Ljava/lang/String;

    const-string v0, "imagekey_empty"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_IMGKEY_EMPTY:Ljava/lang/String;

    const-string v0, "imagekey_invalid"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_TFSKEY_EMPTY:Ljava/lang/String;

    const-string v0, "flow_limited"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_FLOW_LIMITIED:Ljava/lang/String;

    const-string v0, "request_failed"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_REQUEST_FAILED:Ljava/lang/String;

    const-string v0, "request_success"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_REQUEST_SUCCESS:Ljava/lang/String;

    const-string v0, "param_illegal"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_PARAM_ILLEGAL:Ljava/lang/String;

    const-string v0, "search_finish"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_FINISH:Ljava/lang/String;

    const-string v0, "search_no_result"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_NO_RESULT:Ljava/lang/String;

    const-string v0, "search_server_error"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_SERVER_ERROR:Ljava/lang/String;

    const-string v0, "webview_timeout"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->WEBVIEW_TIMEOUT:Ljava/lang/String;

    const-string v0, "search_error"

    sput-object v0, Lcom/alibaba/imagesearch/SearchResult;->RETCODE_SEARCH_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    return-void
.end method

.method public static isLimited(Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "420"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "499"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "599"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchResult{retCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/imagesearch/SearchResult;->httpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->region:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->imageSpec:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->imageKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/imagesearch/SearchResult;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
