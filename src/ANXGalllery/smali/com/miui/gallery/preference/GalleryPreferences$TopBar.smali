.class public Lcom/miui/gallery/preference/GalleryPreferences$TopBar;
.super Ljava/lang/Object;
.source "GalleryPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/GalleryPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopBar"
.end annotation


# direct methods
.method private static getSyncStatusTipKey(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "top_bar_cannot_sync_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gallery/cloud/syncstate/SyncStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Z
    .locals 2
    .param p0, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;

    .prologue
    .line 1097
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->getSyncStatusTipKey(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static remove()V
    .locals 5

    .prologue
    .line 1107
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/miui/gallery/preference/PreferenceHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1109
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1110
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "top_bar_cannot_sync_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1111
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1114
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1115
    return-void
.end method

.method public static setHasShowedSyncStatusTip(Lcom/miui/gallery/cloud/syncstate/SyncStatus;Z)V
    .locals 1
    .param p0, "status"    # Lcom/miui/gallery/cloud/syncstate/SyncStatus;
    .param p1, "hasShowed"    # Z

    .prologue
    .line 1102
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$TopBar;->getSyncStatusTipKey(Lcom/miui/gallery/cloud/syncstate/SyncStatus;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 1104
    return-void
.end method
