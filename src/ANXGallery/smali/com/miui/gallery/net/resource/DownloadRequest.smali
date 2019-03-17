.class public Lcom/miui/gallery/net/resource/DownloadRequest;
.super Lcom/miui/gallery/net/BaseGalleryRequest;
.source "DownloadRequest.java"


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 11
    const-string v0, "https://i.mi.com/gallery/public/resource/download"

    invoke-direct {p0, v2, v0}, Lcom/miui/gallery/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    .line 12
    const-string v0, "id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/net/resource/DownloadRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/net/base/BaseRequest;

    .line 13
    invoke-virtual {p0, v2}, Lcom/miui/gallery/net/resource/DownloadRequest;->setUseCache(Z)Lcom/miui/gallery/net/base/BaseRequest;

    .line 14
    return-void
.end method


# virtual methods
.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/miui/gallery/net/resource/DownloadInfo;

    invoke-direct {v0}, Lcom/miui/gallery/net/resource/DownloadInfo;-><init>()V

    .line 19
    .local v0, "info":Lcom/miui/gallery/net/resource/DownloadInfo;
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/net/resource/DownloadInfo;->url:Ljava/lang/String;

    .line 20
    const-string/jumbo v1, "sha1Base16"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/net/resource/DownloadInfo;->sha1:Ljava/lang/String;

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/miui/gallery/net/resource/DownloadRequest;->deliverResponse([Ljava/lang/Object;)V

    .line 22
    return-void
.end method
