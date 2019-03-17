.class final Lcom/miui/gallery/provider/ProcessingMedia$Factory;
.super Ljava/lang/Object;
.source "ProcessingMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/ProcessingMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/miui/gallery/provider/ProcessingMedia$Factory;->context:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private getMediaStoreUri(JI)Landroid/net/Uri;
    .locals 3
    .param p1, "mediaStoreId"    # J
    .param p3, "mediaType"    # I

    .prologue
    .line 83
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 84
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 92
    .local v0, "mediaStoreUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 88
    .end local v0    # "mediaStoreUri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 89
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "mediaStoreUri":Landroid/net/Uri;
    goto :goto_0
.end method

.method private getProcessingUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "mediaStoreId"    # J

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/gallery/provider/ProcessingMedia$Factory;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/photosapi/PhotosOemApi;->getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method build(JLjava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;)Lcom/miui/gallery/provider/ProcessingMedia;
    .locals 9
    .param p1, "mediaStoreId"    # J
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mediaType"    # I
    .param p5, "processingMetadata"    # Lcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;

    .prologue
    const/4 v5, 0x0

    .line 76
    if-nez p4, :cond_0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/ProcessingMedia$Factory;->getProcessingUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 78
    .local v1, "mediaStoreUri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Lcom/miui/gallery/provider/ProcessingMedia;

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/miui/gallery/provider/ProcessingMedia;-><init>(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;ILcom/miui/gallery/provider/ProcessingMedia$ProcessingMetadata;Lcom/miui/gallery/provider/ProcessingMedia$1;)V

    return-object v0

    .line 77
    .end local v1    # "mediaStoreUri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/gallery/provider/ProcessingMedia$Factory;->getMediaStoreUri(JI)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
