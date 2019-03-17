.class public Lcom/miui/gallery/model/UriSource;
.super Lcom/miui/gallery/model/PhotoLoaderSource;
.source "UriSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/miui/gallery/model/PhotoLoaderSource;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataLoader(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 27
    new-instance v0, Lcom/miui/gallery/loader/UriSetLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/loader/UriSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public match(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 16
    if-eqz p2, :cond_2

    const-string v1, "mime_type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "type":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 16
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 22
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
