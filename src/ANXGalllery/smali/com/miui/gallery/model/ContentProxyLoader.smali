.class public Lcom/miui/gallery/model/ContentProxyLoader;
.super Lcom/miui/gallery/loader/BaseLoader;
.source "ContentProxyLoader.java"


# instance fields
.field private mData:Landroid/os/Bundle;

.field private mProxy:Lcom/miui/gallery/loader/BaseLoader;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mUri:Landroid/net/Uri;

    .line 26
    iput-object p3, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mData:Landroid/os/Bundle;

    .line 27
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/gallery/model/BaseDataSet;
    .locals 5

    .prologue
    .line 31
    iget-object v1, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mProxy:Lcom/miui/gallery/loader/BaseLoader;

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/miui/gallery/model/ContentProxyLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/miui/gallery/util/ContentUtils;->getValidFilePathForContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "path":Ljava/lang/String;
    const-string v1, "ContentProxyLoader"

    const-string/jumbo v2, "uri %s, path %s"

    iget-object v3, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    new-instance v1, Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-virtual {p0}, Lcom/miui/gallery/model/ContentProxyLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mData:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/loader/StorageSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mProxy:Lcom/miui/gallery/loader/BaseLoader;

    .line 40
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mProxy:Lcom/miui/gallery/loader/BaseLoader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mProxy:Lcom/miui/gallery/loader/BaseLoader;

    invoke-virtual {v1}, Lcom/miui/gallery/loader/BaseLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/model/BaseDataSet;

    :goto_1
    return-object v1

    .line 37
    .restart local v0    # "path":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/miui/gallery/loader/UriSetLoader;

    invoke-virtual {p0}, Lcom/miui/gallery/model/ContentProxyLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mData:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gallery/loader/UriSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/miui/gallery/model/ContentProxyLoader;->mProxy:Lcom/miui/gallery/loader/BaseLoader;

    goto :goto_0

    .line 40
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/gallery/model/ContentProxyLoader;->loadInBackground()Lcom/miui/gallery/model/BaseDataSet;

    move-result-object v0

    return-object v0
.end method
