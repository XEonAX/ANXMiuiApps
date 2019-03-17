.class public final Lcom/miui/gallery/photosapi/PhotosOemApi;
.super Ljava/lang/Object;
.source "PhotosOemApi.java"


# direct methods
.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget v0, Lcom/miui/gallery/photosapi/R$string;->provider_authority:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-static {p0}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "authority":Ljava/lang/String;
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 194
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 144
    invoke-static {p0}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "processing"

    .line 145
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
