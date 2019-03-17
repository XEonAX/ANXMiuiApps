.class Lcom/miui/gallery/net/download/ConnectionController;
.super Ljava/lang/Object;
.source "ConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/net/download/ConnectionController$Holder;
    }
.end annotation


# direct methods
.method static open(Landroid/net/Uri;I)Lcom/miui/gallery/net/download/ConnectionController$Holder;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Lcom/miui/gallery/net/download/ConnectionController$Holder",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/gallery/net/download/ConnectionController;->open(Ljava/lang/String;I)Lcom/miui/gallery/net/download/ConnectionController$Holder;

    move-result-object v1

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static open(Ljava/lang/String;I)Lcom/miui/gallery/net/download/ConnectionController$Holder;
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/miui/gallery/net/download/ConnectionController$Holder",
            "<",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/miui/gallery/net/download/ConnectionController;->verify(I)I

    move-result v0

    .line 53
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 54
    new-instance v3, Lcom/miui/gallery/net/download/ConnectionController$Holder;

    invoke-direct {v3, v0}, Lcom/miui/gallery/net/download/ConnectionController$Holder;-><init>(I)V

    .line 65
    :goto_0
    return-object v3

    .line 58
    :cond_0
    :try_start_0
    const-string v3, "ConnectionController"

    const-string/jumbo v4, "try open http connection"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "url":Ljava/net/URL;
    new-instance v4, Lcom/miui/gallery/net/download/ConnectionController$Holder;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-direct {v4, v3}, Lcom/miui/gallery/net/download/ConnectionController$Holder;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    goto :goto_0

    .line 61
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 63
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ConnectionController"

    invoke-static {v3, v1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance v3, Lcom/miui/gallery/net/download/ConnectionController$Holder;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/miui/gallery/net/download/ConnectionController$Holder;-><init>(I)V

    goto :goto_0
.end method

.method private static verify(I)I
    .locals 3
    .param p0, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 70
    const-string v1, "ConnectionController"

    const-string v2, "refreshing network state"

    invoke-static {v1, v2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$CTA;->canConnectNetwork()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v0, 0x2

    goto :goto_0

    .line 76
    :cond_1
    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x3

    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
