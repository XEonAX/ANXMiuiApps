.class public Lcom/miui/gallery/card/SyncTagUtil;
.super Ljava/lang/Object;
.source "SyncTagUtil.java"


# direct methods
.method public static ensureAccount(Landroid/accounts/Account;)V
    .locals 6
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v2

    const-class v3, Lcom/miui/gallery/card/SyncTag;

    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getAcountSelection(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/gallery/dao/GalleryEntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "syncTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/SyncTag;>;"
    invoke-static {v1}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    new-instance v0, Lcom/miui/gallery/card/SyncTag;

    invoke-direct {v0, p0}, Lcom/miui/gallery/card/SyncTag;-><init>(Landroid/accounts/Account;)V

    .line 81
    .local v0, "syncTag":Lcom/miui/gallery/card/SyncTag;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/gallery/dao/GalleryEntityManager;->insert(Lcom/miui/gallery/dao/base/Entity;)Z

    .line 84
    .end local v0    # "syncTag":Lcom/miui/gallery/card/SyncTag;
    .end local v1    # "syncTags":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/SyncTag;>;"
    :cond_0
    return-void
.end method

.method private static getAcountSelection(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountName = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardSyncInfo(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getSyncTagByAccount(Landroid/accounts/Account;)Lcom/miui/gallery/card/SyncTag;

    move-result-object v0

    .line 61
    .local v0, "syncTag":Lcom/miui/gallery/card/SyncTag;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/miui/gallery/card/SyncTag;->getCardSyncInfo()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getCardSyncTag(Landroid/accounts/Account;)J
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getSyncTagByAccount(Landroid/accounts/Account;)Lcom/miui/gallery/card/SyncTag;

    move-result-object v0

    .line 43
    .local v0, "syncTag":Lcom/miui/gallery/card/SyncTag;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/miui/gallery/card/SyncTag;->getCardSyncTag()J

    move-result-wide v2

    .line 46
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static getSyncTagByAccount(Landroid/accounts/Account;)Lcom/miui/gallery/card/SyncTag;
    .locals 11
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s,%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v0

    .line 32
    .local v0, "em":Lcom/miui/gallery/dao/base/EntityManager;
    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getAcountSelection(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "selection":Ljava/lang/String;
    const-class v1, Lcom/miui/gallery/card/SyncTag;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/dao/base/EntityManager;->query(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 34
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/SyncTag;>;"
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/card/SyncTag;

    .line 38
    .end local v0    # "em":Lcom/miui/gallery/dao/base/EntityManager;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/card/SyncTag;>;"
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method public static setCardSyncInfo(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "syncInfo"    # Ljava/lang/String;

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cardSyncInfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/card/SyncTag;

    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getAcountSelection(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setCardSyncTag(Landroid/accounts/Account;J)V
    .locals 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "cardSyncTag"    # J

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cardSyncTag"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    invoke-static {}, Lcom/miui/gallery/dao/GalleryEntityManager;->getInstance()Lcom/miui/gallery/dao/GalleryEntityManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/card/SyncTag;

    invoke-static {p0}, Lcom/miui/gallery/card/SyncTagUtil;->getAcountSelection(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/miui/gallery/dao/GalleryEntityManager;->update(Ljava/lang/Class;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0
.end method
