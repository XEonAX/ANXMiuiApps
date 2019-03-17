.class public Lcom/miui/gallery/loader/UriSetLoader;
.super Lcom/miui/gallery/loader/BaseLoader;
.source "UriSetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;
    }
.end annotation


# instance fields
.field private mMimeType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    .line 29
    const-string v0, "mime_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/loader/UriSetLoader;->mMimeType:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/gallery/model/BaseDataSet;
    .locals 8

    .prologue
    .line 34
    new-instance v1, Lcom/miui/gallery/model/UriItem;

    iget-object v4, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-direct {v1, v4}, Lcom/miui/gallery/model/UriItem;-><init>(Landroid/net/Uri;)V

    .line 35
    .local v1, "item":Lcom/miui/gallery/model/UriItem;
    iget-object v2, p0, Lcom/miui/gallery/loader/UriSetLoader;->mMimeType:Ljava/lang/String;

    .line 36
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "file"

    iget-object v5, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    if-eqz v2, :cond_0

    const-string v4, "image/*"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 41
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "mimeTypeFromExtension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v3

    .line 46
    .end local v0    # "extension":Ljava/lang/String;
    .end local v3    # "mimeTypeFromExtension":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/UriItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/miui/gallery/model/BaseDataItem;->setCreateTime(J)Lcom/miui/gallery/model/BaseDataItem;

    .line 54
    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/gallery/model/UriItem;->setMimeType(Ljava/lang/String;)Lcom/miui/gallery/model/BaseDataItem;

    .line 55
    new-instance v4, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;

    invoke-direct {v4, v1}, Lcom/miui/gallery/loader/UriSetLoader$UriDataSet;-><init>(Lcom/miui/gallery/model/UriItem;)V

    return-object v4

    .line 48
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, "image/*"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    :cond_3
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 52
    :cond_4
    iget-object v4, p0, Lcom/miui/gallery/loader/UriSetLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/gallery/model/UriItem;->setKey(J)Lcom/miui/gallery/model/BaseDataItem;

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/miui/gallery/loader/UriSetLoader;->loadInBackground()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    return-object v0
.end method
