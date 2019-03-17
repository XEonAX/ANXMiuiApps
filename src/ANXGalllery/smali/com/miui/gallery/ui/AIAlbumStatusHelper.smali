.class public Lcom/miui/gallery/ui/AIAlbumStatusHelper;
.super Ljava/lang/Object;
.source "AIAlbumStatusHelper.java"


# direct methods
.method public static doPostCloudControlJob()V
    .locals 7

    .prologue
    .line 153
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSearchStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->isAIAlbumEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "search-auto-open-search"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    if-ne v0, v1, :cond_0

    .line 155
    invoke-static {}, Lcom/miui/gallery/search/core/source/server/OpenSearchRequest;->request()I

    move-result v6

    .line 156
    .local v6, "result":I
    const-string v0, "from_cloud_control"

    const-string v1, "auto_request_open_search"

    const-string v2, "result"

    .line 157
    invoke-static {v6}, Lcom/miui/gallery/search/SearchConstants;->isErrorStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "failed"

    :goto_0
    const-string v4, "device"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void

    .line 157
    :cond_1
    const-string/jumbo v3, "succeeded"

    goto :goto_0
.end method

.method public static getOpenApiSearchStatus()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-static {v1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchAIAlbumOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v0}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static internalSetFaceAlbumStatus(Z)Z
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceSwitchSet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_1

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->setFaceSwitchStatus(Z)V

    .line 166
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->markDirty(Z)V

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static internalSetLocalSearchStatus(Z)Z
    .locals 2
    .param p0, "status"    # Z

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchSet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v1

    if-eq p0, v1, :cond_1

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setIsUserSearchSwitchOpen(Z)V

    .line 180
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$SettingsSync;->markDirty(Z)V

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAIAlbumEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isFaceAlbumEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudControlSearchAIAlbumOpen()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSearchStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->isAIAlbumEnabled()Z

    move-result v0

    return v0
.end method

.method public static isCloudControlSearchBarOpen()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlStrategyHelper;->getSearchStrategy()Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/cloudcontrol/strategies/SearchStrategy;->isSearchBarEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFaceAlbumEnabled()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->getFaceSwitchEnabled()Z

    move-result v0

    return v0
.end method

.method public static isFaceSwitchSet()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Face;->isFaceSwitchSet()Z

    move-result v0

    return v0
.end method

.method public static isLocalSearchOpen(Z)Z
    .locals 1
    .param p0, "defaultValue"    # Z

    .prologue
    .line 112
    invoke-static {p0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->isUserSearchSwitchOpen(Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalSearchSet()Z
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->isUserSearchSwitchSet()Z

    move-result v0

    return v0
.end method

.method private static notifyAIAlbumStatusChanged(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newStatus"    # Z

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 193
    return-void
.end method

.method private static notifyFaceAlbumStatusChange(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newStatus"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 175
    return-void
.end method

.method private static notifySearchStatusChanged(Z)V
    .locals 0
    .param p0, "newStatus"    # Z

    .prologue
    .line 188
    return-void
.end method

.method public static registerAIAlbumStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.gallery.action.AI_ALBUM_SWITCH_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 68
    return-void
.end method

.method public static requestOpenCloudControlSearch(Ljava/lang/String;)V
    .locals 8
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isLocalSearchOpen(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    const-string v4, "AIAlbumStatusHelper"

    const-string v5, "Local search switch is off, no need to request open cloud search."

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->getUserLastRequestOpenTime()J

    move-result-wide v2

    .line 134
    .local v2, "lastRequestTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, "currentTime":J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 136
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v4

    new-instance v5, Lcom/miui/gallery/ui/AIAlbumStatusHelper$1;

    invoke-direct {v5}, Lcom/miui/gallery/ui/AIAlbumStatusHelper$1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;)Lcom/miui/gallery/threadpool/Future;

    .line 144
    invoke-static {v0, v1}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setUserLastRequestOpenTime(J)V

    .line 148
    :goto_1
    const-string v4, "auto_request_open_search"

    invoke-static {p0, v4}, Lcom/miui/gallery/search/statistics/SearchStatUtils;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    const-string v4, "AIAlbumStatusHelper"

    const-string v5, "Ignore open search request, too frequent."

    invoke-static {v4, v5}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAIAlbumLocalStatus(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "changed":Z
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->internalSetLocalSearchStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifySearchStatusChanged(Z)V

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->internalSetFaceAlbumStatus(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifyFaceAlbumStatusChange(Landroid/content/Context;Z)V

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 57
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifyAIAlbumStatusChanged(Landroid/content/Context;Z)V

    .line 59
    :cond_2
    return-void
.end method

.method public static setFaceAlbumStatus(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 84
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->internalSetFaceAlbumStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifyFaceAlbumStatusChange(Landroid/content/Context;Z)V

    .line 86
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifyAIAlbumStatusChanged(Landroid/content/Context;Z)V

    .line 88
    :cond_0
    return-void
.end method

.method public static setLocalSearchStatus(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Z

    .prologue
    .line 120
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->internalSetLocalSearchStatus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifySearchStatusChanged(Z)V

    .line 122
    invoke-static {p0, p1}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->notifyAIAlbumStatusChanged(Landroid/content/Context;Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public static unregisterAIAlbumStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 71
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method

.method public static useNewAIAlbumSwitch()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/miui/os/Rom;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gallery/ui/AIAlbumStatusHelper;->isCloudControlSearchAIAlbumOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
