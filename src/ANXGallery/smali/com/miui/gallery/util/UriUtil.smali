.class public Lcom/miui/gallery/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public static appendDistinct(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "distinct"    # Z

    .prologue
    .line 30
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "distinct"

    const-string v2, "distinct"

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/UriUtil;->appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static appendGroupBy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "groupBy"    # Ljava/lang/String;
    .param p2, "having"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "groupBy"

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/UriUtil;->appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "having"

    invoke-static {v0, v1, p2}, Lcom/miui/gallery/util/UriUtil;->appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static appendLimit(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/UriUtil;->appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static appendLimit(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I
    .param p2, "offset"    # I

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/util/UriUtil;->appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method private static appendParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    :cond_0
    return-object p0
.end method

.method public static getDistinct(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    const-string v0, "1"

    const-string v1, "distinct"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGroupBy(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    const-string v0, "groupBy"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHaving(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    const-string v0, "having"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    if-eqz p0, :cond_0

    const-string v0, "limit"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 63
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_1
    return v1
.end method
