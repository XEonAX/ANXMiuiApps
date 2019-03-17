.class public Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;
.super Ljava/lang/Object;
.source "CloudControlDBHelper.java"


# direct methods
.method private static deleteItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    const/4 v0, 0x0

    .line 55
    const-string v1, "CloudControlDBHelper"

    const-string v2, "deleteItem: %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$CloudControl;->URI:Landroid/net/Uri;

    const-string v2, "featureName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 56
    invoke-static {p0, v1, v2, v3}, Lcom/miui/gallery/util/SafeDBUtil;->safeDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private static insertItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    .line 95
    const-string v1, "CloudControlDBHelper"

    const-string v2, "insertItem: %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "strategy"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "featureName"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$CloudControl;->URI:Landroid/net/Uri;

    invoke-static {p0, v1, v0}, Lcom/miui/gallery/util/SafeDBUtil;->safeInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static queryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "featureName"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$CloudControl;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->PROJECTION:[Ljava/lang/String;

    const-string v3, "featureName = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper$1;

    invoke-direct {v6}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper$1;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/gallery/util/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;

    return-object v0
.end method

.method public static tryInsertToDB(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    const/4 v1, 0x4

    .line 23
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->queryItem(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureDBItem;

    move-result-object v0

    .line 24
    .local v0, "featureDbItem":Lcom/miui/gallery/cloudcontrol/FeatureDBItem;
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->REMOVE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->deleteItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I

    move-result v1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v3}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->DISABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    const-string v2, "CloudControlDBHelper"

    const-string v3, "Status \'disable\' can\'t overwrite \'enable\': %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_2
    sget-object v2, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->setStatus(Ljava/lang/String;)V

    .line 42
    :cond_3
    invoke-virtual {v0, p1}, Lcom/miui/gallery/cloudcontrol/FeatureDBItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    const-string v2, "CloudControlDBHelper"

    const-string v3, "Unchanged item: %s, ignore"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->updateItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I

    move-result v1

    goto :goto_0

    .line 49
    :cond_5
    invoke-static {p0, p1}, Lcom/miui/gallery/cloudcontrol/CloudControlDBHelper;->insertItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I

    move-result v1

    goto :goto_0
.end method

.method private static updateItem(Landroid/content/Context;Lcom/miui/gallery/cloudcontrol/FeatureProfile;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "featureProfile"    # Lcom/miui/gallery/cloudcontrol/FeatureProfile;

    .prologue
    const/4 v1, 0x0

    .line 83
    const-string v2, "CloudControlDBHelper"

    const-string/jumbo v3, "updateItem: %s"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "status"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v2, "strategy"

    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getStrategy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$CloudControl;->URI:Landroid/net/Uri;

    const-string v3, "featureName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/miui/gallery/cloudcontrol/FeatureProfile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 87
    invoke-static {p0, v2, v0, v3, v4}, Lcom/miui/gallery/util/SafeDBUtil;->safeUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x3

    :cond_0
    return v1
.end method
