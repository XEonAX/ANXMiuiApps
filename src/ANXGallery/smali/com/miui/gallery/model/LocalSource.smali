.class public Lcom/miui/gallery/model/LocalSource;
.super Lcom/miui/gallery/model/PhotoLoaderSource;
.source "LocalSource.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/model/PhotoLoaderSource;-><init>()V

    .line 24
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    .line 26
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "album_media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string/jumbo v2, "share_album_media/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "cloud_and_share"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.open"

    const-string v2, "raw/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "recent_discovered_media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public createDataLoader(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 54
    sget-object v2, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 56
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 64
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    .line 58
    :pswitch_0
    new-instance v1, Lcom/miui/gallery/loader/CloudSetLoader;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/gallery/loader/CloudSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 59
    .local v1, "loader":Lcom/miui/gallery/loader/BaseLoader;
    goto :goto_0

    .line 61
    .end local v1    # "loader":Lcom/miui/gallery/loader/BaseLoader;
    :pswitch_1
    new-instance v1, Lcom/miui/gallery/loader/StorageSetLoader;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Lcom/miui/gallery/loader/StorageSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 62
    .restart local v1    # "loader":Lcom/miui/gallery/loader/BaseLoader;
    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 44
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.miui.gallery.cloud.provider"

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui.gallery.open"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/gallery/model/LocalSource;->sUriMatcher:Landroid/content/UriMatcher;

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
