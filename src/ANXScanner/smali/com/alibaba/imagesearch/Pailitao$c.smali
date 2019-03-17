.class Lcom/alibaba/imagesearch/Pailitao$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/imagesearch/Pailitao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static a:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/imagesearch/Pailitao$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/imagesearch/Pailitao$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;)V
    .locals 0

    sput-object p1, Lcom/alibaba/imagesearch/Pailitao$c;->a:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-object v0, Lcom/alibaba/imagesearch/Pailitao$c;->a:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/imagesearch/SearchResult;

    invoke-direct {v0}, Lcom/alibaba/imagesearch/SearchResult;-><init>()V

    sget-object v1, Lcom/alibaba/imagesearch/SearchResult;->WEBVIEW_TIMEOUT:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/imagesearch/SearchResult;->retCode:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/imagesearch/SearchResult;->WEBVIEW_TIMEOUT:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/imagesearch/SearchResult;->retMsg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/imagesearch/utils/PLog;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/imagesearch/Pailitao$c;->a:Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/imagesearch/Pailitao$SearchImageCallback;->onSearchError(Lcom/alibaba/imagesearch/SearchResult;)V

    :cond_0
    return-void
.end method
