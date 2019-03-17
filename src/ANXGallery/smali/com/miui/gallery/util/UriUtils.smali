.class public Lcom/miui/gallery/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method public static toSafeString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x40

    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 11
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 12
    .local v4, "ssp":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 13
    const-string/jumbo v5, "tel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "sip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "sms"

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "smsto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mailto"

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    if-eqz v4, :cond_3

    .line 20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 22
    .local v1, "c":C
    const/16 v5, 0x2d

    if-eq v1, v5, :cond_1

    if-eq v1, v8, :cond_1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_2

    .line 23
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_2
    const/16 v5, 0x78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 29
    .end local v1    # "c":C
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    :goto_2
    return-object v5

    .line 30
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "ftp"

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 32
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_7

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    :cond_7
    if-eqz v4, :cond_8

    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 32
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_9
    const-string v5, ""

    goto :goto_3

    .line 33
    :cond_a
    const-string v5, ""

    goto :goto_4
.end method
