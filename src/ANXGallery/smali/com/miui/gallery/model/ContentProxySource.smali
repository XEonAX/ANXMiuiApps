.class public Lcom/miui/gallery/model/ContentProxySource;
.super Lcom/miui/gallery/model/PhotoLoaderSource;
.source "ContentProxySource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
    .line 18
    new-instance v0, Lcom/miui/gallery/model/ContentProxyLoader;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/gallery/model/ContentProxyLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public match(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 13
    if-eqz p1, :cond_0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
