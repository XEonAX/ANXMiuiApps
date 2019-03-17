.class public Lcom/miui/gallery/movie/net/TemplateResourceRequest;
.super Lcom/miui/gallery/movie/net/LocalResourceRequest;
.source "TemplateResourceRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/gallery/movie/net/LocalResourceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getParentId()J
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/miui/gallery/util/BuildUtil;->isInternational()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/miui/settings/Settings;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x2606005bc600a0L

    .line 18
    :goto_0
    return-wide v0

    .line 16
    :cond_0
    const-wide v0, 0x25bf20b8bc0060L

    goto :goto_0

    .line 18
    :cond_1
    const-wide v0, 0x240c5cb3ce0040L

    goto :goto_0
.end method

.method protected newLocalResource()Lcom/miui/gallery/movie/entity/MovieResource;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/miui/gallery/movie/entity/TemplateResource;

    invoke-direct {v0}, Lcom/miui/gallery/movie/entity/TemplateResource;-><init>()V

    return-object v0
.end method
