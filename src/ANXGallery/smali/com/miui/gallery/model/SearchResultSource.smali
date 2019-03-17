.class public Lcom/miui/gallery/model/SearchResultSource;
.super Lcom/miui/gallery/model/PhotoLoaderSource;
.source "SearchResultSource.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/model/PhotoLoaderSource;-><init>()V

    .line 21
    sget-object v0, Lcom/miui/gallery/model/SearchResultSource;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/model/SearchResultSource;->sUriMatcher:Landroid/content/UriMatcher;

    .line 23
    sget-object v0, Lcom/miui/gallery/model/SearchResultSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "searchResultPhoto"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public createDataLoader(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/loader/SearchResultSetLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/loader/SearchResultSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public match(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.gallery.cloud.provider"

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/model/SearchResultSource;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
